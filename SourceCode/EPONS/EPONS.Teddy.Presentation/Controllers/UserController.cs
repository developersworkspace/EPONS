using EPONS.Teddy.Application.Exceptions;
using EPONS.Teddy.Application.Repositories;
using EPONS.Teddy.Application.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using System.Web.Security;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class UserController : BaseController
    {
        private UserService _userService;
        private ListRepository _listRepository;

        public UserController()
        {
            _userService = new UserService(GetConnection());
            _listRepository = new ListRepository(GetConnection());
        }

        #region Action Methods

        [HttpGet]
        public ActionResult Login()
        {
            return View(new ViewObjects.User.Login());
        }


        //[HttpGet]
        //public ActionResult LoginGoogle()
        //{
        //    return Redirect(_oauthService.GetAuthorizationRequestUrl());
        //}

        [HttpGet]
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login", "User");
        }

        [HttpPost]
        [ValidateAntiForgeryToken(Order = 4)]
        public ActionResult Login(ViewObjects.User.Login model)
        {
            Application.EntityViews.User user = _userService.Validate(model.Username, model.Password);

            if (user == null)
            {
                ViewBag.ErrorMessage = "Invalid login credentials";
                return View(new ViewObjects.User.Login()
                {
                    Username = model.Username
                });
            }

            FormsAuthentication.SetAuthCookie(user.Username, true);


            if (!string.IsNullOrWhiteSpace(Request["ReturnUrl"]))
                return Redirect(Request["ReturnUrl"]);
            else
                return RedirectToAction("", "");
        }

        //[HttpGet]
        //public ActionResult ForgotPassword()
        //{
        //    FormsAuthentication.SignOut();
        //    return View(new Models.UserForgotPassword());
        //}

        //[HttpPost]
        //[ValidateAntiForgeryToken(Order = 4)]
        //public ActionResult ForgotPassword(ViewModels.Credentials model)
        //{
        //    _userService.RequestForgotPassword(model.Username);

        //    return RedirectToAction("Login", "User");
        //}

        //[HttpGet]
        //public ActionResult ResetPassword(string key, string checksum)
        //{
        //    FormsAuthentication.SignOut();
        //    return View(new UserResetPassword()
        //    {
        //        Key = key,
        //        Checksum = checksum
        //    });
        //}

        //[HttpPost]
        //[ValidateAntiForgeryToken(Order = 4)]
        //public ActionResult ResetPassword(UserResetPassword model)
        //{
        //    _userService.ResetPassword(model.Key, model.Checksum, model.NewPassword);

        //    return RedirectToAction("Login", "User");
        //}


        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult SetFacility(Guid facilityId)
        {
            _userService.SetFacility(User.Identity.Name, facilityId);

            return Redirect(Request.UrlReferrer.AbsoluteUri);
        }
        public ActionResult SetPosition(Guid PositionId)
        {
            _userService.SetPosition(User.Identity.Name, PositionId);

            return Redirect(Request.UrlReferrer.AbsoluteUri);
        }
        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult Impersonate(string username)
        {
            FormsAuthentication.SetAuthCookie(username, true);

            return RedirectToAction("", "");
        }

        [HttpGet]
        [Authorize(Order = 4)]

        public ActionResult Avatar(Guid userId)
        {
            byte[] bytes = _userService.Avatar(userId);

            if (bytes == null)
                return File(Server.MapPath("/Content/img/nopatient.png"), "image/png");

            return File(bytes, "image/png");
        }

        [HttpGet]
        [Authorize(Order = 4)]

        public ActionResult Edit(Guid userId)
        {
            var baseObject = GetBaseObject();

            Application.Entities.User userModel = _userService.Get(userId);
            IList<Application.ValueObjects.FacilityPermission> userFacilityPermissions = _userService.ListFacilityPermissions(userId);

            if (baseObject.User.Id != userModel.Id && !baseObject.User.IsSuperAdmin)
                throw new BusinessRuleException("Not authorized to view this user");

            return View(new ViewObjects.User.Edit(baseObject)
            {
                UserModel = userModel,
                UserModelFacilityPermissions = userFacilityPermissions,
                MeasurementTools = _listRepository.GetMeasurementTools(),
                Facilities = _listRepository.GetFacilities(),
                Permissions = _listRepository.GetPermissions()
            });
        }

        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]

        public ActionResult Edit(Application.Entities.User model)
        {
            bool result = _userService.Save(model);

            return RedirectToAction("Edit", "User", new { userId = model.Id });
        }

        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]

        public ActionResult Create(Application.Entities.User model)
        {
            var baseObject = GetBaseObject();

            if (!baseObject.User.IsSuperAdmin)
                new BusinessRuleException("Access Denied");

            _userService.Create(model);

            return RedirectToAction("List", "Administration");
        }

        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]
        public ActionResult AddFacilityPermission(Application.ValueObjects.FacilityPermission model)
        {
            _userService.AddFacilityPermission(model.UserId, model.FacilityId, model.PermissionId);

            return RedirectToAction("Edit", "User", new { userId = model.UserId });
        }

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult RemoveFacilityPermission(Guid userId, Guid facilityId, Guid permissionId)
        {
            _userService.RemoveFacilityPermission(userId, facilityId, permissionId);

            return RedirectToAction("Edit", "User", new { userId = userId });
        }


        [HttpGet]
        [Authorize(Order = 4)]

        public ActionResult Lock(Guid userId)
        {
            _userService.Lock(userId);

            return RedirectToAction("Edit", "User", new { userId = userId });
        }

        [HttpGet]
        [Authorize(Order = 4)]

        public ActionResult Unlock(Guid userId)
        {
            _userService.Unlock(userId);

            return RedirectToAction("Edit", "User", new { userId = userId });
        }

        [HttpGet]
        [Authorize(Order = 4)]

        public ActionResult AcceptDisclaimer()
        {
            _userService.AcceptDisclaimer(this.User.Identity.Name);

            return Redirect(Request.UrlReferrer.AbsoluteUri);
        }

        [HttpPost]
        [Authorize(Order = 4)]

        public ActionResult AddMeasurementToolScore(Application.ValueObjects.MeasurementToolScore model)
        {
            _userService.AddMeasurementToolScore(model.UserId, model.Id, model.Score);

            return Redirect(Request.UrlReferrer.AbsoluteUri);
        }

        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]

        public ActionResult ChangePassword(ViewObjects.User.ChangePassword model)
        {
            _userService.ChangePassword(model.UserId, model.NewPassword);

            return Redirect(Request.UrlReferrer.AbsoluteUri);
        }
        #endregion
    }
}