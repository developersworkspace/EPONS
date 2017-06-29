using SADFM.Data;
using SADFM.Infrastructure.Models;
using SADFM.Infrastructure.Repositories;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Application.Repositories
{
    public class ReportRepository : IReportRepository
    {


        public List<FacilityVolumeReport> GetFacilityVolumeReport(Guid facilityId, DateTime startDate, DateTime endDate)
        {
            using (SADFMEntities context = new SADFMEntities())
            {
                var patients = context.Patients.Where(y => y.PatientProviders.Count(x => (x.AssignedTimestamp >= startDate && x.AssignedTimestamp <= endDate) && x.ProviderId == facilityId) > 0);


                var result = patients.Select(x => new
                {
                    ImpairmentGroupId = x.PatientImpairmentGroupHistories.Where(y => y.Timestamp <= endDate).OrderBy(y => y.Timestamp).FirstOrDefault().ImpairmentGroup.ListItemId,
                    ImpairmentGroup = x.PatientImpairmentGroupHistories.Where(y => y.Timestamp <= endDate).OrderBy(y => y.Timestamp).FirstOrDefault(),
                    LOS = DbFunctions.DiffDays(x.PatientProviders.Where(y => y.DischargeTimestamp.HasValue && y.AssignedTimestamp >= startDate && y.AssignedTimestamp <= endDate).Min(y => y.AssignedTimestamp), x.PatientProviders.Where(y => y.DischargeTimestamp.HasValue && y.AssignedTimestamp >= startDate && y.AssignedTimestamp <= endDate).Max(y => y.DischargeTimestamp.Value)),
                    Patient = x,
                    AgeOnAdmission = DbFunctions.DiffDays(x.BirthDate.Value, x.PatientImpairmentGroupHistories.Where(y => y.Timestamp <= endDate).OrderBy(y => y.Timestamp).FirstOrDefault().Timestamp)

                }).Where(x => x.ImpairmentGroup != null);

                var groupedResults = result.GroupBy(x => x.ImpairmentGroupId).Select(x => new FacilityVolumeReport()
                {
                    ImpairmentGroup = x.FirstOrDefault().ImpairmentGroup.ImpairmentGroup.Parent.Value + "." + x.FirstOrDefault().ImpairmentGroup.ImpairmentGroup.Value + " - " + x.FirstOrDefault().ImpairmentGroup.ImpairmentGroup.Parent.Name + " - " + x.FirstOrDefault().ImpairmentGroup.ImpairmentGroup.Name,
                    Admission = result.Count(y => y.ImpairmentGroupId == x.Key),
                    Percentage = (double)result.Count(y => y.ImpairmentGroupId == x.Key) / (double)result.Count() * (double)100,
                    AverageLOS = x.Sum(y => y.LOS) / x.Count() ?? 0,
                    AverageOnsetDays = 0,
                    Patients = result.Count(y => y.ImpairmentGroupId == x.Key),
                    AverageAgeOnAdmission = x.Sum(y => y.AgeOnAdmission) / result.Count(y => y.ImpairmentGroupId == x.Key) / 365 ?? 0
                }).ToList();


                return groupedResults;
            }
        }

        public List<PatientSummary> GetFacilityDashboardReport(Guid? facilityId, DateTime startDate, DateTime endDate)
        {
            using (SADFMEntities context = new SADFMEntities())
            {
                context.Database.CommandTimeout = 60;

                var patients = context.Patients.Where(x => x.PatientProviders.Count(y => y.ProviderId == facilityId && (!y.DischargeTimestamp.HasValue || (y.AssignedTimestamp >= startDate && y.AssignedTimestamp <= endDate))) > 0);

                var result = patients.SelectMany(x => x.PatientProviders.Select(y => new PatientSummary()
                {
                    AdmissionDate = y.AssignedTimestamp,
                    Age = DbFunctions.DiffYears(x.BirthDate.Value, startDate).Value,
                    BirthDate = x.BirthDate.Value,
                    CaseId = y.CaseId,
                    DischargeDate = y.DischargeTimestamp,
                    ImpairmentGroup = x.PatientImpairmentGroupHistories.Where(z => z.Timestamp >= startDate).OrderByDescending(z => z.Timestamp).FirstOrDefault().ImpairmentGroup.Name,
                    Firstname = x.FirstName,
                    Gender = x.Gender.Description,
                    Lastname = x.LastName,
                    LOS = y.DischargeTimestamp.HasValue ? DbFunctions.DiffDays(y.DischargeTimestamp.Value,y.AssignedTimestamp).Value : 0,
                    PatientId = x.PatientId,
                    Race = x.Race.Description
                })).ToList();

                return result;

            }


            throw new NotImplementedException();
        }

        public List<PatientSummary> GetPatientSummaryReport(Guid? facilityId, DateTime startDate, DateTime endDate, Guid? scaleId)
        {
            using (SADFMEntities context = new SADFMEntities())
            {
                context.Database.CommandTimeout = 60;

                var caseP = context.PatientProviders.Where(x => context.FunderSchemes.Where(y => y.FunderId == facilityId.Value).Count(z => z.SchemeId == x.Case.Patient.MedicalSchemeId) > 0);

                var list = caseP.GroupBy(cp => cp.CaseId).Where(cpGroup => cpGroup.Count(cp => !cp.DischargeTimestamp.HasValue) == 0 && cpGroup.OrderBy(x => x.AssignedTimestamp).FirstOrDefault().AssignedTimestamp >= startDate && cpGroup.OrderByDescending(x => x.DischargeTimestamp).FirstOrDefault().DischargeTimestamp <= endDate).Select(cp => new
                {
                    CaseId = cp.Key,
                    Case = cp.FirstOrDefault().Case,
                    AdmissionDate = cp.OrderBy(x => x.AssignedTimestamp).FirstOrDefault().AssignedTimestamp,
                    DischargeDate = cp.OrderByDescending(x => x.DischargeTimestamp).FirstOrDefault().DischargeTimestamp,
                    PatientProviders = cp.Select(cps => cps.Provider)
                }).Select(e => new
                {
                    PatientId = e.Case.PatientId,
                    Firstname = e.Case.Patient.FirstName,
                    Lastname = e.Case.Patient.LastName,
                    Gender = e.Case.Patient.Gender.Description,
                    Race = e.Case.Patient.Race.Description,
                    BirthDate = e.Case.Patient.BirthDate.Value,
                    CaseId = e.CaseId,
                    Providers = e.PatientProviders.Select(x => x.Name),
                    ProvidersServiceType = e.PatientProviders.SelectMany(x => x.ProviderServiceTypes).Select(x => x.ServiceType.Parent.Name.TrimEnd() + ": " + x.ServiceType.Name.TrimEnd()),
                    MedicalScheme = e.Case.Patient.MedicalScheme.Description,
                    MedicalSchemeNumber = e.Case.Patient.MedicalSchemeMembershipNumber,
                    ImpairmentGroup = e.Case.ImpairmentGroupId != null ? e.Case.ImpairmentGroup.Parent.Value + "." + e.Case.ImpairmentGroup.Value + " - " + e.Case.ImpairmentGroup.Parent.Name + " - " + e.Case.ImpairmentGroup.Name : "",
                    AdmissionDate = e.AdmissionDate,
                    DischargeDate = e.DischargeDate.Value,
                    LOS = DbFunctions.DiffDays(e.AdmissionDate, e.DischargeDate.Value).Value,

                }).ToList().Select(e => new PatientSummary()
                {
                    PatientId = e.PatientId,
                    Firstname = e.Firstname,
                    Lastname = e.Lastname,
                    Gender = e.Gender,
                    Race = e.Race,
                    BirthDate = e.BirthDate,
                    CaseId = e.CaseId,
                    Providers = e.Providers.ToArray(),
                    ProvidersServiceType = e.ProvidersServiceType.ToArray(),
                    MedicalScheme = e.MedicalScheme,
                    MedicalSchemeNumber = e.MedicalSchemeNumber,
                    ImpairmentGroup = e.ImpairmentGroup,
                    AdmissionDate = e.AdmissionDate,
                    DischargeDate = e.DischargeDate,
                    LOS = e.LOS,
                    FirstDate = DateTime.Now,
                    LastDate = DateTime.Now
                }).ToList();



                if (!scaleId.HasValue)
                    return list;

                foreach (var entry in list)
                {


                    Dictionary<Guid, List<Data.Models.Visit>> patientCompletedScales = null;

                    patientCompletedScales = GetCompletedScalesWithParameters(entry.PatientId, startDate, endDate, scaleId: scaleId);

                    if (patientCompletedScales.Count != 0)
                    {


                        var first = patientCompletedScales[scaleId.Value].OrderBy(x => x.VisitDate).FirstOrDefault();
                        var last = patientCompletedScales[scaleId.Value].OrderByDescending(x => x.VisitDate).FirstOrDefault();


                        if (first != null && last != null)
                        {
                            var firstScore = first.ScaleValues;
                            var lastScore = last.ScaleValues;

                            var firstDate = first.VisitDate;
                            var lastDate = last.VisitDate;

                            entry.FirstDate = firstDate;
                            entry.LastDate = lastDate;
                            entry.FirstScore = firstScore;
                            entry.LastScore = lastScore;
                        }

                    }

                }

                return list.Where(x => x.FirstScore != null).ToList();
            };

        }

        public Dictionary<Guid, List<Data.Models.Visit>> GetCompletedScalesWithParameters(Guid patientId, DateTime startDate, DateTime endDate, Guid? scaleId = null)
        {
            using (SADFMEntities context = new SADFMEntities())
            {
                context.Database.CommandTimeout = 60;

                Dictionary<Guid, string> itemNames = new Dictionary<Guid, string>();
                Dictionary<Guid, int?> itemSortOrders = new Dictionary<Guid, int?>();

                var dbResult = context.Database.SqlQuery<Data.Models.CompletedScaleValues>("GetCompletedScalesWithParameters @patientId, @startDate, @endDate", new SqlParameter("patientId", patientId), new SqlParameter("startDate", startDate), new SqlParameter("endDate", endDate));
                Dictionary<Guid, List<Data.Models.Visit>> result = new Dictionary<Guid, List<Data.Models.Visit>>();
                foreach (Data.Models.CompletedScaleValues visit in dbResult)
                {
                    if (scaleId.HasValue && visit.ScaleId != scaleId)
                        continue;
                    if (!result.ContainsKey(visit.ScaleId))
                        result.Add(visit.ScaleId, new List<Data.Models.Visit>());
                    Data.Models.Visit newVisit = result[visit.ScaleId].SingleOrDefault(v => v.VisitDate == visit.VisitDate);
                    if (newVisit == null)
                    {
                        newVisit = new Data.Models.Visit
                        {
                            FirstVisitDate = visit.FirstVisitDate,
                            VisitDate = visit.VisitDate,
                            VisitCount = visit.VisitCount,
                            ScaleValues = new List<Data.Models.ScaleItemScore>()
                        };
                        result[visit.ScaleId].Add(newVisit);
                    }

                    if (!itemNames.ContainsKey(visit.ScaleItemId))
                    {

                        var scaleItem = context.ListItems.SingleOrDefault(x => x.ListItemId == visit.ScaleItemId);
                        itemNames.Add(visit.ScaleItemId, scaleItem.ScaleItemHeaders.FirstOrDefault() == null ? scaleItem.Name : scaleItem.ScaleItemHeaders.FirstOrDefault().Name);
                        itemSortOrders.Add(visit.ScaleItemId, scaleItem.SortOrder);
                    }

                    newVisit.ScaleValues.Add(new Data.Models.ScaleItemScore(visit.ScaleId, visit.ScaleItemId, Guid.Empty, visit.Value)
                    {
                        ItemName = itemNames[visit.ScaleItemId],
                        SortOrder = itemSortOrders[visit.ScaleItemId]
                    });
                }

                if (scaleId.HasValue && result.Count == 0)
                    result.Add(scaleId.Value, new List<Data.Models.Visit>());

                return result;

            }


        }


        public Dictionary<Guid, GroupedPatientSummary> GetPatientSummaryReportCollapsed(Guid ScaleId, DateTime startDate, DateTime endDate, Guid ProviderId, List<Guid> medicalSchemeIds)
        {

            using (SADFMEntities context = new SADFMEntities())
            {
                context.Database.CommandTimeout = 60;

                endDate = endDate.AddHours(24);


                List<PatientSummary> tempResult = new List<PatientSummary>();


                var patients = context.Patients.Where(x => x.Cases.SelectMany(y => y.PatientProviders).Where(z => z.ProviderId == ProviderId).Count() > 0 && x.Cases.Where(y => y.EndDate.HasValue).Count(y => y.StartDate >= startDate || y.EndDate <= endDate) > 0);


                foreach (var patient in patients)
                {


                    if (medicalSchemeIds != null && !patient.MedicalSchemeId.HasValue)
                        continue;

                    if (medicalSchemeIds != null && patient.MedicalSchemeId.HasValue && !medicalSchemeIds.Contains(patient.MedicalSchemeId.Value))
                        continue;


                    var completedScale = this.GetCompletedScalesWithParameters(patient.PatientId, startDate, endDate, scaleId: ScaleId);


                    if (completedScale.Count != 0)
                    {
                        var first = completedScale[ScaleId].OrderBy(x => x.VisitDate).FirstOrDefault();
                        var last = completedScale[ScaleId].OrderByDescending(x => x.VisitDate).FirstOrDefault();


                        if (first != null && last != null)
                        {
                            var firstScore = first.ScaleValues;
                            var lastScore = last.ScaleValues;

                            var firstDate = first.VisitDate;
                            var lastDate = last.VisitDate;

                            foreach (var patientCase in patient.Cases.Where(y => y.EndDate.HasValue && y.StartDate >= startDate && y.EndDate <= endDate))
                            {

                                var patientCaseIG = patient.PatientImpairmentGroupHistories.Where(x => x.Timestamp >= patientCase.StartDate && x.Timestamp <= patientCase.EndDate).OrderByDescending(x => x.Timestamp).FirstOrDefault();

                                if (patientCaseIG != null)
                                {
                                    tempResult.Add(new PatientSummary()
                                    {
                                        PatientId = patient.PatientId,
                                        FirstDate = firstDate,
                                        LastDate = lastDate,
                                        LastScore = lastScore,
                                        FirstScore = firstScore,
                                        AdmissionDate = patientCase.StartDate,
                                        DischargeDate = patientCase.EndDate.Value,
                                        LOS = (int)patientCase.EndDate.Value.Subtract(patientCase.StartDate).TotalDays,
                                        Age = patient.BirthDate.HasValue ? (int)Math.Floor(DateTime.Now.Subtract(patient.BirthDate.Value).TotalDays / 365) : -1,
                                        OnsetDays = patient.DateCreatedTimestamp.Subtract(patientCase.StartDate).TotalDays,
                                        ImpairmentGroupId = patientCaseIG.ImpairmentGroupId,
                                        ImpairmentGroup = patientCaseIG.ImpairmentGroupId != null ? patientCaseIG.ImpairmentGroup.Parent.Value + "." + patientCaseIG.ImpairmentGroup.Value + " - " + patientCaseIG.ImpairmentGroup.Parent.Name + " - " + patientCaseIG.ImpairmentGroup.Name : ""

                                    });

                                }
                                else if (patientCase.ImpairmentGroupId.HasValue)
                                {
                                    tempResult.Add(new PatientSummary()
                                    {
                                        PatientId = patient.PatientId,
                                        FirstDate = firstDate,
                                        LastDate = lastDate,
                                        LastScore = lastScore,
                                        FirstScore = firstScore,
                                        AdmissionDate = patientCase.StartDate,
                                        DischargeDate = patientCase.EndDate.Value,
                                        LOS = (int)patientCase.EndDate.Value.Subtract(patientCase.StartDate).TotalDays,
                                        Age = patient.BirthDate.HasValue ? (int)Math.Floor(DateTime.Now.Subtract(patient.BirthDate.Value).TotalDays / 365) : -1,
                                        OnsetDays = patient.DateCreatedTimestamp.Subtract(patientCase.StartDate).TotalDays,
                                        ImpairmentGroupId = patientCase.ImpairmentGroupId,
                                        ImpairmentGroup = patientCase.ImpairmentGroupId != null ? patientCase.ImpairmentGroup.Parent.Value + "." + patientCase.ImpairmentGroup.Value + " - " + patientCase.ImpairmentGroup.Parent.Name + " - " + patientCase.ImpairmentGroup.Name : ""

                                    });
                                }


                            }

                        }

                    }
                }

                int totalPatients = tempResult.Select(x => x.PatientId).Distinct().Count();

                return tempResult.GroupBy(x => x.ImpairmentGroupId).ToDictionary(x => x.Key.Value, x => new GroupedPatientSummary()
                {
                    AverageAdmitScore = x.Select(y => y.FirstScore.Sum(z => z.Value)).Sum() / x.Count(),
                    AverageDischargeScore = x.Select(y => y.LastScore.Sum(z => z.Value)).Sum() / x.Count(),
                    Delta = (x.Select(y => y.LastScore.Sum(z => z.Value)).Sum() / x.Count()) - (x.Select(y => y.FirstScore.Sum(z => z.Value)).Sum() / x.Count()),
                    AverageLOS = (int)((double)x.Select(y => y.LOS).Sum() / (double)x.Count()),
                    Effiency = (double)((x.Select(y => y.LastScore.Sum(z => z.Value)).Sum() / x.Count()) - (double)(x.Select(y => y.FirstScore.Sum(z => z.Value)).Sum() / x.Count())) / (x.Select(y => y.LOS).Sum() / x.Count()),
                    NumberOfPatients = x.Count(),
                    ImpairmentGroup = x.FirstOrDefault().ImpairmentGroup,
                    TotalPatients = totalPatients,
                    PercentageOfPatients = (double)x.Count() / (double)totalPatients * 100,
                    Age = (double)x.Sum(y => y.Age) / (double)x.Count(),
                    OnsetDays = (double)x.Sum(y => y.OnsetDays) / (double)x.Count()
                });

            }

        }
    }
}
