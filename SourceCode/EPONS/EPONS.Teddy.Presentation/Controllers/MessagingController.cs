using EPONS.Teddy.Application.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class MessagingController : BaseController
    {
        private MessagingService _messagingService;
        private PatientService _patientService;

        public MessagingController()
        {
            _messagingService = new MessagingService(new Application.Repositories.MessagingRepository(GetConnection()));
            _patientService = new PatientService(GetConnection());
        }

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult Index()
        {
            var baseObject = GetBaseObject();

            return View(new ViewObjects.Messaging.Index(baseObject)
            {
                MessagesList = _messagingService.Retrieve(baseObject.User.Id)
            });
        }

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult SendPatient(Guid patientId)
        {
            var baseObject = GetBaseObject();

            var messages = _messagingService.RetrieveByPatientId(patientId);

            var lastRecievedMessage = messages.FirstOrDefault();

            if (lastRecievedMessage != null)
                _messagingService.MarkAsRead(baseObject.User.Id, patientId, lastRecievedMessage.Timestamp.AddMinutes(1));

            baseObject = GetBaseObject();

            return View(new ViewObjects.Messaging.SendPatient(baseObject)
            {
                MessagesList = messages,
                Patient = _patientService.Get(patientId),
                TeamMembers = _patientService.ListTeamMembers(patientId).GroupBy(x => x.Id).Select(x => x.First()).ToList()
            });
        }

        [HttpPost]
        [Authorize(Order = 4)]
        public ActionResult SendPatient(ViewObjects.Messaging.SendPatientPost model)
        {
            var baseObject = GetBaseObject();

            _messagingService.Send(baseObject.User.Id, model.UserIds.Where(x => x != Guid.Empty).ToArray(), model.PatientId, model.Message);

            var messages = _messagingService.RetrieveByPatientId(model.PatientId);

            var lastRecievedMessage = messages.FirstOrDefault();

            if (lastRecievedMessage != null)
                _messagingService.MarkAsRead(baseObject.User.Id, model.PatientId, lastRecievedMessage.Timestamp.AddMinutes(1));

            baseObject = GetBaseObject();

            return View(new ViewObjects.Messaging.SendPatient(baseObject)
            {
                MessagesList = messages,
                Patient = _patientService.Get(model.PatientId),
                TeamMembers = _patientService.ListTeamMembers(model.PatientId).GroupBy(x => x.Id).Select(x => x.First()).ToList()
            });
        }
    }
}