using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SADFM.Data.Models;
using System.Data;
using SADFM.Base;
using System.Data.Entity.Core.Objects;
using System.Data.Entity;

namespace SADFM.Data.EntityAccess
{
    public class Patient : EntityAccessBase
    {

        internal class Visit
        {
            internal DateTime VisitDate { get; set; }
            internal Guid ItemId { get; set; }
            internal string ItemName { get; set; }
            internal int Score { get; set; }
        }

        private Scale VitalSignScale;

        internal Patient(ConnectionStringSettings connection)
            : base(connection)
        {

            VitalSignScale = Execute(context =>
            {

                Data.ListItem item = context.ListItems.Single(li => li.Parent == null && li.Name == "Scale").Children.Single(li => li.Name == "VitalSigns");

                return new Scale
                {
                    ScaleID = BaseModel.EncryptId(item.ListItemId),
                    Description = item.Description
                };


            });
        }


        public Models.ViewModels.VisitViewModel GetModelForAddVisit(Guid patientId, string username)
        {

            return Execute(cx =>
            {
                //
                Models.ViewModels.VisitViewModel result = new Models.ViewModels.VisitViewModel();

                var dataPatient = cx.Patients.Single(p => p.PatientId == patientId);
                var tempCase = cx.PatientProviders.Where(cp => cp.Account.Username == username && cp.Case.PatientId == patientId && !cp.DischargeTimestamp.HasValue).OrderByDescending(cp => cp.AssignedTimestamp).FirstOrDefault();
                result.patient = new Models.Patient()
                {
                    GUID = dataPatient.PatientId,
                    ID = Models.BaseModel.EncryptId(dataPatient.PatientId),
                    FirstName = dataPatient.FirstName,
                    LastName = dataPatient.LastName,
                    BirthDate = dataPatient.BirthDate,
                    GenderID = dataPatient.GenderId != null ? Models.BaseModel.EncryptId(dataPatient.GenderId) : null,
                    Gender = dataPatient.Gender != null ? dataPatient.Gender.Description : null,
                    RaceID = dataPatient.RaceId != null ? Models.BaseModel.EncryptId(dataPatient.RaceId) : null,
                    Race = dataPatient.Race != null ? dataPatient.Race.Description : null,
                    IDNumber = dataPatient.IDNumber,
                    MedicalSchemeID = dataPatient.MedicalSchemeId != null ? Models.BaseModel.EncryptId(dataPatient.MedicalSchemeId) : null,
                    MedicalScheme = dataPatient.MedicalScheme != null ? dataPatient.MedicalScheme.Name : null,
                    ContactNumber = dataPatient.ContactNumber,
                    Street = dataPatient.Street,
                    CityId = Data.Models.BaseModel.EncryptId(dataPatient.CityId),
                    ProvinceId = Data.Models.BaseModel.EncryptId(dataPatient.ProvinceId),
                    City = dataPatient.CityId == null ? "" : dataPatient.City.Description,
                    Province = dataPatient.ProvinceId == null ? "" : dataPatient.Province.Description,
                    PostalCode = dataPatient.PostalCode,
                    NextOfKinName = dataPatient.NextOfKinName,
                    NextOfKinContact = dataPatient.NextOfKinContact,
                    NextOfKinEmail = dataPatient.NextOfKinEmail,
                    NextOfKinRelationship = dataPatient.NextOfKinRelationship,
                    MedicalSchemeNo = dataPatient.MedicalSchemeMembershipNumber,
                    LastUpdatedTimestamp = dataPatient.LastUpdateTimestamp,
                    LastUpdateUsername = string.Format("{0} {1}", dataPatient.LastUpdatedAccount.FirstName, dataPatient.LastUpdatedAccount.LastName),
                    CountryID = Data.Models.BaseModel.EncryptId(dataPatient.CountryId),
                    Country = dataPatient.Country != null ? dataPatient.Country.Description : null,
                    TitleId = Data.Models.BaseModel.EncryptId(dataPatient.TitleId),
                    Title = dataPatient.Title == null ? null : dataPatient.Title.Description,
                    Messages = dataPatient.Messages.ToList().Select(m => (Models.Message)m).ToList(),
                    Avatar = dataPatient.Avatar != null ? string.Format("data:image/png;base64,{0}", Convert.ToBase64String(dataPatient.Avatar)) : "/Content/images/nopatient.png",
                    ResidentialEnvironment = dataPatient.ResidentialEnviroment != null ? dataPatient.ResidentialEnviroment.Description : "",
                    AdmitFrom = dataPatient.AdmitFrom != null ? dataPatient.AdmitFrom.Description : "",
                    DischargeTo = dataPatient.DischargeTo != null ? dataPatient.DischargeTo.Description : "",
                    AdmitFromID = dataPatient.AdmitFrom != null ? Data.Models.BaseModel.EncryptId(dataPatient.AdmitFromId) : "",
                    DischargeToID = dataPatient.DischargeTo != null ? Data.Models.BaseModel.EncryptId(dataPatient.DischargeToId) : "",
                    ResidentialEnvironmentID = dataPatient.ResidentialEnviroment != null ? Data.Models.BaseModel.EncryptId(dataPatient.ResidentialEnvironmentId) : "",
                    Cases = cx.Cases.Where(c => c.PatientId == patientId && (username != null ? c.PatientProviders.Count(cp => cp.Account.Username == username) > 0 : true)).ToList().Select(c => new Models.Case()
                    {
                        CaseId = BaseModel.EncryptId(c.CaseId),
                        ICD10 = c.ICD10 != null ? c.ICD10.Name : null,
                        ICD10Description = c.ICD10.Description,
                        isActive = tempCase != null ? c.CaseId == tempCase.CaseId : false,
                        ImpairmenGroup = c.ImpairmentGroupId != null ? string.Format("{0}.{1} - {2} - {3}", c.ImpairmentGroup.Parent.Value, c.ImpairmentGroup.Value, c.ImpairmentGroup.Parent.Name, c.ImpairmentGroup.Name) : "",
                        ImpairmentGroupId = BaseModel.EncryptId(c.ImpairmentGroupId)
                    }).ToList()
                };

                var patientScale = dataPatient.PatientScales.FirstOrDefault(x => x.PatientId == patientId && x.Scale.Name == "VitalSigns");

                if (patientScale == null)
                    result.requiresVitalSigns = false;
                else
                {

                    var lastVitalSignsVisit = dataPatient.Visits.OrderByDescending(x => x.VisitDate).FirstOrDefault(x => x.BloodPressureDiastolic != null
                        || x.BloodPressureSystolic != null || x.Glucose != null || x.HeartRate != null
                        || x.HeartRateNote != null || x.HeartRateRegular != null || x.PulseOximetry != null
                        || x.RespiratoryRate != null || x.RespiratoryRateNote != null || x.RespiratoryRateRegular != null
                        || x.SupplementaryOxygen != null || x.SupplementaryOxygenNote != null || x.Temperature != null);


                    if (lastVitalSignsVisit == null)
                        result.requiresVitalSigns = true;
                    else

                        result.requiresVitalSigns = DateTime.Now.Subtract(lastVitalSignsVisit.VisitDate).TotalDays > Convert.ToInt32(patientScale.Frequency.Value);
                }



                var dataAccount = cx.Accounts.SingleOrDefault(a => a.Username.ToLower() == username.ToLower());

                result.account = (Models.Account)dataAccount;


                List<SADFM.Data.Models.Scale> scales = new List<Scale>();




                scales = dataPatient.PatientScales.Where(x => x.Status.Name == "Active").Select(x => (Models.Scale)x).ToList();

                scales = scales.OrderBy(s => s.SortOrder).ToList();
                List<Guid> overdueScales = DataAccess.Patient.GetOverdueScales(dataPatient.PatientId);
                scales.ForEach(s =>
                {
                    s.IsOverdue = (overdueScales.Contains(s.GetScaleId()));
                });

                result.patient.Scales = scales;

                return result;
            });





        }

