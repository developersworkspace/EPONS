﻿#if(DEBUG)
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SADFM.Web.Controllers
{
    public class GraphsController : Controller
    {

        public ActionResult Flot()
        {
            return View();
        }

        public ActionResult Morris()
        {
            return View();
        }

        public ActionResult Rickshaw()
        {
            return View();
        }

        public ActionResult Chartjs()
        {
            return View();
        }
        public ActionResult Peity()
        {
            return View();
        }

        public ActionResult Sparkline()
        {
            return View();
        }

        public ActionResult N3()
        {
            return View();
        }

    }
}
#endif