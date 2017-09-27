﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class AccountController : BaseController
    {
        [HttpGet]
        public ActionResult Login()
        {
            return RedirectToAction("Login", "User");
        }
    }
}