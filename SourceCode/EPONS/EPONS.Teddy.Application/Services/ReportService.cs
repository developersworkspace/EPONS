using EPONS.Teddy.Application.Engines;
using EPONS.Teddy.Application.Extensions;
using EPONS.Teddy.Application.Models;
using EPONS.Teddy.Application.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;

namespace EPONS.Teddy.Application.Services
{
    public class ReportService
    {
        private HelperService _helperService = new HelperService();
        private PNGChartingEngine _chartingEngine = new PNGChartingEngine();
        private PDFTemplatingEngine _pdfTemplatingEngine = new PDFTemplatingEngine();
        private PatientRepository _patientRepository;
        private VisitRepository _visitRepository;
        //private CaseRepository _caseRepository;
        private FacilityRepository _facilityRepository;
        private ListRepository _listRepository;
        private DoctorsRepository _doctorsRepository;
        private EpisodesofCareRepository _EpisodesofCareRepository;
        private DiagnosesRepository _DiagnosesRepository;

        public ReportService(IDbConnection connection)
        {
            _patientRepository = new PatientRepository(connection);
            _visitRepository = new VisitRepository(connection);
            //_caseRepository = new CaseRepository(connection);
            _facilityRepository = new FacilityRepository(connection);
            _listRepository = new ListRepository(connection);
            _doctorsRepository = new DoctorsRepository(connection);
            _EpisodesofCareRepository = new EpisodesofCareRepository(connection);
            _DiagnosesRepository = new DiagnosesRepository(connection);
        }

