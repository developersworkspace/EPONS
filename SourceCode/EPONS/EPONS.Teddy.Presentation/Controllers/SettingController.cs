using EPONS.Teddy.Application.Exceptions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class SettingController : BaseController
    {
        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult Index()
        {
            var baseObject = GetBaseObject();

            if (!baseObject.User.IsSuperAdmin)
                new BusinessRuleException("Access Denied");

            return View();
        }
    }
}