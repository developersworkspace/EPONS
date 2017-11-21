using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class HelpController : Controller
    {
        // GET: Help
        public ActionResult UserManual()
        {
            return new FileContentResult(System.IO.File.ReadAllBytes(ConfigurationManager.AppSettings["UserManualPath"]), "application/pdf");
        }
    }
}