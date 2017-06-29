using OpenServices.Web.Attributes;
using SADFM.Data;
using SADFM.Data.Models;
using SADFM.Web.Filters;
using SADFM.Web.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SADFM.Web.Controllers
{
    [Log]
    [Secured]
    public class MessagesController : Controller
    {
        //
        // GET: /Messages/
        public ActionResult Inbox(string Patient)
        {
            if (!string.IsNullOrWhiteSpace(Patient))
                ViewBag.PatientContext = DataAccess.Patient.GetById(Guid.ParseExact(Patient, "N"));
            return View(UserHelper.GetCurrentAccount());
        }

        public JsonResult List()
        {
            if (!string.IsNullOrWhiteSpace(Request.Form["option"]) && !string.IsNullOrWhiteSpace(Request.Form["checked[]"]))
                switch (Request.Form["option"])
                {
                    case "unread": DataAccess.Account.MarkMessagesAsUnread(UserHelper.Username, Request.Form["checked[]"].Split(',')); break;
                    case "archive": DataAccess.Account.MarkMessagesAsArchived(UserHelper.Username, Request.Form["checked[]"].Split(',')); break;
                }
            string patientId = Request.Form["patientid"];
            SADFM.Web.Shared.Utilities.DataTableResult dtr =
                Utilities.DataTableJson(
                Request.Form,
                DataAccess.Account.GetMessagesByUsername(UserHelper.Username, patientId),
                null,
                x => x.ID, x => x.SentTimestamp, c => c.Patient, x => x.From, x => x.To, x => x.RecipientSummary, x => x.MessageSummary, x => x.IsRead, x => x.Age);
            dtr.extraData = UserHelper.GetCurrentAccount().UnreadMessageCount;
            return Json(dtr);
        }

        public JsonResult Read(string ID)
        {
            var message = DataAccess.Account.GetMessage(BaseModel.DecryptId(ID), UserHelper.Username);
            return Json(new
            {
                Message = message,
                NewUnreadCount = UserHelper.GetCurrentAccount().UnreadMessageCount
            });
        }

        public JsonResult RecipientList(string query)
        {
            return Json(DataAccess.Account.RecipientSearch(query.ToLower()), JsonRequestBehavior.AllowGet);
        }

        [ValidateInput(false)]
        public JsonResult SendMessage(string patientid, List<string> To, string Body)
        {
            DataAccess.Account.SendMessage(patientid, UserHelper.Username, To, Body);
            return Json(true);
        }
    }
}