        public ProgressReport ProgressReport(Guid patientId, Guid facilityId, DateTime startDate, DateTime endDate, bool includeRadarChart, bool includeLineChart, out string patientName)
        {

            Entities.Patient patient = _patientRepository.FindById(patientId);
            patientName = string.Format("{0} {1}", patient.Firstname, patient.Lastname);
            IList<Entities.Visit> visits = _visitRepository.FindVisits(patientId, startDate, endDate);
            IList<EntityViews.ReferringDoctors> ReferringDoctors = _doctorsRepository.ReferringDoctors(patientId, startDate, endDate);
            IList<EntityViews.AttendingDoctors> AttendingDoctors = _doctorsRepository.AttendingDoctors(patientId, startDate, endDate);
            IList<EntityViews.EpisodesofCare> EpisodesofCare = _EpisodesofCareRepository.EpisodesofCare(patientId, startDate, endDate);
            IList<EntityViews.Diagnoses> Diagnoses = _DiagnosesRepository.Diagnoses(patientId);
            //IList<EntityViews.Case> cases = _caseRepository.FindCases(patientId, startDate, endDate);
            IList<EntityViews.MeasurementTool> measurementTools = _patientRepository.FindMeasurementTools(patientId, startDate, endDate);
            IList<EntityViews.CompletedMeasurementTool> completedMeasurementTools = _patientRepository.FindCompletedMeasurementTools(patientId, startDate, endDate);

            byte[] patientAvatar = _patientRepository.FindAvatar(patientId);

            patient.Avatar = patientAvatar == null ? null : patientAvatar;
            byte[] facilityAvatar = _facilityRepository.FindAvatar(facilityId);


            ProgressReport progressReport = new ProgressReport()
            {
                Patient = patient,
                Visits = visits.Select((x) =>
                {
                    x.ProgressNotes = x.ProgressNotes.RemoveFontTags();
                    return x;
                }).ToList(),
                ReferringDoctors = ReferringDoctors,
                AttendingDoctors = AttendingDoctors,
                EpisodesofCare = EpisodesofCare,
                Diagnoses = Diagnoses,
                MeasurementTools = measurementTools,
                StartDate = startDate,
                EndDate = endDate,
                TeamMembers = _patientRepository.FindTeamMembers(patientId, startDate, endDate),
                DateFormat = "yyyy-MM-dd",
                DateTimeFormat = "yyyy-MM-dd HH:mm",
                FacilityImage = facilityAvatar,
                MeasurementToolChartsRadar = new Dictionary<EntityViews.CompletedMeasurementTool, byte[]>(),
                MeasurementToolChartsLine = new Dictionary<EntityViews.CompletedMeasurementTool, byte[]>(),
                VitalSignsChart = _helperService.GetVitalSignsChart(visits).DataSets.Count((x) => x.Data.Count((y) => y > 0) > 0) > 0? _chartingEngine.LineChart(1200, 1200, _helperService.GetVitalSignsChart(visits)).ToBytes() : null
            };

            foreach (var groupedCompletedMeasurementTools in completedMeasurementTools.GroupBy(x => x.Id))
            {
                var cps = groupedCompletedMeasurementTools.OrderBy(x => x.StartDate).ToList();

                var data = new List<EntityViews.CompletedMeasurementTool>();
                if (groupedCompletedMeasurementTools.Count() == 0)
                    break;
                else if (groupedCompletedMeasurementTools.Count() == 1)
                    data.Add(groupedCompletedMeasurementTools.ToList()[0]);
                else if (groupedCompletedMeasurementTools.Count() == 2)
                {
                    data.Add(groupedCompletedMeasurementTools.ToList()[0]);
                    data.Add(groupedCompletedMeasurementTools.ToList()[1]);
                }
                else if (groupedCompletedMeasurementTools.Count() == 3)
                {
                    data.Add(groupedCompletedMeasurementTools.ToList()[0]);
                    data.Add(groupedCompletedMeasurementTools.ToList()[1]);
                    data.Add(groupedCompletedMeasurementTools.ToList()[2]);
                }
                else
                {
                    data.Add(groupedCompletedMeasurementTools.ToList()[0]);
                    data.Add(groupedCompletedMeasurementTools.ToList()[groupedCompletedMeasurementTools.Count() / 2]);
                    data.Add(groupedCompletedMeasurementTools.ToList()[groupedCompletedMeasurementTools.Count() - 1]);
                }


                if (includeRadarChart)
                {
                    if (data.SelectMany(x => x.ScoreItems).Count(x => x.Value > 0) > 0)
                    {
                        Bitmap bmp = _chartingEngine.RadarChart(1200, 1200, _helperService.ToRadarChart(data), -1);
                        
                        progressReport.MeasurementToolChartsRadar.Add(groupedCompletedMeasurementTools.First(), bmp.ToBytes());
                        bmp.Dispose();
                    }
                }


                if (includeLineChart)
                {
                    if (data.SelectMany(x => x.ScoreItems).Count(x => x.Value > 0) > 0)
                    {
                        Bitmap bmp = _chartingEngine.LineChart(1200, 1200, _helperService.ToLineChart(cps), -1);

                        progressReport.MeasurementToolChartsLine.Add(groupedCompletedMeasurementTools.First(), bmp.ToBytes());
                        bmp.Dispose();
                    }
                }
            }

            return progressReport;

        }

        public Stream FacilityPerformanceReportStream(Guid measurementToolId, DateTime startDate, DateTime endDate, Guid facilityId, List<Guid> medicalSchemeIds, out string facilityName)
        {
            var dataTable = FacilityPerformanceReportDataTable(measurementToolId, startDate, endDate, facilityId, medicalSchemeIds, out facilityName);

            var html = DataTableToHtml(dataTable);

            string path = _pdfTemplatingEngine.GenerateFromHtml(html);

            FileStream fileStream = new FileStream(path, FileMode.Open);

            return fileStream;
        }

