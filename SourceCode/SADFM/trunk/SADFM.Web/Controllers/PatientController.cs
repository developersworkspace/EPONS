
using EPONS.Teddy.Client.Configuration;
using OpenServices.Web.Attributes;
using SADFM.Data;
using SADFM.Data.Models;
using SADFM.Web.Filters;
using SADFM.Web.Shared;
using SADFM.Web.ViewModels;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace SADFM.Web.Controllers
{

    [Log]
    public class PatientController : Controller
    {
        EPONS.Teddy.Client.PatientService _patientService;

        public PatientController()
        {
            SADFMSection config = ConfigurationManager.GetSection("SADFM") as SADFMSection;
            _patientService = new EPONS.Teddy.Client.PatientService(config.ApiEndpoint, config.ApiKey);
        }

        //
        // GET: /Patients/
        [Secured]
        public ActionResult PatientList()
        {
            var account = UserHelper.GetCurrentAccount();

            if (account.AccountType == "SuperAdmin")
            {
                return View();
            }

            //Removed as of trackit item http://trackit.returntrue.co.za/Issues/IssueDetail.aspx?id=28699
            //if (!(account.Permissions.FirstOrDefault(x => x.PermissionDescription == "Clinician") != null))
            //{
            //   return Redirect("/");
            //}

            return View();
        }

        [Secured]
        public ActionResult DischargedPatientList()
        {
            var account = UserHelper.GetCurrentAccount();

            if (account.AccountType == "SuperAdmin")
            {
                return View();
            }

            //Removed as of trackit item http://trackit.returntrue.co.za/Issues/IssueDetail.aspx?id=28699
            //if (!(account.Permissions.FirstOrDefault(x => x.PermissionDescription == "Clinician") != null))
            //{
            //   return Redirect("/");
            //}

            return View();
        }

        [Secured]
        public ActionResult DeceasedPatientList()
        {
            var account = UserHelper.GetCurrentAccount();

            if (account.AccountType == "SuperAdmin")
            {
                return View();
            }

            //Removed as of trackit item http://trackit.returntrue.co.za/Issues/IssueDetail.aspx?id=28699
            //if (!(account.Permissions.FirstOrDefault(x => x.PermissionDescription == "Clinician") != null))
            //{
            //   return Redirect("/");
            //}

            return View();
        }



        public ActionResult ProgressReport(string id)
        {

            return View();
        }

        public ActionResult DownloadProgressReport(string id)
        {

            return File(Server.MapPath(string.Format("\\App_Data\\patientprogressreports\\{0}.pdf", Request.QueryString["id"])), "application/pdf");
        }


        [Secured]
        public ContentResult GetProvinces(string CountryId)
        {
            if (CountryId.Equals("null"))
            {
                return Content(null);
            }

            MvcHtmlString combobox = SADFM.Web.Shared.HtmlHelper.DropdownBox(SADFM.Data.DataAccess.ListItem.GetListByParentId(BaseModel.DecryptId(CountryId), deep: false), "ProvinceID", l => l.ID, l => l.Description, "chosen-select", dataPlaceholder: "Province");
            return Content(combobox.ToHtmlString());

        }

        [HttpGet]
        [Secured]
        public ActionResult Scale(Guid PatientScaleId, Guid PatientId)
        {
            return View(Data.DataAccess.Patient.GetScaleById(PatientId, PatientScaleId));

        }

        [Secured]
        public ContentResult GetCities(string ProvinceId)
        {
            if (ProvinceId.Equals(""))
            {
                return Content("");
            }
            MvcHtmlString combobox = SADFM.Web.Shared.HtmlHelper.DropdownBox(SADFM.Data.DataAccess.ListItem.GetListByParentId(BaseModel.DecryptId(ProvinceId), deep: false), "CityID", l => l.ID, l => l.Description, "chosen-select", dataPlaceholder: "City");
            return Content(combobox.ToHtmlString());

        }

        [Secured]
        public JsonResult List()
        {

            Utilities.DataTableRequest dataTableRequest = Utilities.DataTableRequest.Parse(Request.Form);
            int count;
            Data.Models.Account act = UserHelper.GetCurrentAccount();

            string query = dataTableRequest.search;

            var result = _patientService.ListActivePatients(act.Username, out count, (dataTableRequest.start / dataTableRequest.length) + 1, dataTableRequest.length, query, "Firstname", true);

            dataTableRequest.OverrideSearch = true;
            dataTableRequest.OverrideCount = count;
            dataTableRequest.OverrideFilteredCount = count;
            return Json(
                Utilities.DataTableJson(
                dataTableRequest,
                result.Select(x => new
                {
                    FirstName = x.Firstname,
                    LastName = x.Lastname,
                    BirthDate = x.DateOfBirth.HasValue ? string.Format("{0} ({1})", x.DateOfBirth.Value.ToString("dd MMM yyyy"), Convert.ToInt32(DateTime.Now.Subtract(x.DateOfBirth.Value).TotalDays / 365)) : string.Empty,
                    Gender = x.Gender == null ? string.Empty : x.Gender.Name,
                    Race = x.Race == null ? string.Empty : x.Race.Name,
                    MedicalScheme = x.MedicalScheme == null ? string.Empty : x.MedicalScheme.Name,
                    IDNumber = x.Details == null ? string.Empty : x.Details.IdentificationNumber,
                    GenderID = x.Gender == null ? string.Empty : x.Gender.Id.ToString(),
                    RaceID = x.Race == null ? string.Empty : x.Race.Id.ToString(),
                    Age = string.Empty,
                    ID = x.Id,
                    PatientId = x.Id.ToString("N"),
                    Providers = string.Join(", ", x.TeamMembers.GroupBy(y => y.Facility.Id).Select(y => y.First().Facility.Name))
                }).ToList(),
                null,
                 x => x.FirstName, x => x.LastName, x => x.BirthDate, x => x.Gender, x => x.Race, x => x.Providers, x => x.MedicalScheme, x => x.ID, x => x.Age, x => x.GenderID, x => x.RaceID, x => x.PatientId));

        }


        [Secured]
        public JsonResult DischargedList()
        {

            Utilities.DataTableRequest dataTableRequest = Utilities.DataTableRequest.Parse(Request.Form);
            int count;
            Data.Models.Account act = UserHelper.GetCurrentAccount();

            string query = dataTableRequest.search;

            var result = _patientService.ListDischargedPatients(act.Username, out count, (dataTableRequest.start / dataTableRequest.length) + 1, dataTableRequest.length, query, "Firstname", true);

            dataTableRequest.OverrideSearch = true;
            dataTableRequest.OverrideCount = count;
            dataTableRequest.OverrideFilteredCount = count;
            return Json(
                Utilities.DataTableJson(
                dataTableRequest,
                result.Select(x => new
                {
                    FirstName = x.Firstname,
                    LastName = x.Lastname,
                    BirthDate = x.DateOfBirth.HasValue ? string.Format("{0} ({1})", x.DateOfBirth.Value.ToString("dd MMM yyyy"), Convert.ToInt32(DateTime.Now.Subtract(x.DateOfBirth.Value).TotalDays / 365)) : string.Empty,
                    Gender = x.Gender == null ? string.Empty : x.Gender.Name,
                    Race = x.Race == null ? string.Empty : x.Race.Name,
                    MedicalScheme = x.MedicalScheme == null ? string.Empty : x.MedicalScheme.Name,
                    IDNumber = x.Details == null ? string.Empty : x.Details.IdentificationNumber,
                    GenderID = x.Gender == null ? string.Empty : x.Gender.Id.ToString(),
                    RaceID = x.Race == null ? string.Empty : x.Race.Id.ToString(),
                    Age = string.Empty,
                    ID = x.Id,
                    PatientId = x.Id.ToString("N"),
                    Providers = string.Join(", ", x.TeamMembers.GroupBy(y => y.Facility.Id).Select(y => y.First().Facility.Name))
                }).ToList(),
                null,
                 x => x.FirstName, x => x.LastName, x => x.BirthDate, x => x.Gender, x => x.Race, x => x.Providers, x => x.MedicalScheme, x => x.ID, x => x.Age, x => x.GenderID, x => x.RaceID, x => x.PatientId));

        }


        [Secured]
        public JsonResult DeceasedList()
        {

            Utilities.DataTableRequest dataTableRequest = Utilities.DataTableRequest.Parse(Request.Form);
            int count;
            Data.Models.Account act = UserHelper.GetCurrentAccount();

            string query = dataTableRequest.search;

            var result = _patientService.ListDeceasedPatients(act.Username, out count, (dataTableRequest.start / dataTableRequest.length) + 1, dataTableRequest.length, query, "Firstname", true);

            dataTableRequest.OverrideSearch = true;
            dataTableRequest.OverrideCount = count;
            dataTableRequest.OverrideFilteredCount = count;
            return Json(
                Utilities.DataTableJson(
                dataTableRequest,
                result.Select(x => new
                {
                    FirstName = x.Firstname,
                    LastName = x.Lastname,
                    BirthDate = x.DateOfBirth.HasValue ? string.Format("{0} ({1})", x.DateOfBirth.Value.ToString("dd MMM yyyy"), Convert.ToInt32(DateTime.Now.Subtract(x.DateOfBirth.Value).TotalDays / 365)) : string.Empty,
                    Gender = x.Gender == null ? string.Empty : x.Gender.Name,
                    Race = x.Race == null ? string.Empty : x.Race.Name,
                    MedicalScheme = x.MedicalScheme == null ? string.Empty : x.MedicalScheme.Name,
                    IDNumber = x.Details == null ? string.Empty : x.Details.IdentificationNumber,
                    GenderID = x.Gender == null ? string.Empty : x.Gender.Id.ToString(),
                    RaceID = x.Race == null ? string.Empty : x.Race.Id.ToString(),
                    Age = string.Empty,
                    ID = x.Id,
                    PatientId = x.Id.ToString("N"),
                    Providers = string.Join(", ", x.TeamMembers.GroupBy(y => y.Facility.Id).Select(y => y.First().Facility.Name))
                }).ToList(),
                null,
                 x => x.FirstName, x => x.LastName, x => x.BirthDate, x => x.Gender, x => x.Race, x => x.Providers, x => x.MedicalScheme, x => x.ID, x => x.Age, x => x.GenderID, x => x.RaceID, x => x.PatientId));

        }

        [Secured]
        public ActionResult CaseList(string Patient)
        {

            return View(Guid.ParseExact(Patient, "N"));

        }

        [Secured]
        public JsonResult IdentityValidation(string IDNumber, Guid? PatientId)
        {

            Guid? tempPatientId = DataAccess.Patient.PatientExist(IDNumber);

            if (tempPatientId.HasValue && tempPatientId.Value == PatientId)
                return Json(new
                {
                    Success = true,
                    isUnique = true,
                });

            Data.Models.Patient patient = null;

            if (tempPatientId.HasValue)
                patient = DataAccess.Patient.GetById(tempPatientId.Value);


            return Json(new
            {
                Success = true,
                isUnique = tempPatientId == null,
                PatientId = tempPatientId.HasValue ? tempPatientId.Value.ToString("N") : null,
                Name = patient == null ? null : patient.FirstName + " " + patient.LastName,
                BirthDate = patient == null ? null : patient.BirthDate.Value.ToString("yyyy/MM/dd"),
                Avatar = patient == null ? null : patient.Avatar
            });

        }


        [Secured]
        public ActionResult Visit(string Patient)
        {
            Guid patientId = Guid.ParseExact(Patient, "N");

            var model = Data.DataAccess.Patient.GetModelForAddVisit(patientId, UserHelper.Username);

            return View(model);
        }


        [Secured]
        public ActionResult VisitView(string Patient, string Visit)
        {
            Data.Models.Visit visit = DataAccess.Patient.GetVisitById(Guid.ParseExact(Visit, "N"));

            ViewBag.Account = UserHelper.GetCurrentAccount();

            return View(visit);
        }

        [Secured]
        public ActionResult Graphs(string Patient)
        {
            Guid patientId = Guid.ParseExact(Patient, "N");

            List<SADFM.Data.Models.Scale> scales = SADFM.Data.DataAccess.Patient.GetAllScales(patientId);
            return View(scales.OrderBy(s => s.SortOrder).ToList());

        }

        [Secured]
        public ActionResult Details(string Patient)
        {
            var model = SADFM.Data.DataAccess.Patient.GetById(Guid.ParseExact(Patient, "N"), UserHelper.Username, true);
            return View(model);

        }

        [Secured]
        public ActionResult Case(string Case)
        {

            SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "PatientController.Case:GetCaseById");
            var model = SADFM.Data.DataAccess.Patient.GetCaseById(Guid.ParseExact(Case, "N"), true, true);

            SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "PatientController.Case:  - Done");

            return View(model);

        }

        [Secured]
        public ActionResult NewCase(string Patient)
        {

            try
            {
                SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "PatientController.NewCase:GetPatient");

                var model = SADFM.Data.DataAccess.Patient.GetById(Guid.ParseExact(Patient, "N"), lightWeight: true);
                model.CarePlan = new List<CarePlan>();
                SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "PatientController.NewCase:  - Create Care Plan");
                List<CarePlan> carePlans = DataAccess.Patient.GetCarePlans(model.GetId());

                SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "PatientController.NewCase:  - Minimise Care Plan");
                List<string> carePlansDistinct = carePlans.Select(x => x.Name).Distinct().ToList();
                model.CarePlan = new List<CarePlan>();
                foreach (string name in carePlansDistinct)
                {
                    model.CarePlan.Add(carePlans.Where(x => x.Name == name).OrderBy(x => x.Value).First());
                }

                return View(model);
            }
            finally
            {
                SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "PatientController.NewCase:  - Done");
            }

        }

        [Secured]
        public ActionResult Edit(string Patient)
        {
            var model = SADFM.Data.DataAccess.Patient.GetById(Guid.ParseExact(Patient, "N"), UserHelper.Username);
            return View(model);

        }

        [Secured]
        [HttpPost]
        [ValidateInput(false)]
        public JsonResult AddVisit(ViewModels.Visit model)
        {
            return Json(DataAccess.Patient.AddVisit(new Data.Models.Visit()
            {
                ScalesValuesIds = model.ScalesValuesIds,
                StartDate = model.StartDate,
                CaseID = model.CaseID,
                Notes = model.Notes,
                ExtraNotes = model.ExtraNotes,
                PatientGUID = model.PatientGUID,
                VisitAttachments = model.VisitAttachments,
                TemperatureString = model.TemperatureString,
                HeartRate = model.HeartRate,
                BloodPressureSystolic = model.BloodPressureSystolic,
                BloodPressureDiastolic = model.BloodPressureDiastolic,
                PulseOximetry = model.PulseOximetry,
                GlucoseString = model.GlucoseString,
                DischargeDate = model.DischargeDate,
                ICD10 = model.ICD10,
                ImpairmentGroupId = model.ImpairmentGroupId,
                HeartRateRegular = model.HeartRateRegular,
                HeartRateNote = model.HeartRateNote,
                RespiratoryRateRegular = model.RespiratoryRateRegular,
                RespiratoryRateNote = model.RespiratoryRateNote,
                PulseOximetryRegular = model.PulseOximetryRegular,
                PulseOximetryNote = model.PulseOximetryNote,
                RespiratoryRate = model.RespiratoryRate,
                IsPrivate = model.IsPrivate
            }, UserHelper.GetCurrentAccount().GetId()));
        }

        [Secured]
        [HttpPost]
        public JsonResult UploadPatientImage(string patientId, string profileImage)
        {
            Guid patientGUID = Guid.ParseExact(patientId, "N");

            if (profileImage != null)
            {
                int base64Index = profileImage.IndexOf("base64,");
                profileImage = profileImage.Substring(base64Index + 7);
                return Json(DataAccess.Patient.UpdatePatientImage(patientGUID, profileImage));
            }
            return null;
        }


        [Secured]
        [HttpPost]
        public JsonResult UpdatePatient(ViewModels.Patient model)
        {

            DataAccess.Account.UpdatePatient(new Data.Models.Patient()
            {
                AdmitFrom = model.AdmitFrom,
                AdmitFromID = model.AdmitFromID,
                Avatar = model.Avatar,
                BirthDate = model.BirthDate,
                City = model.City,
                CityId = model.CityId,
                ContactNumber = model.ContactNumber,
                Country = model.Country,
                CountryID = model.CountryID,
                DischargeTo = model.DischargeTo,
                DischargeToID = model.DischargeToID,
                FirstName = model.FirstName,
                Gender = model.Gender,
                GenderID = model.GenderID,
                IDNumber = model.IDNumber,
                LastName = model.LastName,
                ID = BaseModel.EncryptId(model.PatientId),
                MedicalScheme = model.MedicalScheme,
                MedicalSchemeID = model.MedicalSchemeID,
                MedicalSchemeNo = model.MedicalSchemeNo,
                NextOfKinContact = model.NextOfKinContact,
                NextOfKinEmail = model.NextOfKinEmail,
                NextOfKinName = model.NextOfKinName,
                NextOfKinRelationship = model.NextOfKinRelationship,
                PostalCode = model.PostalCode,
                Province = model.Province,
                ProvinceId = model.ProvinceId,
                Race = model.Race,
                RaceID = model.RaceID,
                Street = model.Street,
                SupportServices = model.SupportServices,
                Title = model.Title,
                TitleId = model.TitleId,
                ResidentialEnvironment = model.ResidentialEnvironment,
                ResidentialEnvironmentID = model.ResidentialEnvironmentID
            }, UserHelper.GetCurrentAccount().GetId());

            return Json(new UpdateResult(true));
        }

        [Secured]
        [HttpPost]
        public JsonResult NewPatient(ViewModels.Patient model)
        {
            Data.Models.Account account = UserHelper.GetCurrentAccount();
            Guid accountId = account.GetId();
            try
            {

                Data.Patient patient = new Data.Patient()
                {
                    ResidentialEnvironmentId = SADFM.Data.Models.BaseModel.DecryptNullableId(model.ResidentialEnvironmentID),
                    AdmitFromId = SADFM.Data.Models.BaseModel.DecryptNullableId(model.AdmitFromID),
                    Street = model.Street,
                    DischargeToId = SADFM.Data.Models.BaseModel.DecryptNullableId(model.DischargeToID),
                    FirstName = model.FirstName,
                    PatientId = Guid.NewGuid(),
                    LastName = model.LastName,
                    DateCreatedTimestamp = DateTime.Now,
                    LastUpdateTimestamp = DateTime.Now,
                    LastUpdateAccountId = accountId,
                    IDNumber = model.IDNumber,
                    ContactNumber = model.ContactNumber,
                    ProvinceId = SADFM.Data.Models.BaseModel.DecryptNullableId(model.ProvinceId),
                    CityId = SADFM.Data.Models.BaseModel.DecryptNullableId(model.CityId),
                    PostalCode = model.PostalCode,
                    NextOfKinName = model.NextOfKinName,
                    NextOfKinContact = model.NextOfKinContact,
                    NextOfKinEmail = model.NextOfKinEmail,
                    NextOfKinRelationship = model.NextOfKinRelationship,
                    RaceId = SADFM.Data.Models.BaseModel.DecryptNullableId(model.RaceID),
                    GenderId = SADFM.Data.Models.BaseModel.DecryptNullableId(model.GenderID),
                    BirthDate = Convert.ToDateTime(model.BirthDate),
                    TitleId = SADFM.Data.Models.BaseModel.DecryptNullableId(model.TitleId),
                    CountryId = SADFM.Data.Models.BaseModel.DecryptNullableId(model.CountryID),
                    MedicalSchemeMembershipNumber = model.MedicalSchemeNo,
                    PatientSupportServices = model.SupportServices != null ? model.SupportServices.Select(x => new Data.PatientSupportService()
                    {
                        SupportServiceId = x.SupportServiceId,
                        Note = x.Note,
                        LastUpdatedTimestamp = DateTime.Now,
                        LastUpdatedAccountId = UserHelper.GetCurrentAccount().GetId()
                    }).ToList() : null

                };

                if (model.MedicalSchemeID != null)
                {
                    patient.MedicalSchemeId = SADFM.Data.Models.BaseModel.DecryptId(model.MedicalSchemeID);
                }
                DataAccess.Account.AddPatient(patient, accountId);


                if (UserHelper.SelectedClientId.HasValue)
                {

                    bool hasClosedCase;
                    Guid? caseId;
                    DataAccess.Patient.AddPatientProvider(new Data.Models.PatientProvider()
                    {
                        AssignedTimestamp = DateTime.Now,
                        DischargedTimestamp = null,
                        ProviderId = BaseModel.EncryptId(UserHelper.SelectedClientId.Value),
                        CaseId = null,
                        AccountID = BaseModel.EncryptId(accountId),
                        PatientId = BaseModel.EncryptId(patient.PatientId),
                        PatientProviderID = null

                    }, accountId, out hasClosedCase, out caseId);


                }
                return Json(new
                {
                    Success = true,
                    Id = patient.PatientId.ToString("N"),
                    Guid = patient.PatientId.ToString()

                });

            }
            catch (Exception e)
            {
                SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "PatientController.NewPatient" + " ->> " + "Account: " + account.Username + "\r\n" + e.Message);
                return Json(new
                {
                    Success = false,
                    Message = "Error has occurred."

                });
            }


        }

        [Secured]
        [HttpPost]
        public JsonResult GetPatient(string PatientId)
        {

            List<CarePlan> carePlans = DataAccess.Patient.GetScaleByPatientId(Guid.ParseExact(PatientId, "N")).Select(x =>
                {
                    return new CarePlan()
                    {
                        Name = x.Description,
                        Frequency = x.Frequency,
                        Value = x.FrequencyValue,
                        ScaleId = x.ScaleID
                    };
                }).ToList();


            List<string> carePlansDistinct = carePlans.Select(x => x.Name).Distinct().ToList();

            List<CarePlan> carePlansMinimum = new List<CarePlan>();

            foreach (string name in carePlansDistinct)
            {
                carePlansMinimum.Add(carePlans.Where(x => x.Name == name).OrderBy(x => x.Value).First());
            }


            return Json(
                Utilities.DataTableJson(
                Utilities.DataTableRequest.Parse(Request.Form),
               carePlansMinimum,
                null,
                x => x.Name, x => x.Frequency, x => x.ScaleId));
        }

        [Secured]
        [HttpPost]
        public JsonResult RemoveScale(string patientId, string scaleId)
        {

            return Json(Data.DataAccess.Patient.RemoveScale(Guid.ParseExact(patientId, "N"), BaseModel.DecryptId(scaleId), UserHelper.GetCurrentAccount().GetId()));
        }

        [Secured]
        [HttpPost]
        public JsonResult AddScale(string patientId, string scaleId, string frequencyId)
        {
            return Json(Data.DataAccess.Patient.AddScale(BaseModel.DecryptId(patientId), BaseModel.DecryptId(scaleId), BaseModel.DecryptId(frequencyId), UserHelper.GetCurrentAccount().GetId(), UserHelper.SelectedClientId.Value));
        }

        [Secured]
        [HttpPost]
        public JsonResult NewCase(ViewModels.Case model)
        {

            string ICD10 = model.ICD10ID.Split(' ')[0];
            SADFM.Data.Models.ListItem icd10_ListItem = SADFM.Data.DataAccess.ListItem.GetList("ICD10", filter: li => li.Name == ICD10).FirstOrDefault();
            if (icd10_ListItem == null)
                return Json(new { Success = false, Error = "Cannot find ICD" });

            if (model.CaseId == null)
            {


                Data.Models.Account account = UserHelper.GetCurrentAccount();
                Guid accountId = account.GetId();

                SADFM.Data.Case caseObject = new SADFM.Data.Case()
                {
                    ICD10Id = icd10_ListItem.GetId(),
                    CaseId = Guid.NewGuid(),
                    DateCreatedTimestamp = DateTime.Now,
                    LastUpdateTimestamp = DateTime.Now,
                    StartDate = model.StartDate,
                    EndDate = model.EndDate,
                    PatientId = SADFM.Data.Models.BaseModel.DecryptId(model.PatientId),
                    LastUpdateAccountId = UserHelper.GetCurrentAccount().GetId(),
                    ImpairmentGroupId = model.ImpairmentGroupId != null ? BaseModel.DecryptNullableId(model.ImpairmentGroupId) : null,
                    ReferringDoctor = model.ReferringDoctor,
                    ReferringDoctorContact = model.ReferringDoctorContact,
                    ReferringDoctorEmail = model.ReferringDoctorEmail,
                    ReferringDoctorPracticeNumber = model.ReferringDoctorPracticeNumber,
                    TreatingDoctor = model.TreatingDoctor,
                    TreatingDoctorContact = model.TreatingDoctorContact,
                    TreatingDoctorEmail = model.TreatingDoctorEmail,
                    TreatingDoctorPracticeNumber = model.TreatingDoctorPracticeNumber,
                    AdmissionStatusId = SADFM.Data.Models.BaseModel.DecryptNullableId(model.AdmissionStatusId)
                };



                if (UserHelper.GetCurrentAccount().Permissions.Count(x => x.GetClientId() == UserHelper.SelectedClientId && (x.PermissionDescription.Equals("Clinician"))) != 0)
                {
                    caseObject.PatientProviders.Add(new Data.PatientProvider()
                    {
                        AccountId = UserHelper.GetCurrentAccount().GetId(),
                        AssignedTimestamp = DateTime.Now,
                        CreatedTimestamp = DateTime.Now,
                        LastUpdateAccountId = UserHelper.GetCurrentAccount().GetId(),
                        LastUpdateTimestamp = DateTime.Now,
                        ProviderId = UserHelper.SelectedClientId.Value,
                        PatientProviderId = Guid.NewGuid(),
                        PatientId = SADFM.Data.Models.BaseModel.DecryptId(model.PatientId)
                    });
                }

                DataAccess.Account.AddCase(caseObject, UserHelper.GetCurrentAccount().GetId());

                return Json(new
                {
                    Success = true,
                    Id = caseObject.CaseId.ToString("N")
                });
            }
            else
            {

                return Json(DataAccess.Account.UpdateCase(new Data.Case()
                {
                    CaseId = Data.Models.BaseModel.DecryptId(model.CaseId),
                    StartDate = model.StartDate,
                    EndDate = model.EndDate,
                    ICD10Id = icd10_ListItem.GetId(),
                    PatientId = Data.Models.BaseModel.DecryptId(model.PatientId),
                    ImpairmentGroupId = model.ImpairmentGroupId != null ? BaseModel.DecryptNullableId(model.ImpairmentGroupId) : null,
                    ReferringDoctor = model.ReferringDoctor,
                    ReferringDoctorContact = model.ReferringDoctorContact,
                    ReferringDoctorEmail = model.ReferringDoctorEmail,
                    ReferringDoctorPracticeNumber = model.ReferringDoctorPracticeNumber,
                    TreatingDoctor = model.TreatingDoctor,
                    TreatingDoctorContact = model.TreatingDoctorContact,
                    TreatingDoctorEmail = model.TreatingDoctorEmail,
                    TreatingDoctorPracticeNumber = model.TreatingDoctorPracticeNumber,
                    AdmissionStatusId = SADFM.Data.Models.BaseModel.DecryptNullableId(model.AdmissionStatusId)
                }, UserHelper.GetCurrentAccount().GetId()));

            }
        }

        [Secured]
        [HttpPost]
        public JsonResult GraphData(string PatientId, string ScaleID, string GraphType, long[] SelectedDates)
        {
            DateTime utcStart = new DateTime(1970, 1, 1);
            Guid patientId = Guid.ParseExact(PatientId, "N");
            Guid scaleId = Data.Models.BaseModel.DecryptId(ScaleID);

            var scale = DataAccess.ListItem.GetById(scaleId);
            if (scale.Name.Equals("VitalSigns"))
            {

                List<Data.Models.Visit> visits = DataAccess.Patient.GetLast50(patientId);

                List<Models.LineChart> chartData = new List<Models.LineChart>();

                chartData.Add(new Models.LineChart()
                {
                    Data = visits.Where(x => x.Temperature.HasValue).ToDictionary(x => (long)(x.VisitDate - utcStart).TotalMilliseconds, x => x.Temperature.Value),
                    name = "Temperature"
                });

                chartData.Add(new Models.LineChart()
                {
                    Data = visits.Where(x => x.BloodPressureDiastolic.HasValue).ToDictionary(x => (long)(x.VisitDate - utcStart).TotalMilliseconds, x => Convert.ToDouble(x.BloodPressureDiastolic.Value)),
                    name = "Blood Pressure Diastolic"
                });

                chartData.Add(new Models.LineChart()
                {
                    Data = visits.Where(x => x.BloodPressureSystolic.HasValue).ToDictionary(x => (long)(x.VisitDate - utcStart).TotalMilliseconds, x => Convert.ToDouble(x.BloodPressureSystolic.Value)),
                    name = "Blood Pressure Systolic"
                });

                chartData.Add(new Models.LineChart()
                {
                    Data = visits.Where(x => x.HeartRate.HasValue).ToDictionary(x => (long)(x.VisitDate - utcStart).TotalMilliseconds, x => Convert.ToDouble(x.HeartRate.Value)),
                    name = "Heart Rate"
                });

                chartData.Add(new Models.LineChart()
                {
                    Data = visits.Where(x => x.PulseOximetry.HasValue).ToDictionary(x => (long)(x.VisitDate - utcStart).TotalMilliseconds, x => Convert.ToDouble(x.PulseOximetry.Value)),
                    name = "Pulse Oximetry"
                });

                chartData.Add(new Models.LineChart()
                {
                    Data = visits.Where(x => x.Glucose.HasValue).ToDictionary(x => (long)(x.VisitDate - utcStart).TotalMilliseconds, x => Convert.ToDouble(x.Glucose.Value * 10)),
                    name = "Glucose * 10"
                });

                chartData.Add(new Models.LineChart()
                {
                    Data = visits.Where(x => x.RespiratoryRate.HasValue).ToDictionary(x => (long)(x.VisitDate - utcStart).TotalMilliseconds, x => Convert.ToDouble(x.RespiratoryRate.Value)),
                    name = "Respiratory Rate"
                });

                return Json(new
                {
                    Data = chartData,
                    Format = "yyyy-MM-dd HH:mm"
                });
            }
            switch (GraphType)
            {
                case "AllVisitsLine":
                case "CondensedVisitsLine":
                    {
                        Dictionary<Guid, List<Data.Models.Visit>> rx;
                        if (GraphType == "AllVisitsLine")
                            rx = DataAccess.Patient.GetAllVisits(patientId, scaleId);
                        else
                            rx = DataAccess.Patient.GetCompletedScales(patientId, scaleId);
                        List<Models.LineChart> chartData = new List<Models.LineChart>();

                        foreach (var scaleItem in DataAccess.ListItem.GetListByParentId(scaleId, "SortOrder"))
                        {
                            chartData.Add(new Models.LineChart
                            {
                                Id = scaleItem.GetId(),
                                name = scaleItem.Name,
                                Data = new Dictionary<long, double>()
                            });
                        }

                        DateTime minDate = DateTime.MaxValue, maxDate = DateTime.MinValue;
                        foreach (var visit in rx[scaleId])
                            foreach (var visitScore in visit.ScaleValues)
                            {
                                if (visit.VisitDate < minDate)
                                    minDate = visit.VisitDate;
                                if (visit.VisitDate > maxDate)
                                    maxDate = visit.VisitDate;
                                chartData.Single(lc => lc.Id == visitScore.ItemId).Data.Add(
                                    (long)((visit.VisitDate - utcStart).TotalMilliseconds),
                                    visitScore.Value);
                            }

                        return Json(new
                        {
                            Data = chartData,
                            Format = (maxDate - minDate).TotalDays <= 3 ? "yyyy-MM-dd HH:mm" : "yyyy-MM-dd"
                        });
                    }
                case "PolarDates":
                    {
                        Dictionary<Guid, List<Data.Models.Visit>> rx = DataAccess.Patient.GetCompletedScales(patientId, scaleId);
                        return Json(rx[scaleId].Select(v => v.VisitDate).OrderBy(v => v).Select(d => new { ticks = d.Ticks, display = d.ToString("dd MMM yyyy HH:mm") }));
                    }
                case "Polar":
                    {
                        List<Data.Models.Visit> rx = DataAccess.Patient.GetCompletedScales(patientId, scaleId)[scaleId].Where(v => SelectedDates.Contains(v.VisitDate.Ticks)).OrderBy(v => v.VisitDate).ToList();
                        List<Data.Models.ListItem> items = DataAccess.ListItem.GetListByParentId(scaleId, "SortOrder").OrderBy(x => x.SortOrder).ToList();
                        return Json(new
                        {
                            labels = items.Select(li => li.Name),
                            data = rx.Select(v => new { title = v.VisitDate.ToString("dd MMM yyyy HH:mm"), points = items.Select(li => v.ScaleValues.Single(sis => sis.ItemId == li.GetId()).Value) })
                        });
                    }
            }
            return Json(false);
        }

        [Secured]
        [HttpPost]
        public JsonResult PatientCases(string Patient)
        {
            return Json(
                Utilities.DataTableJson(
                Utilities.DataTableRequest.Parse(Request.Form),
                DataAccess.Patient.GetCases(Guid.ParseExact(Patient, "N")).Select(x =>
                {
                    return new
                    {

                        StartDate = x.StartDate.ToString("dd MMM yyyy"),
                        Providers = string.Join(",", x.Providers.Select(p => p.Name).ToList().Distinct()),
                        ICD10 = x.ICD10 + " - " + x.ICD10Description,
                        CaseId = x.CaseId,
                        EndDate = x.EndDate != null ? x.EndDate.Value.ToString("dd MMM yyyy") : "",
                        ImpairmentGroupId = x.ImpairmentGroupId,
                        ImpairmentGroup = x.ImpairmenGroup,
                        ID = Data.Models.BaseModel.DecryptId(x.CaseId).ToString("N"),
                        MDT = x.MDT

                    };
                }).ToList(),
                null,
                x => x.StartDate, x => x.ID, x => x.ICD10, x => x.EndDate, x => x.Providers, x => x.CaseId, x => x.ImpairmentGroupId, x => x.ImpairmentGroup, x => x.MDT));

        }

        [Secured]
        [HttpPost]
        public JsonResult PatientProviders(string Patient)
        {


            return Json(
                Utilities.DataTableJson(
                Utilities.DataTableRequest.Parse(Request.Form),
                DataAccess.Patient.GetById(Guid.ParseExact(Patient, "N")).PatientProviders.Select(x =>
                {
                    return new
                    {

                        Provider = x.Name,
                        AssignedDate = x.AssignedTimestamp.ToString("dd MMM yyyy"),
                        DischargeDate = x.DischargedTimestamp.HasValue ? x.DischargedTimestamp.Value.ToString("dd MMM yyyy") : "",
                        ID = x.PatientProviderID,
                        ProviderId = BaseModel.DecryptId(x.ProviderId),
                        PatientProviderId = BaseModel.DecryptId(x.PatientProviderID),
                        AccountFullname = x.AccountFullname,
                        AccountRoles = x.AccountRoles,
                        CaseId = x.CaseId,
                        CaseICD10 = x.CaseICD10

                    };
                }).ToList(),
                null,
                x => x.Provider, x => x.AssignedDate, x => x.CaseICD10, x => x.DischargeDate, x => x.ID, x => x.ProviderId, x => x.PatientProviderId, x => x.AccountFullname, x => x.AccountRoles, x => x.CaseId));



        }

        [Secured]
        [HttpGet]
        public ActionResult DeallocateTeamMember(Guid patientId, Guid patientProviderId)
        {

            _patientService.DeallocateTeamMember(patientId, patientProviderId);

            return RedirectToAction("Details", "Patient", new
            {
                Patient = patientId.ToString("N")
            });
        }

        [Secured]
        [HttpPost]
        public JsonResult AddPatientProvider(PatientFacility model)
        {
            try
            {
                if (model.DischargedTimestamp.HasValue)
                {
                    _patientService.DeallocateTeamMember(BaseModel.DecryptId(model.PatientId), BaseModel.DecryptId(model.PatientProviderID));
                }
                else
                {
                    string ICD10 = model.ReasonForAdmissionName.Split(' ')[0];
                    SADFM.Data.Models.ListItem icd10_ListItem = ICD10 == "Unknown" ? null : SADFM.Data.DataAccess.ListItem.GetList("ICD10", filter: li => li.Name == ICD10).FirstOrDefault();
                    _patientService.AllocateTeamMember(BaseModel.DecryptId(model.PatientId), BaseModel.DecryptId(model.ProviderId), BaseModel.DecryptId(model.AccountID), icd10_ListItem == null? (Guid?)null : icd10_ListItem.GetId(), icd10_ListItem == null ? null : model.ICD10CodeTimestamp);
                }
                return Json(new
                {
                    Success = true
                });

            }
            catch (Exception ex)
            {
                return Json(new UpdateResult(ex.Message));
            }
        }

        private string GetPatientProgressReportEmail(string referringDoctor, string patientname, string providerName, DateTime dischargeDate, string username, Guid reportId)
        {
            var url = System.Web.HttpContext.Current.Request.Url.GetLeftPart
                   (UriPartial.Authority) + "/Patient/ProgressReport?id=" + reportId.ToString("N");



            string ret = string.Empty;
            ret = "<html><head><meta content=\"text/html; charset=utf-8\" /></head><body><p>Dear Dr " + referringDoctor + "," + "</p>"
                + "<p>Re: " + patientname + "</p>"
            + "<br/>"
            + "<p>This patient was discharged from " + providerName + " on " + dischargeDate.ToString("dd MMMM yyyy") + ".  Please click here to read the patient's <a href=\"" + url + "\" target=\"_blank\">" + "discharge report.</a>" + "</p>"
           + "</a><p>Regards,</p>"
           + "<p>" + username + "</p>"
            + "</p><div></div><div>SADFM</div></body></html>";
            return ret;
        }

        [Secured]
        [HttpPost]
        public JsonResult AddPatientProviders(List<PatientFacility> model)
        {

            try
            {

                foreach (var item in model)
                {
                    if (item.DischargedTimestamp.HasValue)
                    {
                        _patientService.DeallocateTeamMember(BaseModel.DecryptId(item.PatientId), BaseModel.DecryptId(item.PatientProviderID));
                    }
                    else
                    {
                        string ICD10 = item.ReasonForAdmissionName.Split(' ')[0];
                        SADFM.Data.Models.ListItem icd10_ListItem = ICD10 == "Unknown"? null : SADFM.Data.DataAccess.ListItem.GetList("ICD10", filter: li => li.Name == ICD10).FirstOrDefault();
                        _patientService.AllocateTeamMember(BaseModel.DecryptId(item.PatientId), BaseModel.DecryptId(item.ProviderId), BaseModel.DecryptId(item.AccountID), icd10_ListItem == null? (Guid?)null : icd10_ListItem.GetId(), icd10_ListItem == null? null : item.ICD10CodeTimestamp);
                    }
                }

                return Json(new
                {
                    Success = true
                });

            }
            catch (Exception ex)
            {
                return Json(new UpdateResult(ex.Message));
            }

        }

        [Secured]
        [HttpPost]
        public JsonResult PatientVisits(string Patient)
        {
            List<Data.Models.Visit> visits = DataAccess.Patient.GetVisits(Guid.ParseExact(Patient, "N"), UserHelper.GetCurrentAccount().GetId()).OrderByDescending(x => x.VisitDate).ToList();

            return Json(
                Utilities.DataTableJson(
                Utilities.DataTableRequest.Parse(Request.Form),
               visits.Select(x =>
               {
                   return new
                   {
                       Date = Convert.ToDateTime(x.StartDate).ToString("yyyy-MM-dd HH:mm"),
                       VisitDuration = x.DurationDisplay,
                       VisitNotes = x.Notes == null ? "" : x.Notes.Length > 150 ? "<b style='color:blue'>Open visit to view note</b>" : Server.HtmlDecode(x.Notes),
                       VisitId = x.VisitId.ToString("N"),
                       AccountFullname = x.AccountFullname,
                       AccountRoles = x.AccountRoles,
                       Scales = string.Join(",", x.GetScales().Select(y => y.ScaleName))

                   };
               }).ToList(),
                null,
                x => x.Date, x => x.Scales, x => x.VisitNotes, x => x.VisitId, x => x.AccountFullname, x => x.AccountRoles));

        }
    }
}