        public bool RequiresVitalSigns(Guid patientId)
        {

            return Execute(cx =>
           {
               var patientScale = cx.PatientScales.FirstOrDefault(x => x.PatientId == patientId && x.Scale.Name == "VitalSigns");

               if (patientScale == null)
                   return false;

               var lastVitalSignsVisit = patientScale.Patient.Visits.OrderByDescending(x => x.VisitDate).FirstOrDefault(x => x.BloodPressureDiastolic != null
                   || x.BloodPressureSystolic != null || x.Glucose != null || x.HeartRate != null
                   || x.HeartRateNote != null || x.HeartRateRegular != null || x.PulseOximetry != null
                   || x.RespiratoryRate != null || x.RespiratoryRateNote != null || x.RespiratoryRateRegular != null
                   || x.SupplementaryOxygen != null || x.SupplementaryOxygenNote != null || x.Temperature != null);


               if (lastVitalSignsVisit == null)
                   return true;

               return DateTime.Now.Subtract(lastVitalSignsVisit.VisitDate).TotalDays > Convert.ToInt32(patientScale.Frequency.Value);
           });



        }

        public Data.Models.PatientProgressReport GetPatientProgressReport(Guid PatientId, DateTime startDate, DateTime endDate, Guid? SelectedClientId)
        {
            return Execute(cx =>
            {
                Guid patientId = PatientId;

                var patient = cx.Patients.SingleOrDefault(x => x.PatientId == patientId);


                var result = new Data.Models.PatientProgressReport()
                {
                    PatientId = patientId,
                    StartDate = startDate,
                    EndDate = endDate,
                    Fullname = patient.FirstName + " " + patient.LastName,
                    DateOfBirth = patient.BirthDate.Value,
                    Street = patient.Street,
                    City = patient.City == null ? "" : patient.City.Description,
                    Country = patient.Country == null ? "" : patient.Country.Description,
                    ProfileImage = patient.Avatar,
                    ProviderImage = SelectedClientId.HasValue ? cx.Providers.SingleOrDefault(x => x.ProviderId == SelectedClientId) == null ? null : cx.Providers.SingleOrDefault(x => x.ProviderId == SelectedClientId).ProfileImage : null,
                    PostalCode = patient.PostalCode,
                    ReferringDoctor = patient.Cases.Select(x => new Data.Models.PatientProgressReportDoctor()
                    {
                        Email = x.ReferringDoctorEmail,
                        Name = x.ReferringDoctor,
                        Contact = x.ReferringDoctorContact
                    }).ToArray(),
                    TreatingDoctor = patient.Cases.Select(x => new Data.Models.PatientProgressReportDoctor()
                    {
                        Email = x.TreatingDoctorEmail,
                        Name = x.TreatingDoctor,
                        Contact = x.TreatingDoctorContact
                    }).ToArray(),
                    Diagnosis = patient.Cases.Select(x => new Data.Models.PatientProgressReportDiagnosis()
                    {
                        ICD10 = x.ICD10 == null ? "" : x.ICD10.Name + " - " + x.ICD10.Description,
                        StartDate = x.StartDate,
                        EndDate = x.EndDate

                    }).ToList(),

                    Careplans = patient.PatientScales.Where(x => !x.LastUpdatedTimestamp.HasValue || x.LastUpdatedTimestamp >= startDate).Select(x => new Data.Models.PatientProgressReportCareplan()
                    {
                        Name = x.Scale.Description,
                        Frequency = x.Frequency.Description,
                        ScaleId = x.ScaleId,
                        ScaleID = BaseModel.EncryptId(x.ScaleId),
                        StartDate = x.CreatedTimestamp,
                        EndDate = x.LastUpdatedTimestamp,
                        Provider = x.Provider == null ? "" : x.Provider.Name
                    }).ToList(),

                    MDTs = patient.Cases.SelectMany(x => x.PatientProviders).Select(x => new Data.Models.PatientProgressReportMDT()
                    {
                        Provider = x.Provider.Name,
                        Clinician = x.Account.FirstName + " " + x.Account.LastName,
                        Roles = x.Account.AccountRoles.Select(y => y.Role.Description).ToList(),
                        StartDate = x.AssignedTimestamp,
                        EndDate = x.DischargeTimestamp
                    }).ToList(),
                    Notes = patient.Visits.Where(x => x.VisitDate >= startDate && x.VisitDate <= endDate.AddHours(24)).Select(x => new Data.Models.PatientProgressReportNote()
                    {
                        Body = x.VisitNotes,
                        Group = x.Account == null ? "Unknown" : x.Account.AccountRoles.Count == 0 ? "Unknown" : string.Join(", ", x.Account.AccountRoles.Select(y => y.Role.Name).ToList()),
                        Timestamp = x.VisitDate,
                        Clinician = x.Account == null ? "" : x.Account.FirstName + " " + x.Account.LastName,
                        Provider = x.Account == null ? "" : string.Join(", ", x.Account.ProviderAccountPermissions.Select(y => y.Provider.Name).ToList()),
                        IsCaseManager = x.Account == null ? false : x.Account.ProviderAccountPermissions.Count(y => y.Permission.Name == "ProviderCaseManager") > 0


                    }).ToArray(),
                    SupportServices = patient.PatientSupportServices.Select(x => new SupportService(x)).ToList()

                };
                result.Careplans.AddRange(patient.Visits.Where(x => x.VisitDate >= startDate && x.VisitDate <= endDate).SelectMany(x => x.VisitScores).Select(x => x.Score.Parent.Parent.Parent.Description == "Delta" || x.Score.Parent.Parent.Parent.Description == "APOM" ? x.Score.Parent.Parent.Parent : x.Score.Parent.Parent).GroupBy(x => x.ListItemId).Select(x => new Data.Models.PatientProgressReportCareplan()
                {
                    Name = x.FirstOrDefault().Description,
                    ScaleId = x.FirstOrDefault().ListItemId,
                    ScaleID = BaseModel.EncryptId(x.FirstOrDefault().ListItemId),
                }));

                var vitalSignsCareplan = cx.ListItems.SingleOrDefault(x => x.Name == "VitalSigns");

                if (result.Careplans.FirstOrDefault(x => x.ScaleId == vitalSignsCareplan.ListItemId) == null)
                {
                    result.Careplans.Add(new Data.Models.PatientProgressReportCareplan()
                    {
                        Name = vitalSignsCareplan.Description,
                        ScaleId = vitalSignsCareplan.ListItemId,
                        ScaleID = BaseModel.EncryptId(vitalSignsCareplan.ListItemId),
                    });
                }



                return result;
            });
        }



