﻿#if(DEBUG)
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SADFM.Web.Controllers
{
    public class WidgetsController : Controller
    {

        public ActionResult Index()
        {
            return View();
        }
	}
}
#endif