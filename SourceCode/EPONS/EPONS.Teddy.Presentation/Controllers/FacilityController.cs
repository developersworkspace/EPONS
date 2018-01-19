using EPONS.Teddy.Application.Exceptions;
using EPONS.Teddy.Application.Repositories;
using EPONS.Teddy.Application.Services;
using System;
using System.IO;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class FacilityController : BaseController
    {
        private FacilityService _facilityService;
        private ListRepository _listRepository;

        public FacilityController()
        {
            _facilityService = new FacilityService(GetConnection());
            _listRepository = new ListRepository(GetConnection());
        }

        #region Action Methods

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult List()
        {
            var baseObject = GetBaseObject();

            if (!baseObject.User.IsSuperAdmin)
                new BusinessRuleException("Access Denied");

            return View(new ViewObjects.Facility.List(baseObject)
            {
                Facilities = _facilityService.List()
            });
        }

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult Create()
        {
            var baseObject = GetBaseObject();

            if (!baseObject.User.IsSuperAdmin)
                new BusinessRuleException("Access Denied");

            return View(new ViewObjects.Facility.Create(baseObject)
            {
                Facility = new Application.Entities.Facility()
                {
                    AdmissionTypes = _listRepository.GetAdmissionTypes()
                }
            });
        }

        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]
        public ActionResult Create(Application.Entities.Facility model)
        {
            var baseObject = GetBaseObject();

            if (!baseObject.User.IsSuperAdmin)
                new BusinessRuleException("Access Denied");

            _facilityService.Create(model);

            return RedirectToAction("List", "Facility");
        }

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult Edit(Guid facilityId)
        {
            var baseObject = GetBaseObject();

            if (!baseObject.User.IsSuperAdmin)
                new BusinessRuleException("Access Denied");

            var facility = _facilityService.Get(facilityId);

            return View(new ViewObjects.Facility.Edit(baseObject)
            {
                Facility = facility,
                MeasurementTools = _facilityService.ListMeasurementTools(facilityId),
                MeasurementToolList = _listRepository.GetMeasurementTools()
            });
        }

        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]
        public ActionResult Edit(Application.Entities.Facility model)
        {
            var baseObject = GetBaseObject();

            if (!baseObject.User.IsSuperAdmin)
                new BusinessRuleException("Access Denied");

            _facilityService.Save(model);

            return RedirectToAction("Edit", "Facility", new { facilityId = model.Id });
        }

        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]
        public ActionResult AddMeasurementTool(ViewObjects.Modals.AddMeasurementTool model)
        {
            var baseObject = GetBaseObject();

            if (!baseObject.User.IsSuperAdmin)
                new BusinessRuleException("Access Denied");

            _facilityService.AddMeasurementTool(model.FacilityId, model.MeasurementToolId);

            return RedirectToAction("Edit", "Facility", new { facilityId = model.FacilityId });
        }

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult RemoveMeasurementTool(Guid facilityId, Guid measurementToolId)
        {
            var baseObject = GetBaseObject();

            if (!baseObject.User.IsSuperAdmin)
                new BusinessRuleException("Access Denied");

            _facilityService.RemoveMeasurementTool(facilityId, measurementToolId);

            return RedirectToAction("Edit", "Facility", new { facilityId = facilityId });
        }


        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]
        public ActionResult UploadAvatar()
        {

            Guid facilityId = Guid.Parse(Request.Form["facilityId"]);

            if (Request.Files.Count > 0)
            {
                var file = Request.Files[0];

                if (file != null && file.ContentLength > 0)
                {
                    var fileName = Path.GetFileName(file.FileName);
                    var path = Path.GetTempFileName();
                    file.SaveAs(path);

                    byte[] bytes = System.IO.File.ReadAllBytes(path);
                    _facilityService.SaveAvatar(facilityId, bytes);

                }
            }

            return RedirectToAction("Edit", "Facility", new { facilityId = facilityId });
        }

        [HttpGet]
        [Authorize(Order = 4)]

        public ActionResult Avatar(Guid facilityId)
        {
            byte[] bytes = _facilityService.Avatar(facilityId);

            if (bytes == null)
                return File(Server.MapPath("/Content/img/nopatient.png"), "image/png");

            return File(bytes, "image/png");
        }

        [HttpGet]
        [Authorize(Order = 4)]

        public ActionResult Lock(Guid facilityId)
        {
            _facilityService.Lock(facilityId);

            return RedirectToAction("Edit", "Facility", new { facilityId = facilityId });
        }

        [HttpGet]
        [Authorize(Order = 4)]

        public ActionResult Unlock(Guid facilityId)
        {
            _facilityService.Unlock(facilityId);

            return RedirectToAction("Edit", "Facility", new { facilityId = facilityId });
        }

        #endregion
    }
}