        public List<Models.Patient> GetPatients(PatientSearch search, int start, int length, int sortColumn, bool ascending, Guid accountId, Guid? providerId, ListType type, out int count, out int filteredCount, FilterType filterType = FilterType.Active)
        {

            // Sort Columns:
            // new string[] { "FirstName", "LastName", "BirthDate", "Gender", "Race", "IDNumber", "MedicalScheme" }[
            int resultCount = 0, resultFilteredCount = 0;
            List<Models.Patient> result = Execute(cx =>
            {

                List<Data.Patient> res1 = new List<Data.Patient>();


                IQueryable<Data.Patient> patientsWithFilter = null;

                if (filterType == FilterType.Active)
                {
                    patientsWithFilter = cx.Patients.Where(x => !((x.PatientProviders.Count(y => y.AccountId == accountId && y.DischargeTimestamp.HasValue) > 0) && (x.PatientProviders.Count(y => y.AccountId == accountId && !y.DischargeTimestamp.HasValue) == 0)));

                    Guid deathImpairmentGroupId = cx.ListItems.SingleOrDefault(x => x.Name == "Death" && x.Parent.Name == "Death" && x.Parent.Parent.Name == "ImpairmentClass").ListItemId;

                    patientsWithFilter = patientsWithFilter.Where(x => x.Cases.Count(y => y.ImpairmentGroupId.HasValue && y.ImpairmentGroupId.Value == deathImpairmentGroupId) == 0);
                }
                else if (filterType == FilterType.Discharged)
                {
                    patientsWithFilter = cx.Patients.Where(x => (x.PatientProviders.Count(y => y.AccountId == accountId && y.DischargeTimestamp.HasValue) > 0) && (x.PatientProviders.Count(y => y.AccountId == accountId && !y.DischargeTimestamp.HasValue) == 0));

                    Guid deathImpairmentGroupId = cx.ListItems.SingleOrDefault(x => x.Name == "Death" && x.Parent.Name == "Death" && x.Parent.Parent.Name == "ImpairmentClass").ListItemId;

                    patientsWithFilter = patientsWithFilter.Where(x => x.Cases.Count(y => y.ImpairmentGroupId.HasValue && y.ImpairmentGroupId.Value == deathImpairmentGroupId) == 0);

                }
                else if (filterType == FilterType.Deceased)
                {
                    patientsWithFilter = cx.Patients;

                    Guid deathImpairmentGroupId = cx.ListItems.SingleOrDefault(x => x.Name == "Death" && x.Parent.Name == "Death" && x.Parent.Parent.Name == "ImpairmentClass").ListItemId;

                    patientsWithFilter = patientsWithFilter.Where(x => x.Cases.Count(y => y.ImpairmentGroupId.HasValue && y.ImpairmentGroupId.Value == deathImpairmentGroupId) > 0);
                }

                if (type == ListType.SuperAdmin)
                {
                    res1 = patientsWithFilter.ToList();
                }
                else if (type == ListType.FunderBased)
                {
                    var allowedMedicalSchemes = cx.FunderSchemes.Where(y => y.FunderId == providerId).Select(x => x.SchemeId).ToList();
                    res1 = patientsWithFilter.Where(x => x.MedicalSchemeId.HasValue ? allowedMedicalSchemes.Contains(x.MedicalSchemeId.Value) : false).ToList();
                }
                else if (type == ListType.ClinicianBased)
                {
                    res1 = patientsWithFilter.Where(x => x.PatientProviders.Count(z => z.DischargeTimestamp == null && z.ProviderId == providerId && z.AccountId == accountId) > 0).ToList();
                }
                else if (type == ListType.CaseManagerBased)
                {
                    res1 = patientsWithFilter.Where(x => x.PatientProviders.Count(z => z.DischargeTimestamp == null && z.ProviderId == providerId) > 0).ToList();
                }
                else if (type == ListType.Administrator)
                {
                    res1 = patientsWithFilter.Where(x => x.PatientProviders.Count(z => z.DischargeTimestamp == null && z.ProviderId == providerId) > 0).ToList();
                }

                resultCount = res1.Count();
                if (!string.IsNullOrEmpty(search.PatientFilter))
                    res1 = res1.Where(p => p.FirstName.ToLower().Contains(search.PatientFilter) || p.LastName.ToLower().Contains(search.PatientFilter) || p.BirthDate.ToString().Contains(search.PatientFilter) || p.Gender.Name.ToLower().Contains(search.PatientFilter) || p.Race.Name.ToLower().Contains(search.PatientFilter) || string.Join(", ", p.Cases.SelectMany(c => c.PatientProviders).Select(cp => cp.Provider.Name).Distinct()).ToLower().Contains(search.PatientFilter) || p.MedicalScheme.Name.ToLower().Contains(search.PatientFilter) || p.LastUpdateTimestamp.ToString().Contains(search.PatientFilter)).ToList();
                if (!string.IsNullOrWhiteSpace(search.FirstName))
                    res1 = res1.Where(p => p.FirstName.ToLower().Contains(search.FirstName)).ToList();
                if (!string.IsNullOrWhiteSpace(search.LastName))
                    res1 = res1.Where(p => p.LastName.ToLower().Contains(search.LastName)).ToList();
                if (search.BirthDate.HasValue)
                    res1 = res1.Where(p => p.BirthDate.Value == search.BirthDate).ToList();
                if (!string.IsNullOrWhiteSpace(search.Providers))
                    res1 = res1.Where(p => string.Join(", ", p.Cases.SelectMany(c => c.PatientProviders).Select(cp => cp.Provider.Name).Distinct()).ToLower().Contains(search.Providers)).ToList();
                if (!string.IsNullOrWhiteSpace(search.MedicalScheme))
                    res1 = res1.Where(p => p.MedicalScheme != null && p.MedicalScheme.Name.ToLower().Contains(search.MedicalScheme)).ToList();
                if (!string.IsNullOrWhiteSpace(search.Race))
                    res1 = res1.Where(p => p.Race != null && p.Race.Name.ToLower().Contains(search.Race)).ToList();


                res1 = res1.GroupBy(elem => elem.PatientId).Select(group => group.FirstOrDefault()).ToList();
                resultFilteredCount = res1.Count();

                List<Data.Patient> res2;
                res2 = res1.OrderBy(x => x.LastName).ToList();

                return res2.Skip(start).Take(length).ToList().Select(p => new Models.Patient()
                {
                    FirstName = p.FirstName,
                    LastName = p.LastName,
                    BirthDate = p.BirthDate,
                    Gender = p.Gender != null ? p.Gender.Description : "",
                    Race = p.Race != null ? p.Race.Description : "",
                    MedicalScheme = p.MedicalScheme != null ? p.MedicalScheme.Description : "",
                    IDNumber = p.IDNumber,
                    LastUpdatedTimestamp = p.LastUpdateTimestamp,
                    GUID = p.PatientId,
                    ID = p.PatientId.ToString("N"),
                    Providers = string.Join(", ", p.PatientProviders.Select(cp => cp.Provider.Name).Distinct())
                }).ToList();
            });
            count = resultCount;
            filteredCount = resultFilteredCount;
            return result;
        }


