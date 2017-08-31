using EPONS.Teddy.Application.Repositories;
using EPONS.Teddy.Application.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class AjaxController : BaseController
    {
        private PatientService _patientService;
        private UserService _userService;
        private ListRepository _listRepository;

        public AjaxController()
        {
            _patientService = new PatientService(GetConnection());
            _listRepository = new ListRepository(GetConnection());
            _userService = new UserService(GetConnection());
        }

        #region Action Methods

        [HttpGet]
        public ActionResult CityCombobox(Guid? patientId, Guid? provinceId = null)
        {

            if (!provinceId.HasValue)
                return View(new Application.Entities.Patient());

            Application.Entities.Patient patient = new Application.Entities.Patient();
            if (patientId.HasValue && patientId != Guid.Empty)
            {
                patient = _patientService.Get(patientId.Value);
            }

            IList<Application.ValueObjects.ListItem> cities = _listRepository.GetCities(provinceId.Value);

            patient.Cities = cities;

            return View(patient);
        }

        [HttpGet]
        public ActionResult ProvinceCombobox(Guid? patientId, Guid? countryId = null)
        {

            if (!countryId.HasValue)
                return View(new Application.Entities.Patient());

            Application.Entities.Patient patient = new Application.Entities.Patient();
            if (patientId.HasValue && patientId != Guid.Empty)
            {
                patient = _patientService.Get(patientId.Value);
            }

            List<Application.ValueObjects.ListItem> provinces = _listRepository.GetProvince(countryId.Value);

            patient.Provinces = provinces;

            return View(patient);
        }



        [HttpGet]
        public ActionResult SearchICD10Codes(string query)
        {
            IList<Application.ValueObjects.ListItem> icd10Codes = _listRepository.GetICD10Codes(query);

            return Json(icd10Codes.Select(x => new { id = x.Id, name = x.Name }), JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public ActionResult FacilityUsers(Guid patientId, Guid facilityId)
        {
            IList<Application.EntityViews.TeamMember> teamMembers = _patientService.ListTeamMembers(patientId);

            IList<Application.ValueObjects.ListItem> facilityUsers = _listRepository.GetFacilityUsers(facilityId).Where(x => teamMembers.Count(y => y.Id == x.Id && !y.DeallocationDate.HasValue) == 0).ToList();

            return View(new ViewObjects.Modals.AllocateTeamMember()
            {
                Users = new SelectList(facilityUsers, "Id", "Name")
            });
        }

        [HttpPost]
        [Authorize]
        public ActionResult SendMessage(string message)
        {
            try
            {
                SendNotification(string.Format("<b>{0}</b> has sent a message from {1} <br/> <br/>  {2}", this.User.Identity.Name, Request.UrlReferrer.AbsoluteUri, message), "red");
            }
            catch
            {

            }
            return Redirect(Request.UrlReferrer.AbsoluteUri);
        }

        #endregion

    }
}