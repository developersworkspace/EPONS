using SADFM.Application.Services;
using SADFM.Infrastructure.Services;
using SADFM.WebApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SADFM.WebApplication.Controllers
{
    public class AccountController : Controller
    {
        private IAccountService AccountService;

        public AccountController(IAccountService accountService)
        {
            this.AccountService = accountService;
        }

        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(LoginViewModel model)
        {
            return View();
        }

        [HttpGet]
        public ActionResult ForgotPassword()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ForgotPassword(ForgotPasswordViewModel model)
        {
            return View();
        }

        public ActionResult Disclaimer()
        {
            return View();
        }
    }
}