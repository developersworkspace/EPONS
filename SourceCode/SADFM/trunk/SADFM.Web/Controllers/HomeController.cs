using OpenServices.Web.Attributes;
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
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        public ActionResult Index()
        {
            var user = UserHelper.GetCurrentAccount();
            if (user.AccountType == "SuperAdmin")
                return RedirectToAction("Users", "Administration");
            else if (UserHelper.SelectedClientType != null && UserHelper.SelectedClientType.Equals("Funder") && user.Permissions.FirstOrDefault(x => x.PermissionDescription == "Mass Data User") != null)
                return RedirectToAction("MassDataReport", "Report");
            else
                return RedirectToAction("PatientList", "Patient");
       
        }
    }
}