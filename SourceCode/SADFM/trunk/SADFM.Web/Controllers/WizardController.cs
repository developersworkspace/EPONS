using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SADFM.Web.Controllers
{
    public class WizardController : Controller
    {
        public ActionResult Patient()
        {
            return View();
        }

        public ActionResult Case()
        {
            return View();
        }
	}
}