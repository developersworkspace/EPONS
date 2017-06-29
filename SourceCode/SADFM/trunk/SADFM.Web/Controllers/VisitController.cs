using OpenServices.Web.Attributes;
using SADFM.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SADFM.Web.Controllers
{
    [Log]
    public class VisitController : Controller
    {
        [HttpGet]
        public JsonResult SetPrivate(Guid id, bool isPrivate)
        {
            DataAccess.Visit.SetPrivate(id, isPrivate);

            return Json(new { success = true }, JsonRequestBehavior.AllowGet);
        }
    }
}