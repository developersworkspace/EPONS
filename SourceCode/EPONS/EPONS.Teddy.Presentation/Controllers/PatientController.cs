using Epons.Gateway;
using Epons.Gateway.Models;
using EPONS.Teddy.Application.Enums;
using EPONS.Teddy.Application.Exceptions;
using EPONS.Teddy.Application.Extensions;
using EPONS.Teddy.Application.Repositories;
using EPONS.Teddy.Application.Services;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class PatientController : BaseController
    {
        private PatientService _patientService;
        private VisitService _visitService;
        private ListRepository _listRepository;
        private readonly PatientGateway _patientGateway;

        public PatientController()
        {
            _patientService = new PatientService(GetConnection());
            _visitService = new VisitService(GetConnection());
            _listRepository = new ListRepository(GetConnection());
            _patientGateway = new PatientGateway();
        }

        #region Action Methods

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult List(string type = "active", int pageNumber = 1, int pageSize = 10, string query = null, string columnName = "Firstname", bool sortDirectionIsAsc = true)
        {
            var baseObject = GetBaseObject();

            int totalRecords = 0;

            IList<Application.EntityViews.Patient> patients = _patientService.List(baseObject.User, type, pageNumber, pageSize, query, out totalRecords);

            if (patients.Count == 0 && pageNumber > 1)
            {
                return RedirectToAction("List", "Patient", new
                {
                    type = type,
                    query = query
                });
            }

            return View(new ViewObjects.Patient.List(baseObject)
            {
                ListType = type.ToTitleCase(),
                Patients = patients,
                Pagination = new ViewObjects.Pagination()
                {
                    PageNumber = pageNumber,
                    NumberOfPages = (int)Math.Ceiling((decimal)totalRecords / (decimal)pageSize)
                },
                PageSize = pageSize
            });
        }

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult Edit(Guid patientId)
        {
            var baseObject = GetBaseObject();

            Application.Entities.Patient patient = _patientService.Get(patientId);

            IList<Application.EntityViews.MeasurementTool> measurementTools = _patientService.ListMeasurementTools(patientId);
            IList<Application.EntityViews.TeamMember> teamMembers = _patientService.ListTeamMembers(patientId);
            IList<Application.EntityViews.Visit> visits = _visitService.ListVisits(patientId);
            IList<Application.EntityViews.EpisodeOfCare> episodesOfCare = _patientService.ListEpisodesOfCare(patientId, baseObject.User.CurrentFacility.Id);

            Application.Entities.TeamMember teamMember = _patientService.GetTeamMember(patientId, baseObject.User.CurrentFacility);

            if (!patient.CanAccess(baseObject.User, teamMembers, baseObject.User.Permissions))
                throw new BusinessRuleException("You are not autorized to view this patient");

            return View(new ViewObjects.Patient.Edit(baseObject)
            {
                Patient = patient,
                MeasurementTools = measurementTools,
                TeamMembers = teamMembers,
                Visits = visits,
                TeamMember = teamMember,
                EpisodesOfCare = episodesOfCare,
                EpisodeOfCare = new Application.Entities.EpisodeOfCare()
                {
                    ImpairmentGroups = _listRepository.GetImpairmentGroups(),
                    DischargeTypes = _listRepository.GetDischargeTypes(),
                    AdmissionTypes = _listRepository.GetAdmissionTypes(),
                    FacilityId = baseObject.User.CurrentFacility.Id,
                    userId = baseObject.User.Id
                    
                },
                MeasurementToolList = new SelectList(_listRepository.GetMeasurementTools().Where(x => measurementTools.Count(y => y.Id == x.Id) == 0), "Id", "Name"),
                FrequencyList = new SelectList(_listRepository.GetFrequencies(), "Id", "Name"),
            });
        }

        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]
        public ActionResult Edit(Application.Entities.Patient model)
        {

            if (!ModelState.IsValid)
            {

                var baseObject = GetBaseObject();

                Application.Entities.Patient patient = _patientService.Get(model.Id);

                IList<Application.EntityViews.MeasurementTool> measurementTools = _patientService.ListMeasurementTools(model.Id);
                IList<Application.EntityViews.TeamMember> teamMembers = _patientService.ListTeamMembers(model.Id);
                IList<Application.EntityViews.Visit> visits = _visitService.ListVisits(model.Id);

                if (!patient.CanAccess(baseObject.User, teamMembers, baseObject.User.Permissions))
                    throw new BusinessRuleException("You are not autorized to view this patient");

                return View(new ViewObjects.Patient.Edit(baseObject)
                {
                    Patient = patient,
                    MeasurementTools = measurementTools,
                    TeamMembers = teamMembers,
                    Visits = visits,
                    TeamMember = _patientService.GetTeamMember(model.Id, baseObject.User.CurrentFacility),
                    MeasurementToolList = new SelectList(_listRepository.GetMeasurementTools().Where(x => measurementTools.Count(y => y.Id == x.Id) == 0), "Id", "Name"),
                    FrequencyList = new SelectList(_listRepository.GetFrequencies(), "Id", "Name"),
                });
            }

            _patientService.Save(model);

            return RedirectToAction("Edit", "Patient", new { patientId = model.Id });
        }


        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult CreateGet(Application.Entities.Patient model)
        {
            var baseObject = GetBaseObject();

            var viewObject = new ViewObjects.Patient.Create(baseObject);

            if (!viewObject.CanCreatePatient())
                throw new BusinessRuleException("You are not authorized to create patients");

            if (!string.IsNullOrWhiteSpace(model.IdentificationNumber))
            {
                PatientDto patientDto = _patientGateway.Find(model.IdentificationNumber);

                if (patientDto != null)
                    return RedirectToAction("Edit", "Patient", new { patientId = patientDto.Id, modalType = (int)ModalTypes.PatientExist });
            }

            if (!string.IsNullOrWhiteSpace(model.PassportNumber))
            {
                PatientDto patientDto = _patientGateway.Find(model.PassportNumber);

                if (patientDto != null)
                    return RedirectToAction("Edit", "Patient", new { patientId = patientDto.Id, modalType = (int)ModalTypes.PatientExist });
            }

            if (!string.IsNullOrWhiteSpace(model.Firstname) && !string.IsNullOrWhiteSpace(model.Lastname) && model.DateOfBirth.HasValue)
            {

                PatientDto patientDto = _patientGateway.Find(model.Firstname, model.Lastname, model.DateOfBirth.Value);

                if (patientDto != null)
                    return RedirectToAction("Edit", "Patient", new { patientId = patientDto.Id, modalType = (int)ModalTypes.PatientExist });
            }

            string identificationNumber = model.IdentificationNumber;
            string passportNumber = model.PassportNumber;
            string firstname = model.Firstname;
            string lastname = model.Lastname;
            DateTime? dateOfBrith = model.DateOfBirth;

            model = _patientService.Get();
            model.Firstname = firstname;
            model.Lastname = lastname;
            model.IdentificationNumber = string.IsNullOrWhiteSpace(identificationNumber)? passportNumber : identificationNumber;
            model.DateOfBirth = string.IsNullOrWhiteSpace(identificationNumber) ? dateOfBrith : model.IdentificationNumber.FromIdNumberToDateTime();

            ViewData["ModalType"] = ModalTypes.PatientNotExist;

            viewObject.Patient = model;

            return View("Create", viewObject);
        }


        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]
        public ActionResult CreatePost(Application.Entities.Patient model)
        {
            Guid patientId = _patientService.Create(model);

            return RedirectToAction("Edit", "Patient", new { patientId = patientId });
        }


        [HttpGet]
        [Authorize(Order = 4)]

        public ActionResult Avatar(Guid patientId)
        {

            byte[] bytes = _patientService.Avatar(patientId);
            if (bytes == null)
                bytes = System.IO.File.ReadAllBytes(Server.MapPath("/Content/img/nopatient.png"));

            return File(bytes, "image/png");
        }


        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]
        public ActionResult AssignMeasurementTool(ViewObjects.Modals.AssignMeasurementTool model)
        {
            try
            {
                if (model.MeasurementToolId == Guid.Empty)
                    throw new BusinessRuleException("Measurement Tool cannot be empty");

                if (model.FrequencyId == Guid.Empty)
                    throw new BusinessRuleException("Frequency cannot be empty");

                _patientService.AssignMeasurmentTool(model.PatientId, model.MeasurementToolId, model.FrequencyId);

            }
            catch (BusinessRuleException ex)
            {
                TempData["Message_AssignMeasurementTool"] = ex.Message;
            }
            return RedirectToAction("Edit", "Patient", new { patientId = model.PatientId });
        }

        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]
        public ActionResult CreateEpisodeOfCare(Application.Entities.EpisodeOfCare model)
        {
            _patientService.CreateEpisodeOfCare(model);

            return RedirectToAction("Edit", "Patient", new { patientId = model.PatientId });
        }

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult EditEpisodeOfCare(Guid episodeofCareId)
        {
            var model = _patientService.GetEpisodeOfCare(episodeofCareId);
            
            return PartialView("EditEpisodeOfCare", model);
        }


        public ActionResult EditEpisodeOfCareAjax(Guid episodeofCareId)
        {

            var model = _patientService.GetEpisodeOfCare(episodeofCareId); 

            return Json(model,JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]
        public ActionResult EditEpisodeOfCare(Application.Entities.EpisodeOfCare model)
        {
     
                _patientService.UpdateEpisodeOfCare(model);
             return RedirectToAction("Edit", "Patient", new { patientId = model.PatientId });
        }

        [HttpGet]
        [Authorize(Order = 4)]

        public ActionResult DeassignMeasurementTool(Guid patientId, Guid measurementToolId)
        {
            _patientService.DeassignMeasurementTool(patientId, measurementToolId);

            return RedirectToAction("Edit", "Patient", new { patientId = patientId });
        }

        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]
        public ActionResult AllocateTeamMember(Application.Entities.TeamMember model)
        {
            try
            {
                if (model.FacilityId == Guid.Empty)
                    throw new BusinessRuleException("Facility cannot be empty");

                if (model.UserIds == null)
                    throw new BusinessRuleException("Users cannot be empty");

                _patientService.AllocateTeamMember(model);
            }
            catch (BusinessRuleException ex)
            {
                TempData["Message_AllocateTeamMember"] = ex.Message;
            }

            return RedirectToAction("Edit", "Patient", new { patientId = model.PatientId });
        }

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult DeallocateTeamMember(Guid patientId, Guid userId)
        {

            _patientService.DeallocateTeamMember(patientId, userId);

            return RedirectToAction("Edit", "Patient", new
            {
                patientId = patientId
            });
        }

        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]
        public ActionResult DeallocateTeamMember(Application.Entities.TeamMember model)
        {
            try
            {
                if (model.UserIds == null)
                    return RedirectToAction("Edit", "Patient", new { patientId = model.PatientId });

                _patientService.DeallocateTeamMember(model.PatientId, model.UserIds);
            }
            catch (BusinessRuleException ex)
            {
                TempData["Message_DeallocateTeamMember"] = ex.Message;
                TempData["Message_Data_PatientId"] = model.PatientId;
                TempData["Message_Data_UserIds"] = string.Join(",", model.UserIds);
            }

            return RedirectToAction("Edit", "Patient", new { patientId = model.PatientId });
        }

        [HttpGet]
        [Attributes.HandleError(Order = 1)]
        [Authorize(Order = 4)]
        public ActionResult Delete(Guid patientId)
        {
            _patientService.Delete(patientId);

            return RedirectToAction("List", "Patient");
        }

        [HttpPost]
        [Authorize(Order = 4)]
        public ActionResult UploadAvatar()
        {

            Guid patientId = Guid.Parse(Request.Form["patientId"]);

            if (Request.Files.Count > 0)
            {
                var file = Request.Files[0];

                if (file != null && file.ContentLength > 0)
                {
                    var fileName = Path.GetFileName(file.FileName);
                    var path = Path.GetTempFileName();
                    file.SaveAs(path);

                    byte[] bytes = System.IO.File.ReadAllBytes(path);
                    _patientService.SaveAvatar(patientId, bytes);

                }
            }

            return Redirect(Request.UrlReferrer.AbsoluteUri);
        }

        #endregion
    }
}