        public UpdateResult RemoveScale(Guid PatientId, Guid ScaleId, Guid AccountId)
        {

            return Execute(context =>
            {

                IEnumerable<Data.PatientScale> patientScale = context.PatientScales.Where(x => x.ScaleId == ScaleId && x.PatientId == PatientId && x.Status.Name == "Active");

                Guid deleteId = context.ListItems.SingleOrDefault(x => x.Name == "Delete" && x.Parent.Name == "ChangeType").ListItemId;

                foreach (var entry in patientScale)
                {
                    entry.StatusId = deleteId;
                    entry.LastUpdatedTimestamp = DateTime.Now;
                }

                //context.PatientScales.RemoveRange(patientScale);


                //WriteAudit(context, AccountId);
                context.SaveChanges();

                return new UpdateResult(true);

            });

        }


        public UpdateResult AddScale(Guid PatientId, Guid ScaleId, Guid FrequencyId, Guid AccountId, Guid ProviderId)
        {

            return Execute(context =>
            {
                Guid activeId = context.ListItems.SingleOrDefault(x => x.Name == "Active" && x.Parent.Name == "Status").ListItemId;
                Data.PatientScale patientScale = new PatientScale()
                {
                    PatientId = PatientId,
                    FrequencyId = FrequencyId,
                    ScaleId = ScaleId,
                    CreatedTimestamp = DateTime.Now,
                    ProviderId = ProviderId,
                    AccountId = AccountId,
                    StatusId = activeId
                };

                context.PatientScales.Add(patientScale);
                context.SaveChanges();

                return new UpdateResult(true);

            });

        }


        public Dictionary<Guid, List<Models.Visit>> GetCompletedScalesWithoutStoredProcedure(Guid PatientId, Guid? scaleId = null, Guid? caseId = null, DateTime? FromDate = null, DateTime? ToDate = null)
        {

            NLogHelper.WriteEvent(NLog.LogLevel.Info, "GetCompletedScalesTest -->> started");

            return Execute(context =>
            {

                var allScores = context.Patients
                      .Single(p => p.PatientId == PatientId)
                      .Visits.Where(x => (ToDate.HasValue && FromDate.HasValue ? x.VisitDate >= FromDate.Value && x.VisitDate <= ToDate.Value : true) && (caseId.HasValue ? x.CaseId == caseId || !x.CaseId.HasValue : true))
                      .SelectMany(v => v.VisitScores);

                return allScores
                    .Select(vs => vs.Score.Parent.Parent)
                    .Distinct()
                    .Where(scale => !scaleId.HasValue || scale.ListItemId == scaleId)
                    .ToDictionary(
                    scale => scale.ListItemId,
                    scale =>
                    {
                        List<Models.Visit> result = new List<Models.Visit>();

                        Dictionary<Data.ListItem, int?> items = scale.Children.OrderBy(li => li.SortOrder).ToDictionary(li => li, li => default(int?));
                        var scaleScores = allScores.Where(vs => context.ListItems.Single(x => x.ListItemId == vs.Score.ParentId).ParentId == scale.ListItemId);

                        DateTime? startDate = null;
                        int visitCount = 0;
                        foreach (var visit in scaleScores.Select(vs => vs.Visit).Distinct().OrderBy(v => v.VisitDate))
                        {

                            if (!startDate.HasValue)
                            {
                                startDate = visit.VisitDate;
                                visitCount = 1;
                                foreach (var itemKey in items.Keys.ToList())
                                    items[itemKey] = null;
                            }
                            else
                                visitCount++;

                            bool complete = true;

                            foreach (var itemKey in items.Keys.ToList())
                            {
                                VisitScore itemScore = scaleScores.SingleOrDefault(sis => sis.Score.Parent == itemKey && sis.Visit == visit);
                                if (itemScore != null)
                                {
                                    if (!items[itemKey].HasValue || int.Parse(itemScore.Score.Value) < (items[itemKey] ?? 0))
                                        items[itemKey] = int.Parse(itemScore.Score.Value);
                                }
                                if (!items[itemKey].HasValue)
                                    complete = false;
                            }

                            if (complete)
                            {
                                // Log visit and restart
                                result.Add(new Models.Visit
                                {
                                    FirstVisitDate = startDate.Value,
                                    VisitDate = visit.VisitDate,
                                    VisitCount = visitCount,
                                    ScaleValues = items.Select(kvp => new ScaleItemScore(scale.ListItemId, kvp.Key.ListItemId, Guid.Empty, kvp.Value.Value)).ToList(),
                                    CaseGuid = visit.CaseId
                                });
                                startDate = null;
                            }

                        }

                        NLogHelper.WriteEvent(NLog.LogLevel.Info, "GetCompletedScalesTest -->> end");
                        return result;


                    });






            });
        }


        public List<SADFM.Data.Models.Scale> GetScaleByPatientId(Guid patentId)
        {
            return Execute(context =>
          {

              return context.Patients.SingleOrDefault(x => x.PatientId == patentId).PatientScales.Where(x => x.Status.Name == "Active").ToList().Select(x => (Models.Scale)x).ToList();

          });
        }




