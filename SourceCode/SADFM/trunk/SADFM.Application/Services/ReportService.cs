using SADFM.Application.Repositories;
using SADFM.Data;
using SADFM.Infrastructure.Repositories;
using SADFM.Infrastructure.Services;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SADFM.Infrastructure.Models;

namespace SADFM.Application.Services
{
    public class ReportService : IReportService
    {

        private IReportRepository reportRepository { get; set; }
        private IFacilityRepository facilityRepository { get; set; }


        public ReportService()
        {
           this.reportRepository = new ReportRepository();
           this.facilityRepository = new FacilityRepository();
        }


        public List<SADFM.Infrastructure.Models.PatientSummary> GetPatientSummaryReport(Guid ScaleId, DateTime startDate, DateTime endDate, Guid? ProviderId = null)
        {
            return this.reportRepository.GetPatientSummaryReport(ScaleId, startDate, endDate, ProviderId);
        }

        public DataTable FacilityPerformanceReport(Guid ScaleId, DateTime StartDate, DateTime EndDate, Guid[] MedicalSchemeIds, Guid ProviderId)
        {

            string scaleName = DataAccess.ListItem.GetById(ScaleId).Name;

            string providerName = DataAccess.Provider.GetById(ProviderId).Name;

            var result = this.reportRepository.GetPatientSummaryReportCollapsed(ScaleId, StartDate, EndDate, ProviderId, MedicalSchemeIds == null ? null : MedicalSchemeIds.ToList());


            DataTable dataTable = new DataTable();

            for (int i = 0; i < 20; i++)
            {
                dataTable.Columns.Add("");
            }

            dataTable.Rows.Add("Facility Performance Report");
            dataTable.Rows.Add(providerName);
            dataTable.Rows.Add(string.Format("{0} - {1}", StartDate.ToString("dd MMMM yyyy"), EndDate.ToString("dd MMMM yyyy")));
            dataTable.Rows.Add(string.Format("Number of patients: {0}", result.Count > 0 ? result.FirstOrDefault().Value.TotalPatients : 0));
            dataTable.Rows.Add(scaleName);
            dataTable.Rows.Add("");
            dataTable.Rows.Add("Impairment Group", "Number of pts", "% of Total", "Age", "Onset days", "Admission Score", "Discharge Score", "Gain", "LOS(days)", "Efficiency");
            dataTable.Rows.Add("");

            for (int i = 0; i < result.Keys.Count; i++)
            {

                Guid id = result.Keys.ElementAt(i);
                dataTable.Rows.Add(result[id].ImpairmentGroup, result[id].NumberOfPatients, Math.Round(result[id].PercentageOfPatients, 1), Math.Round(result[id].Age, 1), Math.Round(result[id].OnsetDays, 1), result[id].AverageAdmitScore, result[id].AverageDischargeScore, result[id].Delta, Math.Round(result[id].AverageLOS, 1), Math.Round(result[id].Effiency, 1));

            }


            return dataTable;

        }

        public DataTable FacilityVolumeReport(Guid facilityId, DateTime startDate, DateTime endDate)
        {
            var result = this.reportRepository.GetFacilityVolumeReport(facilityId, startDate, endDate);

            Data.Models.Provider facility = this.facilityRepository.GetDetails(facilityId);

            DataTable dataTable = new DataTable();

            for (int i = 0; i < 20; i++)
            {
                dataTable.Columns.Add("");
            }

            dataTable.Rows.Add("Facility Volume Report");

            dataTable.Rows.Add("");

            dataTable.Rows.Add(facility.Name);

            dataTable.Rows.Add("");

            dataTable.Rows.Add(string.Format("{0} - {1}", startDate.ToString("dd MMMM yyyy"), endDate.ToString("dd MMMM yyyy")));

            dataTable.Rows.Add(string.Format("Number of patients: {0}", result.Count > 0 ? result.Sum(x => x.Patients) : 0));

            dataTable.Rows.Add("");

            dataTable.Rows.Add("Impairment Group", "Admission", "Percentage", "Average LOS", "Average Onset Days", "Average Age On Admission");

            foreach (var entry in result)
            {

                dataTable.Rows.Add(entry.ImpairmentGroup, entry.Admission, entry.Percentage.ToString("0.00"), entry.AverageLOS, entry.AverageOnsetDays, entry.AverageAgeOnAdmission);
            }

            return dataTable;
        }

