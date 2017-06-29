using EPONS.Teddy.Application.Exceptions;
using EPONS.Teddy.Application.Repositories;
using EPONS.Teddy.Application.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class VisitController : BaseController
    {
        private PatientService _patientService;
        private VisitService _visitService;
        private ListRepository _listRepository;
        private EpisodesofCareRepository _EpisodeOfCare;

        public VisitController()
        {
            _patientService = new PatientService(GetConnection());
            _visitService = new VisitService(GetConnection());
            _listRepository = new ListRepository(GetConnection());
            _EpisodeOfCare = new EpisodesofCareRepository(GetConnection());
        }

        #region Action Methods

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult Create(Guid patientId)
        {
            var baseObject = GetBaseObject();

            Application.Entities.Patient patient = _patientService.Get(patientId);
          
            IList<Application.EntityViews.MeasurementTool> measurementTools =_visitService.GetMeasurementToolsForVisit(patientId);
            IList<Application.EntityViews.TeamMember> teamMembers = _patientService.ListTeamMembers(patientId);
            IList<Application.EntityViews.CompletedMeasurementTool> completedMeasurementTools = _patientService.ListCompletedMeasurementTools(patient.Id, DateTime.Now.AddYears(-1), DateTime.Now);

            if (!patient.CanAccess(baseObject.User, teamMembers, baseObject.User.Permissions))
                throw new BusinessRuleException("You are not autorized to view this patient");


            foreach (var measurementTool in measurementTools)
            {
                var temp = completedMeasurementTools.OrderByDescending(x => x.EndDate).FirstOrDefault(x => x.Id == measurementTool.Id);
                measurementTool.LastCompletedTimestamp = temp == null ? (DateTime?)null : temp.EndDate;
            }

            if (!patient.CanAccess(baseObject.User, teamMembers, baseObject.User.Permissions))
                throw new BusinessRuleException("You are not autorized to view this patient");

            return View(new ViewObjects.Visit.Create(baseObject)
            {
                Visit = new Application.Entities.Visit()
                {
                    PatientId = patientId,
                    Timestamp = DateTime.Now,
                    ImpairmentGroups = _listRepository.GetImpairmentGroups()
               
                },
                Patient = patient,
                MeasurementTools = measurementTools,
                Surveys = _patientService.ListSurveys(patientId)
            });
        }

        [HttpPost]
        [ValidateInput(false, Order = 1)]
        [Authorize(Order = 5)]
        [ValidateAntiForgeryToken(Order = 6)]
        public ActionResult Create(Application.Entities.Visit model)
        {
            var baseObject = GetBaseObject();

            Guid[] scoreValues = Request.Form.AllKeys.Where(x => x.StartsWith("ScoreValues_")).Select(x => Guid.Parse(Request.Form[x])).ToArray();

            var patient = _patientService.Get(model.PatientId);
            
            if (model.BloodPressureDiastolic > model.BloodPressureSystolic)
            {
                ModelState.AddModelError("BloodPressureDiastolic", "The diastolic cannot be higher than the systolic");

                IList<Application.EntityViews.TeamMember> teamMembers = _patientService.ListTeamMembers(model.PatientId);
                IList<Application.EntityViews.MeasurementTool> measurementTools = _visitService.GetMeasurementToolsForVisit(model.PatientId);

                if (!patient.CanAccess(baseObject.User, teamMembers, baseObject.User.Permissions))
                    throw new BusinessRuleException("You are not autorized to view this patient");

                return View(new ViewObjects.Visit.Create(baseObject)
                {
                    Visit = new Application.Entities.Visit()
                    {
                        PatientId = model.PatientId,
                        ImpairmentGroups = _listRepository.GetImpairmentGroups(),
                        ImpairmentGroupId = model.ImpairmentGroupId
                    },
                    Patient = patient,
                    MeasurementTools = measurementTools,
                    ScoreValues = scoreValues
                });
            }

            _visitService.Create(this.User.Identity.Name, model, scoreValues); 


            return RedirectToAction("Edit", "Patient", new { patientId = model.PatientId });
        }

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult Edit(Guid visitId, Guid patientId)
        {
            var baseObject = GetBaseObject();

            var visit = _visitService.Get(visitId);
            var patient = _patientService.Get(patientId);

            IList<Application.EntityViews.MeasurementTool> measurementTools = _visitService.GetMeasurementToolsOfVisit(visitId);
            IList<Application.EntityViews.TeamMember> teamMembers = _patientService.ListTeamMembers(patientId);
            IList<Guid> scoreValues = _visitService.GetVisitScoreValues(visitId);

            if (!patient.CanAccess(baseObject.User, teamMembers, baseObject.User.Permissions))
                throw new BusinessRuleException("You are not autorized to view this patient");

            return View(new ViewObjects.Visit.Create(baseObject)
            {
                Visit = visit,
                Patient = patient,
                MeasurementTools = measurementTools,
                ScoreValues = scoreValues.ToArray()
            });
        }

        #endregion
    }
}