        public Models.Patient GetById(Guid patentId, string unreadMessageUserFilter = null, bool lightWeight = false)
        {
            return Execute(context =>
            {
                Models.Patient result = null;

                if (lightWeight)
                {

                    var data = context.Patients.Single(p => p.PatientId == patentId);
                    result = new Models.Patient()
                    {
                        GUID = data.PatientId,
                        ID = Models.BaseModel.EncryptId(data.PatientId),
                        FirstName = data.FirstName,
                        LastName = data.LastName,
                        BirthDate = data.BirthDate,
                        GenderID = data.GenderId != null ? Models.BaseModel.EncryptId(data.GenderId) : null,
                        Gender = data.Gender != null ? data.Gender.Description : null,
                        RaceID = data.RaceId != null ? Models.BaseModel.EncryptId(data.RaceId) : null,
                        Race = data.Race != null ? data.Race.Description : null,
                        IDNumber = data.IDNumber,
                        MedicalSchemeID = data.MedicalSchemeId != null ? Models.BaseModel.EncryptId(data.MedicalSchemeId) : null,
                        MedicalScheme = data.MedicalScheme != null ? data.MedicalScheme.Name : null,
                        ContactNumber = data.ContactNumber,
                        Street = data.Street,
                        CityId = Data.Models.BaseModel.EncryptId(data.CityId),
                        ProvinceId = Data.Models.BaseModel.EncryptId(data.ProvinceId),
                        City = data.CityId == null ? "" : data.City.Description,
                        Province = data.ProvinceId == null ? "" : data.Province.Description,
                        PostalCode = data.PostalCode,
                        NextOfKinName = data.NextOfKinName,
                        NextOfKinContact = data.NextOfKinContact,
                        NextOfKinEmail = data.NextOfKinEmail,
                        NextOfKinRelationship = data.NextOfKinRelationship,
                        MedicalSchemeNo = data.MedicalSchemeMembershipNumber,
                        LastUpdatedTimestamp = data.LastUpdateTimestamp,
                        LastUpdateUsername = string.Format("{0} {1}", data.LastUpdatedAccount.FirstName, data.LastUpdatedAccount.LastName),
                        CountryID = Data.Models.BaseModel.EncryptId(data.CountryId),
                        Country = data.Country != null ? data.Country.Description : null,
                        TitleId = Data.Models.BaseModel.EncryptId(data.TitleId),
                        Title = data.Title == null ? null : data.Title.Description,
                        Messages = data.Messages.ToList().Select(m => (Models.Message)m).ToList(),
                        Avatar = data.Avatar != null ? string.Format("data:image/png;base64,{0}", Convert.ToBase64String(data.Avatar)) : "/Content/images/nopatient.png",
                        ResidentialEnvironment = data.ResidentialEnviroment != null ? data.ResidentialEnviroment.Description : "",
                        AdmitFrom = data.AdmitFrom != null ? data.AdmitFrom.Description : "",
                        DischargeTo = data.DischargeTo != null ? data.DischargeTo.Description : "",
                        AdmitFromID = data.AdmitFrom != null ? Data.Models.BaseModel.EncryptId(data.AdmitFromId) : "",
                        DischargeToID = data.DischargeTo != null ? Data.Models.BaseModel.EncryptId(data.DischargeToId) : "",
                        ResidentialEnvironmentID = data.ResidentialEnviroment != null ? Data.Models.BaseModel.EncryptId(data.ResidentialEnvironmentId) : "",
                        SupportServices = data.PatientSupportServices.Select(x => new SupportService()
                        {
                            Name = x.ListItem.Description,
                            Note = x.Note,
                            SupportServiceId = x.SupportServiceId
                        }).ToList()
                    };
                }
                else
                {
                    result = (Models.Patient)context.Patients.Single(p => p.PatientId == patentId);
                }
                if (unreadMessageUserFilter != null)
                    result.SetUnreadMessageCount(unreadMessageUserFilter);
                return result;
            });
        }

        public Guid? PatientExist(string IdNumber)
        {
            return Execute(context =>
            {
                Data.Patient patient = context.Patients.FirstOrDefault(p => p.IDNumber == IdNumber);
                Guid? result = patient != null ? patient.PatientId : (Guid?)null;
                return result;
            });
        }

        public List<Data.Models.Visit> GetLast50(Guid patientId)
        {
            return Execute(context =>
           {
               return context.Visits.Where(x => x.PatientId == patientId).OrderByDescending(x => x.VisitDate).Take(50).ToList().Select(c => (Models.Visit)c).ToList();
           });
        }

        public UpdateResult AddVisit(Data.Models.Visit visit, Guid accountId)
        {
            return Execute(context =>
            {
                Guid patientId = visit.PatientGUID;
                DateTime visitDate = Convert.ToDateTime(visit.StartDate);
                Data.Visit oldvisit = context.Visits.Where(v => v.PatientId == patientId).OrderByDescending(v => v.VisitDate).FirstOrDefault();
                if (oldvisit != null)
                    if (visitDate < oldvisit.VisitDate)
                        return new UpdateResult("Visits before {0:dd MMM yyyy, HH:mm} cannot be entered", oldvisit.VisitDate)
                        {
                            Type = UpdateResult.ResultType.Fail
                        };

                Data.Visit visitObject = new Data.Visit()
                {
                    PatientId = patientId,
                    VisitDate = visitDate,
                    VisitDuration = visit.Duration,
                    VisitNotes = visit.Notes,
                    ExtraNote = visit.ExtraNotes,
                    VisitId = Guid.NewGuid(),
                    AccountId = accountId,
                    Temperature = visit.TemperatureString == null ? (double?)null : float.Parse(visit.TemperatureString.Replace(",", System.Globalization.CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator).Replace(".", System.Globalization.CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator)),
                    BloodPressureDiastolic = visit.BloodPressureDiastolic,
                    BloodPressureSystolic = visit.BloodPressureSystolic,
                    Glucose = visit.GlucoseString == null ? (double?)null : float.Parse(visit.GlucoseString.Replace(",", System.Globalization.CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator).Replace(".", System.Globalization.CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator)),
                    HeartRate = visit.HeartRate,
                    PulseOximetry = visit.PulseOximetry,
                    HeartRateRegular = visit.HeartRateRegular,
                    RespiratoryRateRegular = visit.RespiratoryRateRegular,
                    SupplementaryOxygen = visit.PulseOximetryRegular,
                    HeartRateNote = visit.HeartRateNote,
                    RespiratoryRate = visit.RespiratoryRate,
                    RespiratoryRateNote = visit.RespiratoryRateNote,
                    SupplementaryOxygenNote = visit.PulseOximetryNote,
                    IsPrivate = visit.IsPrivate

                };

                if (visit.VisitAttachments != null)
                {
                    visitObject.VisitAttachments = visit.VisitAttachments.Select(x => new Data.VisitAttachment()
                    {

                        Data = Convert.FromBase64String(x.Data),
                        MimeType = x.MimeType,
                        Name = x.Name,
                        VisitId = visitObject.VisitId,
                        VisitAttachmentId = Guid.NewGuid()

                    }).ToList();
                }

                if (visit.CaseID != null)
                {

                    visitObject.CaseId = Models.BaseModel.DecryptNullableId(visit.CaseID);
                    var tempCase = context.Cases.Single(x => x.CaseId == visitObject.CaseId.Value);


                    if (visit.ICD10 != null)
                    {
                        string ICD10 = visit.ICD10.Split(' ')[0];
                        SADFM.Data.Models.ListItem icd10_ListItem = SADFM.Data.DataAccess.ListItem.GetList("ICD10", filter: li => li.Name == ICD10).FirstOrDefault();
                        tempCase.ICD10Id = icd10_ListItem.GUID;
                    }

                }

                if (visit.DischargeDate.HasValue)
                {


                    IQueryable<PatientProvider> patientProviders = context.PatientProviders.Where(cp => cp.Account.AccountId == accountId && cp.Case.PatientId == patientId && !cp.DischargeTimestamp.HasValue).OrderByDescending(cp => cp.AssignedTimestamp);

                    if (visitObject.CaseId.HasValue)
                    {
                        patientProviders = patientProviders.Where(cp => cp.CaseId == visitObject.CaseId.Value);


                    }
                    else if (patientProviders.Count() != 1 && !visit.AllCases)
                    {

                        return new UpdateResult(false)
                        {
                            Message = "Please select a case.",
                            Type = UpdateResult.ResultType.Success
                        };

                    }


                    foreach (var cp in patientProviders)
                    {
                        cp.DischargeTimestamp = visit.DischargeDate;

                        if (cp.Case.PatientProviders.Count(x => !x.DischargeTimestamp.HasValue) == 0)
                        {
                            cp.Case.EndDate = visit.DischargeDate;

                            if (!cp.Case.ImpairmentGroupId.HasValue && visit.ImpairmentGroupId == null)
                            {
                                return new UpdateResult(false)
                                {
                                    Message = "Impairment group is required.",
                                    Type = UpdateResult.ResultType.Fail
                                };
                            }

                            cp.Case.ImpairmentGroupId = Models.BaseModel.DecryptNullableId(visit.ImpairmentGroupId);

                        }
                    }


                }

                context.Visits.Add(visitObject);

                if (visit.ScalesValuesIds != null)
                {
                    foreach (string val in visit.ScalesValuesIds)
                    {
                        VisitScore visitScore = new VisitScore()
                        {
                            VisitId = visitObject.VisitId,
                            ScoreId = BaseModel.DecryptId(val),
                            VisitScoreId = Guid.NewGuid()
                        };
                        context.VisitScores.Add(visitScore);
                    }

                }

                Data.Patient patient = context.Patients.Single(x => x.PatientId == visit.PatientGUID);
                patient.LastUpdateTimestamp = DateTime.Now;
                patient.LastUpdateAccountId = accountId;


                WriteAudit(context, accountId);

                context.SaveChanges();

                return new UpdateResult(true);

            });

        }