        public FacilityDashboardReport FacilityDashboardReport(Guid facilityId, DateTime startDate, DateTime endDate)
        {

            var facility = this.facilityRepository.GetDetails(facilityId);

            var result = this.reportRepository.GetFacilityDashboardReport(facilityId, startDate, endDate);

            return new Infrastructure.Models.FacilityDashboardReport()
            {
                FacilityName = facility.Name,
                ActivePatients = result.Select(x => x.PatientId).Distinct().Count(),
                Admitted = result.Where(x => x.AdmissionDate >= startDate && x.AdmissionDate <= endDate).Select(x => x.PatientId).Distinct().Count(),
                Discharged = result.Where(x => x.DischargeDate.HasValue).Select(x => x.PatientId).Distinct().Count(),
                Age11To20 = result.Where(x => x.Age >= 11 && x.Age <= 20).Select(x => x.PatientId).Distinct().Count(),
                Age1To10 = result.Where(x => x.Age >= 1 && x.Age <= 10).Select(x => x.PatientId).Distinct().Count(),
                Age21To30 = result.Where(x => x.Age >= 21 && x.Age <= 30).Select(x => x.PatientId).Distinct().Count(),
                Age31To40 = result.Where(x => x.Age >= 31 && x.Age <= 40).Select(x => x.PatientId).Distinct().Count(),
                Age41To50 = result.Where(x => x.Age >= 41 && x.Age <= 50).Select(x => x.PatientId).Distinct().Count(),
                Age51To60 = result.Where(x => x.Age >= 51 && x.Age <= 60).Select(x => x.PatientId).Distinct().Count(),
                Age61To70 = result.Where(x => x.Age >= 61 && x.Age <= 70).Select(x => x.PatientId).Distinct().Count(),
                Age71To80 = result.Where(x => x.Age >= 71 && x.Age <= 80).Select(x => x.PatientId).Distinct().Count(),
                Age81AndOlder = result.Where(x => x.Age >= 81).Select(x => x.PatientId).Distinct().Count(),
                Asian = result.Where(x => x.Race == "Asian").Select(x => x.PatientId).Distinct().Count(),
                Black = result.Where(x => x.Race == "Black").Select(x => x.PatientId).Distinct().Count(),
                Coloured = result.Where(x => x.Race == "Coloured").Select(x => x.PatientId).Distinct().Count(),
                White = result.Where(x => x.Race == "White").Select(x => x.PatientId).Distinct().Count(),
                Other = result.Where(x => x.Race == "Other").Select(x => x.PatientId).Distinct().Count(),
                Deaths = result.Where(x => x.ImpairmentGroup == "Death").Select(x => x.PatientId).Distinct().Count(),
                EndDate = endDate,
                StartDate = startDate,
                Males = result.Where(x => x.Gender == "Male").Select(x => x.PatientId).Distinct().Count(),
                Females = result.Where(x => x.Gender == "Female").Select(x => x.PatientId).Distinct().Count(),
                AverageAge = result.GroupBy(x => x.PatientId).Select(x => x.FirstOrDefault()).Sum(x => x.Age) / result.GroupBy(x => x.PatientId).Select(x => x.FirstOrDefault()).Count(),
                AverageLOS = result.Where(x => x.DischargeDate.HasValue).GroupBy(x => x.PatientId).Select(x => x.Max(y => y.DischargeDate).Value.Subtract(x.Min(y => y.AdmissionDate)).TotalDays).Sum() / result.Where(x => x.DischargeDate.HasValue).Select(x => x.PatientId).Distinct().Count(),
                AverageLOSWeek1 = result.Where(x => x.DischargeDate.HasValue && x.DischargeDate >= startDate && x.DischargeDate <= startDate.AddDays(7)).GroupBy(x => x.PatientId).Select(x => x.Max(y => y.DischargeDate).Value.Subtract(x.Min(y => y.AdmissionDate)).TotalDays).Sum() / result.Where(x => x.DischargeDate.HasValue && x.DischargeDate >= startDate && x.DischargeDate <= startDate.AddDays(7)).Select(x => x.PatientId).Distinct().Count(),
                AverageLOSWeek2 = result.Where(x => x.DischargeDate.HasValue && x.DischargeDate >= startDate.AddDays(8) && x.DischargeDate <= startDate.AddDays(14)).GroupBy(x => x.PatientId).Select(x => x.Max(y => y.DischargeDate).Value.Subtract(x.Min(y => y.AdmissionDate)).TotalDays).Sum() / result.Where(x => x.DischargeDate.HasValue && x.DischargeDate >= startDate.AddDays(7) && x.DischargeDate <= startDate.AddDays(14)).Select(x => x.PatientId).Distinct().Count(),
                AverageLOSWeek3 = result.Where(x => x.DischargeDate.HasValue && x.DischargeDate >= startDate.AddDays(15) && x.DischargeDate <= startDate.AddDays(21)).GroupBy(x => x.PatientId).Select(x => x.Max(y => y.DischargeDate).Value.Subtract(x.Min(y => y.AdmissionDate)).TotalDays).Sum() / result.Where(x => x.DischargeDate.HasValue && x.DischargeDate >= startDate.AddDays(14) && x.DischargeDate <= startDate.AddDays(21)).Select(x => x.PatientId).Distinct().Count(),
                AverageLOSWeek4 = result.Where(x => x.DischargeDate.HasValue && x.DischargeDate >= startDate.AddDays(22) && x.DischargeDate <= startDate.AddDays(28)).GroupBy(x => x.PatientId).Select(x => x.Max(y => y.DischargeDate).Value.Subtract(x.Min(y => y.AdmissionDate)).TotalDays).Sum() / result.Where(x => x.DischargeDate.HasValue && x.DischargeDate >= startDate.AddDays(21) && x.DischargeDate <= startDate.AddDays(30)).Select(x => x.PatientId).Distinct().Count(),
                FacilityImage = facility.ProfileImage,
                AverageLOSMoreThanAMonth = result.Where(x => x.DischargeDate.HasValue && x.DischargeDate >= startDate.AddDays(29)).GroupBy(x => x.PatientId).Select(x => x.Max(y => y.DischargeDate).Value.Subtract(x.Min(y => y.AdmissionDate)).TotalDays).Sum() / result.Where(x => x.DischargeDate.HasValue && x.DischargeDate >= startDate.AddDays(29)).Select(x => x.PatientId).Distinct().Count(),
            };
        }
    }
}
