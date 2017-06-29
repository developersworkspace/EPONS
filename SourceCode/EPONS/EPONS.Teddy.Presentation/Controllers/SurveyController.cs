using EPONS.Teddy.Application.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class SurveyController : BaseController
    {
        private SurveyService _surveyService;
        private PatientService _patientService;

        public SurveyController()
        {
            _surveyService = new SurveyService(GetConnection());
            _patientService = new PatientService(GetConnection());
        }

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult Index(Guid patientId, Guid surveyId)
        {
            var baseObject = GetBaseObject();

            return View(new ViewObjects.Survey.Index(baseObject)
            {
                Patient = _patientService.Get(patientId),
                Survey = _surveyService.Get(surveyId)
            });
        }

        [HttpPost]
        [Authorize(Order = 4)]
        public ActionResult Index(ViewObjects.Survey.Index model)
        {
            var baseObject = GetBaseObject();

            Guid[] surveyOptions = Request.Form.AllKeys.Where(x => x.StartsWith("SurveyOptions_")).Select(x => Guid.Parse(Request.Form[x])).ToArray();

            _surveyService.Create(model.Patient.Id, baseObject.User.Id, surveyOptions);

            return RedirectToAction("Edit", "Patient", new
            {
                patientId = model.Patient.Id
            });
        }
    }
}