        public DataTable FacilityPerformanceReportDataTable(Guid measurementToolId, DateTime startDate, DateTime endDate, Guid facilityId, List<Guid> medicalSchemeIds, out string facilityName)
        {
            Entities.Facility facility = _facilityRepository.FindById(facilityId);
            facilityName = facility.Name;

            string measurementToolName = _listRepository.GetMeasurementTools().Single(x => x.Id == measurementToolId).Name;

            var data = FacilityPerformanceReportData(measurementToolId, startDate, endDate, facilityId, medicalSchemeIds);

            DataTable dataTable = new DataTable();

            for (int i = 0; i < 12; i++)
            {
                dataTable.Columns.Add("");
            }

            dataTable.Rows.Add("Facility Performance Report");
            dataTable.Rows.Add(facilityName);
            dataTable.Rows.Add(string.Format("{0} - {1}", startDate.ToString("dd MMMM yyyy"), endDate.ToString("dd MMMM yyyy")));
            dataTable.Rows.Add(string.Format("Number of patients: {0}", data.Count == 0 ? "0" : data.First().Value["TotalPatients"]));
            dataTable.Rows.Add(string.Format("Number of Completed Episodes of Care: {0}", data.Count == 0 ? "0" : data.First().Value["TotalEpisodesOfCare"]));
            dataTable.Rows.Add(measurementToolName);

            dataTable.Rows.Add("&nbsp;");
            dataTable.Rows.Add("&nbsp;");
            dataTable.Rows.Add("All columns display the average values, except \"Episodes of Care\" and \" % \"");
            dataTable.Rows.Add("Gain = Discharge score minus Admission score");
            dataTable.Rows.Add("LOS(days) = Length of Stay");
            dataTable.Rows.Add("Efficience = Gain divided by LOS");
            dataTable.Rows.Add("Onset Days = Number of days between Onset of episode and Admission to hospital");

            dataTable.Rows.Add("&nbsp;");
            dataTable.Rows.Add("Impairment Group", "Number of Completed Episodes of Care", "% of Total", "Age", "Admission Score", "Discharge Score", "Gain", "LOS(days)", "Efficiency", "Onset Days");
            dataTable.Rows.Add("&nbsp;");


            for (int i = 0; i < data.Keys.Count; i++)
            {

                Guid impairmentGroupId = data.Keys.ElementAt(i);
                dataTable.Rows.Add(data[impairmentGroupId]["ImpairmentGroup"], data[impairmentGroupId]["NumberOfCompletedEpisodesOfCare"], Math.Round(Convert.ToDouble(data[impairmentGroupId]["Percentage"]), 2), Math.Round(Convert.ToDouble(data[impairmentGroupId]["Age"]), 2), data[impairmentGroupId]["AverageAdmitScore"], data[impairmentGroupId]["AverageDischargeScore"], data[impairmentGroupId]["Delta"], data[impairmentGroupId]["AverageLOS"], Math.Round(Convert.ToDouble(data[impairmentGroupId]["Effiency"]), 2), Math.Round(Convert.ToDouble(data[impairmentGroupId]["OnsetDays"]), 2));

            }

            return dataTable;
        }
        public Dictionary<Guid, Dictionary<string, string>> FacilityPerformanceReportData(Guid measurementToolId, DateTime startDate, DateTime endDate, Guid facilityId, List<Guid> medicalSchemeIds)
        {

            List<dynamic> tempResult = new List<dynamic>();

            var patients = _patientRepository.List(facilityId);
            
            int numberOfPatients = 0;
            int numberOfCompletedEpisodesOfCare = 0;

            foreach (var patient in patients)
            {

                //if (medicalSchemeIds != null && patient.MedicalScheme != null && !medicalSchemeIds.Contains(patient.MedicalScheme.Id))
                //    continue;
                
                var completedMeasurementTools = _patientRepository.FindCompletedMeasurementTools(patient.Id, startDate, endDate);


                if (completedMeasurementTools.Count(x => x.Id == measurementToolId) > 0)
                {
                    var firstCompletedMeasurementTool = completedMeasurementTools.Where(x => x.Id == measurementToolId).OrderBy(x => x.EndDate).First();
                    var lastCompletedMeasurementTool = completedMeasurementTools.Where(x => x.Id == measurementToolId).OrderByDescending(x => x.EndDate).First();

                    var completedEpisodesOfCare = _patientRepository.FindCompletedEpisodesOfCare(patient.Id, facilityId)
                        .Where(x => x.AllocationTimestamp < endDate && startDate < x.DeallocationTimestamp);

                    if (completedEpisodesOfCare.Count() > 0)
                        numberOfPatients++;

                    foreach (var completedEpisodeOfCare in completedEpisodesOfCare)
                    {
                        numberOfCompletedEpisodesOfCare++;

                        tempResult.Add(new
                        {
                            PatientId = patient.Id,
                            FirstDate = firstCompletedMeasurementTool.EndDate,
                            LastDate = lastCompletedMeasurementTool.EndDate,
                            LastScore = lastCompletedMeasurementTool.ScoreItems.Sum(x => x.Value),
                            FirstScore = firstCompletedMeasurementTool.ScoreItems.Sum(x => x.Value),
                            AdmissionDate = completedEpisodeOfCare.AllocationTimestamp,
                            DischargeDate = completedEpisodeOfCare.DeallocationTimestamp,
                            LOS = (int)completedEpisodeOfCare.DeallocationTimestamp.Value.Subtract(completedEpisodeOfCare.AllocationTimestamp).TotalDays,
                            Age = (int)Math.Floor(DateTime.Now.Subtract(patient.DateOfBirth).TotalDays / 365),
                            OnsetDays = completedEpisodeOfCare.ReasonForAdmissionTimestamp.HasValue ? completedEpisodeOfCare.AllocationTimestamp.Subtract(completedEpisodeOfCare.ReasonForAdmissionTimestamp.Value).TotalDays : 0,
                            ImpairmentGroupId = completedEpisodeOfCare.ImpairmentGroupId.HasValue? completedEpisodeOfCare.ImpairmentGroupId : Guid.Empty,
                            ImpairmentGroup = completedEpisodeOfCare.ImpairmentGroupId.HasValue ? completedEpisodeOfCare.ImpairmentGroup : "No Impairment Group"

                        });


                    }
                }
            }

            return tempResult.GroupBy(x => x.ImpairmentGroupId).Where(x => x.Key != null).ToDictionary(x => (Guid)x.Key, x => new Dictionary<string, string>
            {
                { "AverageAdmitScore", Convert.ToString(x.Select(y => (int)y.FirstScore).Sum() / x.Count())},
                { "AverageDischargeScore", Convert.ToString(x.Select(y => (int)y.LastScore).Sum() / x.Count())},
                { "Delta", Convert.ToString((x.Select(y => (int)y.LastScore).Sum() / x.Count()) - (x.Select(y => (int)y.FirstScore).Sum() / x.Count()))},
                { "AverageLOS", Convert.ToString((int)((double)x.Select(y => (int)y.LOS).Sum() / (double)x.Count()))},
                { "Effiency", Convert.ToString((double)((x.Select(y => (int)y.LastScore).Sum() / x.Count()) - (double)(x.Select(y => (int)y.FirstScore).Sum() / x.Count())) / (x.Select(y => (int)y.LOS).Sum() / x.Count()))},
                { "NumberOfCompletedEpisodesOfCare", Convert.ToString(x.Count())},
                { "Percentage", Convert.ToString((double)x.Count() / (double)numberOfCompletedEpisodesOfCare * 100)},
                { "ImpairmentGroup", Convert.ToString(x.FirstOrDefault().ImpairmentGroup)},
                { "TotalPatients", Convert.ToString(numberOfPatients)},
                { "TotalEpisodesOfCare", Convert.ToString(numberOfCompletedEpisodesOfCare)},
                { "Age", Convert.ToString((double)x.Sum(y => y.Age) / (double)x.Count())},
                { "OnsetDays", Convert.ToString((double)x.Sum(y => (double)y.OnsetDays) / (double)x.Count())}
            });

        }


        private string DataTableToHtml(DataTable dt)
        {
            string html = "<table style='width: 100%'>";

            //add rows
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                html += "<tr>";
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    string textAlign = j == 0 ? "left" : "center";
                    textAlign = i <= 13 ? "left" : textAlign;
                    string colSpan = "1";
                    colSpan = i < 13 ? "4" : colSpan;

                    html += "<td colspan='" + colSpan + "' style='white-space: nowrap; padding-bottom: 8px; font-size:10pt; text-align: " + textAlign + "'>" + dt.Rows[i][j].ToString() + "</td>";

                }
                html += "</tr>";
            }
            html += "</table>";
            return html;
        }
    }
}