        public UpdateResult AddPatientProvider(Data.Models.PatientProvider model, Guid accountId, out bool hasClosedCase, out Guid? caseId)
        {
            bool tempHasClosedCase = false;
            Guid? tempCaseId = null;

            var result = Execute(context =>
            {


                if (model.PatientProviderID == null)
                {

                    Data.PatientProvider patientProvider = new PatientProvider()
                    {

                        AssignedTimestamp = model.AssignedTimestamp,
                        CaseId = Data.Models.BaseModel.DecryptNullableId(model.CaseId),
                        PatientProviderId = Guid.NewGuid(),
                        CreatedTimestamp = DateTime.Now,
                        DischargeTimestamp = model.DischargedTimestamp.HasValue ? model.DischargedTimestamp.Value : (DateTime?)null,
                        LastUpdateAccountId = accountId,
                        LastUpdateTimestamp = DateTime.Now,
                        ProviderId = Data.Models.BaseModel.DecryptId(model.ProviderId),
                        AccountId = BaseModel.DecryptId(model.AccountID),
                        PatientId = BaseModel.DecryptId(model.PatientId)

                    };

                    context.PatientProviders.Add(patientProvider);

                    WriteAudit(context, accountId);

                    context.SaveChanges();
                }
                else
                {
                    Guid patientProviderId = Data.Models.BaseModel.DecryptId(model.PatientProviderID);
                    Data.PatientProvider patientProvider = context.PatientProviders.Single(x => x.PatientProviderId == patientProviderId);

                    if (model.DischargedTimestamp.HasValue && patientProvider.Case != null)
                    {
                        if (patientProvider.Case.PatientProviders.Count(x => !x.DischargeTimestamp.HasValue && x.PatientProviderId != patientProviderId) == 0)
                        {

                            if (patientProvider.Case.ICD10.Name == "Unknown")
                            {
                                throw new ApplicationException("Cannot discharge patient with Unknown ICD10.  Ensure that this patient case has an Impairment Group before entering a discharge date");
                            }

                            if (patientProvider.Case.ImpairmentGroup == null)
                            {
                                throw new ApplicationException("Cannot discharge patient with no impairment group.  Ensure that this patient case has an Impairment Group before entering a discharge date");
                            }


                            patientProvider.Case.EndDate = model.DischargedTimestamp;
                            tempHasClosedCase = true;
                            tempCaseId = patientProvider.CaseId;
                        }
                    }



                    patientProvider.AssignedTimestamp = model.AssignedTimestamp;
                    patientProvider.DischargeTimestamp = model.DischargedTimestamp;
                    patientProvider.LastUpdateAccountId = accountId;
                    patientProvider.LastUpdateTimestamp = DateTime.Now;


                    WriteAudit(context, accountId);

                    context.SaveChanges();
                }

                return new UpdateResult(true);

            });

            hasClosedCase = tempHasClosedCase;
            caseId = tempCaseId;

            return result;

        }

        public UpdateResult AddPatientProviders(Data.Models.PatientProvider[] model, Guid accountId)
        {
            return Execute(context =>
            {

                foreach (var cp in model)
                {


                    Data.PatientProvider patientProvider = new PatientProvider()
                    {

                        AssignedTimestamp = cp.AssignedTimestamp,
                        CaseId = string.IsNullOrWhiteSpace(cp.CaseId) ? (Guid?)null : Data.Models.BaseModel.DecryptId(cp.CaseId),
                        PatientProviderId = Guid.NewGuid(),
                        CreatedTimestamp = DateTime.Now,
                        DischargeTimestamp = cp.DischargedTimestamp.HasValue ? cp.DischargedTimestamp.Value : (DateTime?)null,
                        LastUpdateAccountId = accountId,
                        LastUpdateTimestamp = DateTime.Now,
                        ProviderId = Data.Models.BaseModel.DecryptId(cp.ProviderId),
                        AccountId = BaseModel.DecryptId(cp.AccountID),
                        PatientId = BaseModel.DecryptId(cp.PatientId)

                    };

                    context.PatientProviders.Add(patientProvider);
                }




                WriteAudit(context, accountId);

                context.SaveChanges();

                return new UpdateResult(true);

            });

        }


        public UpdateResult UpdatePatientImage(Guid patientId, string profileImage)
        {
            return Execute(context =>
            {
                Data.Patient currentPatient = context.Patients.FirstOrDefault(x => x.PatientId == patientId);
                currentPatient.Avatar = Convert.FromBase64String(profileImage);


                Data.Patient patient = context.Patients.Single(x => x.PatientId == patientId);
                patient.LastUpdateTimestamp = DateTime.Now;

                context.SaveChanges();

                return new UpdateResult(true);

            });
        }


        public List<Models.Case> GetAllCases(DateTime startDate, DateTime endDate, Guid? FunderId)
        {
            return Execute(context =>
            {
                return context.Cases.Where(x => x.StartDate >= startDate && (x.EndDate == null || x.EndDate <= endDate) && context.FunderSchemes.Count(y => y.SchemeId == x.Patient.MedicalSchemeId && y.FunderId == FunderId) > 0).ToList().Select(c => new Models.Case(c)).ToList();
            });
        }

