using EPONS.Teddy.Application.Exceptions;
using EPONS.Teddy.Application.Repositories;
using EPONS.Teddy.Application.Services;
using RestSharp;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Web.Mvc;
using System.Web.Security;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class UserController : BaseController
    {
        private UserService _userService;
        private ListRepository _listRepository;

        // OAuth2 Details
        private const string OAuth2Uri = "http://epons-oauth2-framework.openservices.co.za";
        private const string ClientId = "0zyrWYATtw";
        private const string ClientSecret = "x3h8CTB2Cj";

        public UserController()
        {
            _userService = new UserService(GetConnection());
            _listRepository = new ListRepository(GetConnection());
        }

        #region Action Methods

        [HttpGet]
        public ActionResult Login()
        {
            string baseUrl = this.GetWebAppRoot();
            string redirectUri = $"{baseUrl}/User/Callback";
            string state = Guid.NewGuid().ToString();
            return Redirect($"{OAuth2Uri}/authorize?response_type=code&client_id={ClientId}&redirect_uri={redirectUri}&state={state}");
        }

        [HttpGet]
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login", "User");
        }

        [HttpGet]
        public ActionResult Callback(string code, string state)
        {
            var client = new RestClient(OAuth2Uri);
            var request = new RestRequest("/token", Method.POST);

            string baseUrl = this.GetWebAppRoot();
            string redirectUri = $"{baseUrl}/User/Callback";

            request.AddJsonBody(new
            {
                grant_type = "authorization_code",
                client_id = ClientId,
                client_secret = ClientSecret,
                code = code,
                redirect_uri = redirectUri
            });

            IRestResponse<Dictionary<string, string>> response = client.Execute<Dictionary<string, string>>(request);

            var token = new JwtSecurityToken(jwtEncodedString: response.Data["access_token"]);

            FormsAuthentication.SetAuthCookie(token.Payload["username"].ToString(), true);

            return RedirectToAction("", "Home");

        }

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult SetFacility(Guid facilityId)
        {
            _userService.SetFacility(User.Identity.Name, facilityId);

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

        private string GetWebAppRoot()
        {
            string host = (Request.Url.IsDefaultPort) ?
                Request.Url.Host :
                Request.Url.Authority;
            host = String.Format("{0}://{1}", Request.Url.Scheme, host);
            if (Request.ApplicationPath == "/")
                return host;
            else
                return host + Request.ApplicationPath;
        }
    }
}