using SADFM.Web.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace SADFM.Web.Filters
{
    public class SecuredAttribute : AuthorizeAttribute
    {
        private string[] AllowedPermissions;
        public SecuredAttribute(params string[] AllowedPermissions)
        {
            this.AllowedPermissions = AllowedPermissions;
        }

        public override void OnAuthorization(AuthorizationContext filterContext)
        {

            Data.Models.Account account = UserHelper.GetCurrentAccount();

            if (account != null)
                if (account.DisclaimerAgreeTimestamp == null)
                {
                    filterContext.Result = new RedirectResult("/Account/Disclaimer");
                    return;
                }

            if (!filterContext.HttpContext.User.Identity.IsAuthenticated)
            {
                filterContext.Result = new RedirectResult(FormsAuthentication.LoginUrl);
                return;
            }

            if (account != null)
            {


                if (account.FirstSignIn && !filterContext.RequestContext.HttpContext.Request.Url.PathAndQuery.ToLower().EndsWith("/account/profile") && !filterContext.RequestContext.HttpContext.Request.Url.PathAndQuery.ToLower().EndsWith("/account/saveprofile") && !filterContext.RequestContext.HttpContext.Request.Url.PathAndQuery.ToLower().EndsWith("/account/logout"))
                {
                    filterContext.Result = new RedirectResult("/Account/Profile");
                    return;
                }
            }
            else
            {
                filterContext.Result = new RedirectResult("/Account/Login");
                return;
            }
            /*
             * bool allowed = false;
            if (AllowedPermissions.Length != 0)
            {
                Data.Models.Account account = UserHelper.GetCurrentAccount();
                allowed = AllowedPermissions.Contains(account.Role);
            }
            else
                allowed = true;
            if (!allowed)
            {
                filterContext.Result = new RedirectResult(FormsAuthentication.DefaultUrl);
                return;
            }
            

            if (account.AccountType != "SuperAdmin")
            {
                if (!UserHelper.SelectedClientId.HasValue)
                    if (!filterContext.RequestContext.HttpContext.Request.Url.PathAndQuery.ToLower().EndsWith("/account/multipleproviders")) {
                        var tmp = account.Permissions.Select(p => p.GetClientId()).Distinct();
                        if (tmp.Count() == 1)
                             UserHelper.SetSelectedClientId(tmp.First());
                }
                if (!UserHelper.SelectedClientId.HasValue)
                {
                    filterContext.Result = new RedirectResult("/Account/MultipleProviders");
                    return;
                }
            }

            */

            base.OnAuthorization(filterContext);
        }
    }
}