        public List<Models.Case> GetCasesView(Guid patientId, string username = null)
        {
            return Execute(context =>
            {
                var tempCase = context.PatientProviders.Where(cp => cp.Account.Username == username && cp.Case.PatientId == patientId && !cp.DischargeTimestamp.HasValue).OrderByDescending(cp => cp.AssignedTimestamp).FirstOrDefault();

                return context.Cases.Where(c => c.PatientId == patientId && (username != null ? c.PatientProviders.Count(cp => cp.Account.Username == username) > 0 : true)).ToList().Select(c => new Models.Case()
                {
                    CaseId = BaseModel.EncryptId(c.CaseId),
                    ICD10 = c.ICD10 != null ? c.ICD10.Name : null,
                    ICD10Description = c.ICD10.Description,
                    isActive = tempCase != null ? c.CaseId == tempCase.CaseId : false,
                    ImpairmenGroup = c.ImpairmentGroupId != null ? string.Format("{0}.{1} - {2} - {3}", c.ImpairmentGroup.Parent.Value, c.ImpairmentGroup.Value, c.ImpairmentGroup.Parent.Name, c.ImpairmentGroup.Name) : "",
                    ImpairmentGroupId = BaseModel.EncryptId(c.ImpairmentGroupId)


                }).ToList();
            });
        }

        public List<Models.Case> GetCases(Guid patientId, string username = null)
        {
            return Execute(context =>
            {
                return context.Cases.Where(c => c.PatientId == patientId && (username != null ? c.PatientProviders.Count(cp => cp.Account.Username == username) > 0 : true)).ToList().Select(c => new Models.Case(c)).ToList();
            });
        }

        public List<Models.Visit> GetVisits(Guid patientId, Guid accountId)
        {
            return Execute(context =>
            {
                var visits = context.Visits.Where(c => c.PatientId == patientId).ToList();

                //var result = visits.Where(c => c.IsPrivate.HasValue ? (c.IsPrivate.Value ? c.AccountId == accountId : true) : true).ToList();

                return visits.Select(c => (Models.Visit)c).ToList();
            });
        }

        public Models.Visit GetVisitById(Guid VisitId)
        {
            return Execute(context =>
            {
                return (Models.Visit)context.Visits.Single(p => p.VisitId == VisitId);
            });
        }


        public Models.Case GetCaseById(Guid CaseId, bool loadPatient = false, bool compressScales = false)
        {
            return Execute(context =>
            {
                var @case = context.Cases.Single(p => p.CaseId == CaseId);
                return new Models.Case(@case, loadPatient, compressScales);
            });
        }
        public Models.VisitsAndScores GetVisitsAndScores(Guid patientId, Guid scaleId)
        {
            return Execute(context =>
            {
                var dbResult = context.Database.SqlQuery<Visit>("GetVisitsAndScores @p0, @p1", new SqlParameter("p0", patientId), new SqlParameter("p1", scaleId));

                Models.VisitsAndScores result = new Models.VisitsAndScores();
                dbResult.ToList().ForEach(vs =>
                {
                    if (!result.Items.ContainsKey(vs.ItemId))
                        result.Items.Add(vs.ItemId, vs.ItemName);
                    result.Scores.Add(new Models.VisitsAndScores.Score { ItemId = vs.ItemId, VisitDate = vs.VisitDate, ItemScore = vs.Score });
                });
                return result;
            });
        }

        public List<Models.Score> GetScores(Guid visitId)
        {
            return Execute(context =>
            {
                return context.VisitScores.Where(c => c.VisitId == visitId).ToList().Select(c => new Models.Score()
                {
                    ScoreID = c.ScoreId,
                    VisitID = c.VisitId
                }).ToList();
            });
        }

        public List<SADFM.Data.Models.Scale> GetScoresForVisit(Guid visitId)
        {
            return Execute(context =>
            {

                return context.VisitScores.Where(x => x.Score.Parent.Parent.Parent.Name == "Scale").Where(c => c.VisitId == visitId).Select(x => x.ScoreId).Distinct().Select(x => context.ListItems.FirstOrDefault(y => y.ListItemId == x).Parent.Parent).ToList().Select(x => new SADFM.Data.Models.Scale()
                {
                    ScaleName = x.Name,
                    Description = x.Description,
                    IsOverdue = false,
                    ScaleID = SADFM.Data.Models.BaseModel.EncryptId(x.ListItemId)

                }).ToList().GroupBy(x => x.ScaleName).Select(x => x.FirstOrDefault()).ToList();
            });
        }

        /// <summary>
        /// Returns a collapsed view of completed scales
        /// </summary>
        /// <param name="patientId">PatientId to search for</param>
        /// <returns>Dictionary with ScaleId as the key and the associated colapsed visits as value</returns>
        public Dictionary<Guid, List<Models.Visit>> GetCompletedScales(Guid patientId, Guid? scaleId = null)
        {


            return Execute(context =>
            {
                // System.Diagnostics.Debug.WriteLine(patientId);
                var dbResult = context.Database.SqlQuery<Models.CompletedScaleValues>("GetCompletedScales @p0", new SqlParameter("p0", patientId));
                Dictionary<Guid, List<Models.Visit>> result = new Dictionary<Guid, List<Models.Visit>>();
                foreach (Models.CompletedScaleValues visit in dbResult)
                {
                    if (scaleId.HasValue && visit.ScaleId != scaleId)
                        continue;
                    if (!result.ContainsKey(visit.ScaleId))
                        result.Add(visit.ScaleId, new List<Models.Visit>());
                    Models.Visit newVisit = result[visit.ScaleId].SingleOrDefault(v => v.VisitDate == visit.VisitDate);
                    if (newVisit == null)
                    {
                        newVisit = new Models.Visit
                        {
                            FirstVisitDate = visit.FirstVisitDate,
                            VisitDate = visit.VisitDate,
                            VisitCount = visit.VisitCount,
                            ScaleValues = new List<ScaleItemScore>()
                        };
                        result[visit.ScaleId].Add(newVisit);
                    }
                    newVisit.ScaleValues.Add(new ScaleItemScore(visit.ScaleId, visit.ScaleItemId, Guid.Empty, visit.Value));
                }

                if (scaleId.HasValue && result.Count == 0)
                    result.Add(scaleId.Value, new List<Models.Visit>());

                return result;

            });


        }


