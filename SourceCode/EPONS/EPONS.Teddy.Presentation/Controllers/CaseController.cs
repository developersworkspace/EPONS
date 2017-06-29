using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class CaseController : Controller
    {

        #region Action Methods

        //[HttpGet]
        //[Attributes.HandleError(Order = 1)]
        //[Compress(Order = 2)]
        //[Log(Order = 3)]
        //[Authorize(Order = 4)]
        //[DonutOutputCache(Duration = ConfigurationDefaults.CacheShortLivedWeb, Order = 100, VaryByCustom = "Username")]
        //public ActionResult Create(Guid patientId)
        //{
        //    var baseModel = ViewModelFactory.Base(User.Identity.Name, _userService, _messagingService);

        //    if (!baseModel.UserModel.CanCreateCase())
        //        throw new BusinessRuleException("You are not authorized to create cases for any patients");


        //    var patient = _patientService.Get(patientId);

        //    return View(new CaseCreate(baseModel)
        //    {
        //        PatientModel = patient,
        //        Case = ViewModelFactory.BuildLists(new ViewModels.Case(), _unitOfWork.ListRepository),
        //        MeasurementTools = _patientService.ListActiveMeasurementTools(patientId),
        //        MeasurementToolList = new SelectList(_patientService.ListMeasurementToolsAvailable(patientId), "Id", "Name"),
        //        FrequencyList = new SelectList(_unitOfWork.ListRepository.Frequencies(), "Id", "Name"),
        //        FacilityList = new SelectList(_facilityService.List(), "Id", "Name")
        //    });
        //}

        //[HttpGet]
        //[Attributes.HandleError(Order = 1)]
        //[Compress(Order = 2)]
        //[Log(Order = 3)]
        //[Authorize(Order = 4)]
        //[DonutOutputCache(Duration = ConfigurationDefaults.CacheShortLivedWeb, Order = 100, VaryByCustom = "Username")]
        //public ActionResult Edit(Guid caseId, Guid patientId)
        //{
        //    var baseModel = ViewModelFactory.Base(User.Identity.Name, _userService, _messagingService);

        //    var cse = _caseService.Get(caseId);
        //    var patient = _patientService.Get(patientId);

        //    if (!patient.CanAccess(baseModel.UserModel))
        //        throw new BusinessRuleException("You are not autorized to view the case of this patient");


        //    var caseViewModel = ViewModelFactory.Build(patient, cse);
        //    caseViewModel = ViewModelFactory.BuildLists(caseViewModel, _unitOfWork.ListRepository);


        //    return View(new CaseEdit(baseModel)
        //    {
        //        PatientModel = patient,
        //        Case = caseViewModel,
        //        MeasurementTools = _patientService.ListActiveMeasurementTools(patient.Id),
        //        MeasurementToolList = new SelectList(_patientService.ListMeasurementToolsAvailable(patient.Id), "Id", "Name"),
        //        FrequencyList = new SelectList(_unitOfWork.ListRepository.Frequencies(), "Id", "Name"),
        //        FacilityList = new SelectList(_facilityService.List(), "Id", "Name")
        //    });
        //}

        //[HttpPost]
        //[Attributes.HandleError(Order = 1)]
        //[Compress(Order = 2)]
        //[Log(Order = 3)]
        //[Authorize(Order = 4)]
        //[ValidateAntiForgeryToken(Order = 5)]
        //public ActionResult Create(ViewModels.Case model)
        //{
        //    var cse = _caseService.Create(model.PatientId, model.ImpairmentGroupId, new Case()
        //    {
        //        AdmissionDate = model.StartDate,
        //        AdmissionStatus = model.AdmissionStatusId.HasValue ? new AdmissionStatus()
        //        {
        //            Id = model.AdmissionStatusId.Value
        //        } : null,
        //        DischargeDate = model.EndDate,
        //        ICD10Code = string.IsNullOrWhiteSpace(model.ICD10Code) ? null : new ICD10Code()
        //        {
        //            Name = model.ICD10Code
        //        },
        //        ReferringDoctor = model.ReferringDoctor,
        //        TreatingDoctor = model.TreatingDoctor
        //    }, this.User.Identity.Name);

        //    Patient patient = _patientService.Get(model.PatientId);

        //    _messagingService.Send(new Person()
        //    {
        //        Id = Guid.NewGuid()
        //    }, new Person()
        //    {
        //        Id = Constants.NotificationsMessageId
        //    }, new Message()
        //    {
        //        Body = string.Format("{0} has got a new <a href=\"/Case/Edit?caseId={1}\">case</a>.", patient.DisplayName, cse.Id)
        //    });

        //    return RedirectToAction("Edit", "Case", new { caseId = cse.Id });
        //}

        //[HttpPost]
        //[Attributes.HandleError(Order = 1)]
        //[Compress(Order = 2)]
        //[Log(Order = 3)]
        //[Authorize(Order = 4)]
        //[ValidateAntiForgeryToken(Order = 5)]
        //public ActionResult Edit(ViewModels.Case model)
        //{
        //    var cse = _caseService.Save(model.PatientId, model.ImpairmentGroupId, new Case()
        //    {
        //        Id = model.Id,
        //        AdmissionDate = model.StartDate,
        //        AdmissionStatus = model.AdmissionStatusId.HasValue ? new AdmissionStatus()
        //        {
        //            Id = model.AdmissionStatusId.Value
        //        } : null,
        //        DischargeDate = model.EndDate,
        //        ICD10Code = string.IsNullOrWhiteSpace(model.ICD10Code) ? null : new ICD10Code()
        //        {
        //            Name = model.ICD10Code
        //        },
        //        ReferringDoctor = model.ReferringDoctor,
        //        TreatingDoctor = model.TreatingDoctor
        //    });
        //    Patient patient = _patientService.Get(model.PatientId);

        //    _messagingService.Send(new Person()
        //    {
        //        Id = Guid.NewGuid()
        //    }, new Person()
        //    {
        //        Id = Constants.NotificationsMessageId
        //    }, new Message()
        //    {
        //        Body = string.Format("{0}'s <a href=\"/Case/Edit?caseId={1}\">case</a> got updated.", patient.DisplayName, cse.Id)
        //    });

        //    return RedirectToAction("Edit", "Case", new { caseId = model.Id });
        //}

        #endregion
    }
}