        internal List<Guid> GetOverdueScales(Guid patientId)
        {
            return Execute(context =>
            {

                List<Guid> result = new List<Guid>();
                Dictionary<Guid, List<Models.Visit>> completed = GetCompletedScales(patientId);

                var allPatientScales = context
                    .Patients
                    .Single(p => p.PatientId == patientId)
                    .PatientScales.Where(x => x.Status.Name == "Active")
                    .Select(cs => new { ScaleId = cs.ScaleId, FrequencyId = cs.FrequencyId, Days = int.Parse(cs.Frequency.Value) })
                    .Distinct().ToList();

                for (int i = allPatientScales.Count - 1; i >= 0; i--)
                {
                    if (allPatientScales.Count(s => s.ScaleId == allPatientScales[i].ScaleId && s.Days < allPatientScales[i].Days) > 0)
                        allPatientScales.RemoveAt(i);
                }

                allPatientScales.ForEach(ps =>
                {
                    if (!completed.ContainsKey(ps.ScaleId))
                        result.Add(ps.ScaleId);
                    else
                    {
                        List<Models.Visit> visits = completed[ps.ScaleId];
                        if (visits.Count != 0)
                        {
                            DateTime lastVisit = visits.Max(v => v.VisitDate);
                            if ((DateTime.Today - lastVisit).TotalDays > ps.Days)
                                result.Add(ps.ScaleId);
                        }
                        else
                            result.Add(ps.ScaleId);

                    }
                });

                return result;

            });
        }

        public Dictionary<Guid, List<Models.Visit>> GetAllVisits(Guid patientId, Guid? scaleId)
        {
            return Execute(context =>
            {
                var allScores = context.Patients
                        .Single(p => p.PatientId == patientId)
                        .Visits
                        .SelectMany(v => v.VisitScores);
                return allScores
                    .Select(vs => vs.Score.Parent.Parent)
                    .Distinct()
                    .Where(scale => !scaleId.HasValue || scale.ListItemId == scaleId)
                    .ToDictionary(
                    scale => scale.ListItemId,
                    scale =>
                    {
                        List<Models.Visit> result = new List<Models.Visit>();

                        Dictionary<Data.ListItem, int?> items = scale.Children.OrderBy(li => li.SortOrder).ToDictionary(li => li, li => default(int?));
                        var scaleScores = allScores.Where(vs => vs.Score.Parent.ParentId == scale.ListItemId);

                        foreach (var visit in scaleScores.Select(vs => vs.Visit).Distinct().OrderBy(v => v.VisitDate))
                        {

                            foreach (var itemKey in items.Keys.ToList())
                                items[itemKey] = null;

                            foreach (var itemKey in items.Keys.ToList())
                            {
                                VisitScore itemScore = scaleScores.SingleOrDefault(sis => sis.Score.Parent == itemKey && sis.Visit == visit);
                                if (itemScore != null)
                                    items[itemKey] = int.Parse(itemScore.Score.Value);
                            }

                            result.Add(new Models.Visit
                            {
                                VisitDate = visit.VisitDate,
                                ScaleValues = items.Select(kvp => new ScaleItemScore(scale.ListItemId, kvp.Key.ListItemId, Guid.Empty, kvp.Value ?? 0)).ToList(),
                                Notes = visit.VisitNotes,
                                IsPrivate = visit.IsPrivate.HasValue ? visit.IsPrivate.Value : false
                            });

                        }

                        return result;
                    });
            });
        }



        public List<Data.Models.Visit> GetAllVisits(DateTime startDate, DateTime endDate, Guid? FunderId)
        {
            return Execute(context =>
            {
                endDate = endDate.AddDays(1);
                return context.Visits.Where(x => x.VisitDate >= startDate && x.VisitDate <= endDate && context.FunderSchemes.Count(y => y.SchemeId == x.Patient.MedicalSchemeId && y.FunderId == FunderId) > 0).ToList().Select(x => (Data.Models.Visit)x).ToList();
            });
        }


        public List<Scale> GetAllScales(Guid patientId)
        {
            return Execute(context =>
            {
                List<Scale> result = context.Visits.Where(v => v.PatientId == patientId).SelectMany(v => v.VisitScores.Where(x => x.Score.Parent.Parent.Parent.Name == "Scale")).Select(vs => vs.Score.Parent.Parent)
                    .Select(li => new
                    {
                        ListItemId = li.ListItemId,
                        Description = li.Description
                    })
                    .Distinct().ToList()
                    .Select(li => new Scale
                    {
                        ScaleID = BaseModel.EncryptId(li.ListItemId),
                        Description = li.Description
                    }).ToList();

                if (context.Visits.Where(v => v.PatientId == patientId).Count(v => v.BloodPressureDiastolic.HasValue || v.Temperature.HasValue || v.RespiratoryRate.HasValue || v.PulseOximetry.HasValue || v.Glucose.HasValue) > 0)
                    result.Add(VitalSignScale);
                return result;
            });
        }

        public List<Scale> GetScalesForVisit(Guid patientId)
        {
            List<SADFM.Data.Models.Scale> scales = new List<Scale>();

            Execute(cx =>
            {
                var data = cx.Patients.Single(p => p.PatientId == patientId);


                scales = data.PatientScales.Where(x => x.Status.Name == "Active").Select(x => (Models.Scale)x).ToList();

                scales = scales.OrderBy(s => s.SortOrder).ToList();
                List<Guid> overdueScales = DataAccess.Patient.GetOverdueScales(data.PatientId);
                scales.ForEach(s =>
                {
                    s.IsOverdue = (overdueScales.Contains(s.GetScaleId()));
                });

                return true;
            });

            return scales;
        }


        public Scale GetScaleById(Guid patientId, Guid patientScaleId)
        {
            SADFM.Data.Models.Scale scale;

            return Execute(cx =>
            {
                var data = cx.Patients.Single(p => p.PatientId == patientId);


                scale = (Models.Scale)data.PatientScales.SingleOrDefault(x => x.PatientScaleId == patientScaleId && x.Status.Name == "Active");

                return scale;
            });

        }

        public Models.Case GetActiveCase(Guid patientId, string username)
        {
            return Execute(cx =>
            {
                var tempPatientProvider = cx.PatientProviders.Where(cp => cp.Account.Username == username && cp.Case.PatientId == patientId && !cp.DischargeTimestamp.HasValue).OrderByDescending(cp => cp.AssignedTimestamp).FirstOrDefault();

                if (tempPatientProvider == null)
                {
                    return null;
                }

                var tempCase = tempPatientProvider.Case;
                return (new Models.Case(tempCase));
            });
        }

        public List<CarePlan> GetCarePlans(Guid patientId)
        {

            return Execute(context =>
            {

                var scales = context.Patients.SingleOrDefault(x => x.PatientId == patientId).PatientScales.Where(x => x.Status.Name == "Active");//.ToList().Select(x => (Models.Scale)x).ToList();
                return scales.ToList().Select(x =>
                    new CarePlan()
                    {
                        Name = x.Scale.Description,
                        Frequency = x.Frequency.Description,
                        Value = x.Frequency.Value,
                        ScaleId = BaseModel.EncryptId(x.ScaleId)
                    }).ToList();

            });

            /*

            List<CarePlan> carePlans = DataAccess.Patient.GetScaleByPatientId(model.GetId()).Select(x =>
            {
                return new CarePlan()
                {
                    Name = x.Description,
                    Frequency = x.Frequency,
                    Value = DataAccess.ListItem.GetById(SADFM.Data.Models.BaseModel.DecryptId(x.FrequencyID)).Value,
                    ScaleId = x.ScaleID
                };
            }).ToList();*/


        }
    }
}
