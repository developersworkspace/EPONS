using SADFM.Data;
using SADFM.Web.Filters;
using SADFM.Web.Shared;
using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Configuration;
using System.Web.Mvc;
using System.Web.Security;
using System.Security.Cryptography;
using System.Net.Mail;
using System.Net.Mime;
using System.Xml.Linq;
using SADFM.Web.Models;
using System.Net;
using OpenServices.Web.Attributes;

namespace SADFM.Web.Controllers
{
    public class AccountController : Controller
    {

        [Log]
        public ActionResult Login()
        {

            return View();
        }

        [Log]
        [HttpPost]
        public ActionResult Login(Models.Login login)
        {

            if (!Utilities.ConfirmSecurity(login.Security))
                return View();

            SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "AccountController.Login:Start");

            Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
            Response.AddHeader("Expires", "Fri, 01 Jan 1990 00:00:00 GMT");
            Response.AddHeader("Pragma", "no-cache");

            SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "AccountController.Login:  - UserHelper.GetAccount");
            Data.Models.Account account = UserHelper.GetAccount(login.Username);
            SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "AccountController.Login:  - UserHelper.GetAccount done");


            if (account == null)
            {
                ViewBag.LoginErrorMessage = Library.GetText("InvalidLoginText");
                ViewBag.Username = login.Username;

                return View();

            }

            bool hasmultipleproviders = false;

            /*
            //has password expired
            DateTime PasswordDate = account.LastUpdateTimestamp;
            DateTime ComparisonDate = DateTime.Today;
            TimeSpan difference = ComparisonDate - PasswordDate;
            if (difference.TotalDays >= 90)
            {
                return Redirect("/Account/ResetPassword?User=" + login.Username + "&Providers=true");
            }

            */

            //first login?
            try
            {
                SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "AccountController.Login:  - UserHelper.DataAccess.Account.Validate");
                if (DataAccess.Account.Validate(login.Username, login.Password) == "Active")
                {
                    FormsAuthentication.SetAuthCookie(login.Username.ToLower(), login.RememberMe);

                    if (account.FirstSignIn)
                    {

                        return Redirect("/Account/ResetPassword?User=" + login.Username + "&Providers=" + hasmultipleproviders);
                    }
                    else if (account.ResetBySuperAdmin)
                    {
                        return Redirect("/Account/Disclaimer?User=" + login.Username + "&Providers=" + hasmultipleproviders);
                    }

                    List<Guid> clients = account.Permissions.Select(kvp => kvp.GetClientId()).Distinct().ToList();

                    if (clients.Count < 2)
                    {
                        if (clients.Count == 1)
                            UserHelper.SetSelectedClientId(login.Username.ToLower(), clients[0]);
                        return Redirect(FormsAuthentication.DefaultUrl);
                    }
                    else
                    {
                        return Redirect("/Account/MultipleProviders?User=" + login.Username + "&Providers=" + hasmultipleproviders);
                    }
                }
                else
                {
                    ViewBag.LoginErrorMessage = Library.GetText("InvalidLoginText");
                    ViewBag.Username = login.Username;
                    ViewBag.MultipleProviders = hasmultipleproviders;
                    if (hasmultipleproviders)
                    {
                        Models.ManageUserViewModel manageuser = new Models.ManageUserViewModel();

                        manageuser.Username = login.Username;
                        ViewBag.MultipleProviders = hasmultipleproviders;
                        manageuser.MultipleProviderMember = ViewBag.MultipleProviders;
                        ViewBag.UserName = login.Username;
                        return Redirect("/Account/MultipleProviders?User=" + login.Username + "&Providers=" + hasmultipleproviders);
                    }
                    else
                    {
                        return View();
                    }

                }
            }
            finally
            {
                SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "AccountController.Login:  - UserHelper.DataAccess.Account.Validate Done");
            }
        }

        [Log]
        [HttpPost]
        public ActionResult ChangeStatus(string id, bool active)
        {
            return Json(DataAccess.Account.SetActiveStatus(id, active, UserHelper.Username));
        }

        [Log]
        [HttpPost]
        public ActionResult SignDisclaimer(Models.ManageUserViewModel model, string oldpassword, string HiddenNewPassword, string securityquestion, string SecurityQuestionID, string SecurityQuestionAnswer, string hdnusername, string chkconfirmagree, string HiddenchkAgree, string accountid, string multiple)
        {

            var thisAccount = UserHelper.GetCurrentAccount();

            if (chkconfirmagree == "on" && HiddenchkAgree == "on")
            {
                SADFM.Data.Models.UpdateResult updateResult = DataAccess.Account.SignDisclaimer(UserHelper.Username);

            }

            if (UserHelper.SelectedClientId == null)
            {

                //set default client
                List<Guid> clients = thisAccount.Permissions.Select(kvp => kvp.GetClientId()).Distinct().ToList();

                if (clients.Count < 2)
                {
                    if (clients.Count == 1)
                        UserHelper.SetSelectedClientId(UserHelper.Username, clients[0]);
                }
                else
                {
                    return View("MultipleProviders", (object)"account/profile");
                }

            }

            return RedirectToAction("Profile", "Account");
        }


        [Log]
        public ActionResult MultipleProviders()
        {
            return View();
        }

        [Log]
        [HttpPost]
        public JsonResult SetProvider(string providerId)
        {

            UserHelper.SetSelectedClientId(SADFM.Data.Models.BaseModel.DecryptId(providerId));

            return Json(new SADFM.Data.Models.UpdateResult(true));
        }

        [Log]
        [Secured]
        public ActionResult Profile()
        {
            var account = UserHelper.GetCurrentAccount();
            return View(account);
        }

        [Log]
        [Secured]
        [HttpPost]
        public JsonResult SaveProfile(Data.Models.Account account)
        {
            return Json(UserHelper.SaveProfile(account));
        }

        [Log]
        [Secured]
        [HttpPost]
        public JsonResult SaveNewPassword(Models.ChangePasswordModel model)
        {
            return Json(DataAccess.Account.SetNewPassword(model.AccountID, model.NewPassword, model.OldPassword, model.Origin.ToLower().Equals("/account/profile")));
        }


        [Log]
        public ActionResult ForgotPassword()
        {

            return View();
        }

        [Log]
        public ActionResult Notify()
        {

            return View();
        }

        [Log]
        public ActionResult PasswordExpired()
        {
            string username = string.Empty;
            if (Request.QueryString.HasKeys())
            {
                List<string> keys = new List<string>(Request.QueryString.AllKeys);
                if (keys.Contains("User") && Request.QueryString["User"].Length > 0)
                {
                    username = Request.QueryString["User"];

                }
                if (keys.Contains("Providers") && Request.QueryString["Providers"].Length > 0)
                {
                    ViewBag.MultipleProviders = Request.QueryString["Providers"];
                }

            }
            Models.ManageUserViewModel manageuser = new Models.ManageUserViewModel();
            manageuser.Username = username;
            ViewBag.UserName = username;
            return View("PasswordExpired", manageuser);
        }

        [Log]
        [HttpPost]
        public ActionResult SecurityQuestion(Models.ForgotPasswordViewModel ForgotPassword, string emailbtn, string questionbtn, string Username, string multiple)
        {
            //check again here if multiple providers
            bool hasmultipleproviders = false;
            if (multiple == "True")
            {
                hasmultipleproviders = true;
                ViewBag.MultipleUsers = multiple;
            }
            var button = emailbtn ?? questionbtn;
            string username = string.Empty;
            if (Request.QueryString.HasKeys())
            {
                List<string> keys = new List<string>(Request.QueryString.AllKeys);
                if (keys.Contains("Msg") && Request.QueryString["Msg"].Length > 0)
                {
                    ViewBag.Message = "Wrong answer provided. Please try again.";
                    button = "questionbtn";
                }

            }

            if (button == "emailbtn")
            {
                try
                {
                    //  bool verifylinksent ;//= false;
                    string email = DataAccess.Account.GetAccountEmailAddress(Username);
                    string firstname = DataAccess.Account.GetAccountByUsername(Username).FirstName;
                    Guid act = DataAccess.Account.GetAccountIdByUsername(Username);

                    var verifyUrl = System.Web.HttpContext.Current.Request.Url.GetLeftPart
                   (UriPartial.Authority) + "/Account/Reset/" + act;

                    SendResetPasswordEmailLink(verifyUrl, email, Username, act.ToString(), firstname, "");

                    return Redirect("/Account/Notify");

                }
                catch (Exception ex)
                {

                }

                return Redirect("/Account/Login");
            }
            if (button == "questionbtn")
            {
                Models.ManageUserViewModel manageuser = new Models.ManageUserViewModel();

                Guid? QuestionId;
                QuestionId = DataAccess.Account.GetAccountSecurityQuestionId(Username);
                manageuser.SecurityQuestion = DataAccess.ListItem.GetListItemDescriptionByName(Guid.Parse(QuestionId.ToString()));
                manageuser.MultipleProviderMember = hasmultipleproviders;
                manageuser.Username = Username;
                StringBuilder sb = new StringBuilder();
                sb.Append(manageuser.Username);
                sb.Append(":");
                sb.Append(" ");
                sb.AppendLine();
                sb.Append(manageuser.SecurityQuestion);
                ViewBag.Message = sb.ToString();
                ViewBag.UserName = manageuser.Username;
                if (hasmultipleproviders.ToString() == "True")
                {
                    ViewBag.MultipleUsers = "True";
                }
                else
                {
                    ViewBag.MultipleUsers = "False";
                }

                return View("SecurityQuestion", manageuser);

            }
            return Redirect("/Account/Login");
        }

        [Log]
        public ActionResult Verify(string id)
        {

            if (HttpContext.User.Identity.IsAuthenticated)
                FormsAuthentication.SignOut();

            Data.Models.Account act = DataAccess.Account.GetAccountByAccountId(Guid.Parse(id));

            if (act == null || act.DateCreatedTimestamp != act.LastUpdateTimestamp)
                return Redirect("/");

            return View("ResetPassword");
        }

        [Log]
        public ActionResult Disclaimer()
        {
            string username = string.Empty;
            if (Request.QueryString.HasKeys())
            {
                List<string> keys = new List<string>(Request.QueryString.AllKeys);
                if (keys.Contains("User") && Request.QueryString["User"].Length > 0)
                {
                    username = Request.QueryString["User"];

                }

            }
            ViewBag.UserName = username;
            return View();
        }

        [Log]
        [HttpPost]
        public ActionResult Verify(Data.Models.Account model)
        {
            model.ID = Request.Url.Segments.Last();
            model = DataAccess.Account.VerifyAccount(model);
            if (model == null)
                return View("ResetPassword");

            FormsAuthentication.SetAuthCookie(model.Username.ToLower(), false);

            return RedirectToAction("Disclaimer");
        }

        public void SendResetPasswordEmailLink(string verifyurl, string useremail, string username, string accountid, string firstname, string accounttype)
        {

            StringBuilder xd = new StringBuilder();
            xd.Append(SADFMResetPasswordBodySetting(useremail, username, verifyurl, firstname));
            Shared.Utilities.SendMail(
               Constants.EmailFromAddress,
               Constants.EmailFromName,
               new List<string> { useremail },
               "Reset Password",
               xd.ToString(),
               linkedResources: null);
            //ReturnTrue.Utilities.Communication.Sender.SendEmail(useremail, "Reset Password", xd.ToString());

        }




        public static string SADFMResetPasswordBodySetting(string useremail, string username, string verifylink, string firstname)
        {

            string ret = string.Empty;
            ret = "<html><head><meta content=\"text/html; charset=utf-8\" /></head><body><p>Dear " + firstname + "," + "</p>"
                + "<p>Username: " + username + "</p>"
            + "<p>Reset password:</p>"
            + "<p>Please click the following link or copy and paste the link into your web browser:</p>"
            + "<p><a href=\"" + verifylink + "\" target=\"_blank\">" + verifylink
           + "</a><p>Regards,</p>"
           + "<p>Customer Service team,</p>"
            + "</p><div></div><div>SADFM</div></body></html>";
            return ret;
        }

        [Log]
        public ActionResult ResetPassword()
        {
            bool hasmultiple = false;
            string username = string.Empty;
            bool resetonly = false;
            if (Request.QueryString.HasKeys())
            {
                List<string> keys = new List<string>(Request.QueryString.AllKeys);
                if (keys.Contains("User") && Request.QueryString["User"].Length > 0)
                {
                    username = Request.QueryString["User"];

                }
                if (keys.Contains("chkconfirmagree") && Request.QueryString["chkconfirmagree"].ToString() == "on" && keys.Contains("chkagree") && Request.QueryString["chkagree"].ToString() == "on")
                {
                    resetonly = true;
                }
                else
                {
                    resetonly = false;
                }
                if (keys.Contains("Provider") && Request.QueryString["Provider"].Length > 0)
                {
                    if (Request.QueryString["Provider"] == "True")
                    {
                        hasmultiple = true;
                        ViewBag.MultipleProviders = hasmultiple;
                    }

                }
            }
            Models.ManageUserViewModel manageuser = new Models.ManageUserViewModel();

            manageuser.Username = username;
            if (!resetonly)
            {
                return View("ResetPassword", manageuser);
            }
            else
                return View("Reset", manageuser);
        }

        public enum ManageMessageId
        {
            ChangePasswordSuccess,
            SetPasswordSuccess,
            RemoveLoginSuccess,
            Error
        }

        // GET: /Account/Manage
        [Log]
        [HttpPost]
        public ActionResult ResetPassword(Models.ManageUserViewModel model, string oldpassword, string HiddenNewPassword, string securityquestion, string SecurityQuestionID, string SecurityQuestionAnswer, string hdnusername, string chkconfirmagree, string HiddenchkAgree, string accountid, string multiple)
        {
            bool hasmultiple = false;
            if (multiple != null)
            {
                if (multiple == "True")
                    hasmultiple = true;
                ViewBag.MultipleProviders = "True";
            }
            if (chkconfirmagree == "on" && HiddenchkAgree == "on")
            {
                return Redirect("/Account/Reset?User=" + hdnusername + "&chkconfirmagree=" + chkconfirmagree + "&chkagree=" + HiddenchkAgree + "&Provider=" + hasmultiple);
            }
            string username = string.Empty;
            if (Request.QueryString.HasKeys())
            {
                List<string> keys = new List<string>(Request.QueryString.AllKeys);
                if (keys.Contains("User") && Request.QueryString["User"].Length > 0)
                {
                    username = Request.QueryString["User"];

                }
                if (keys.Contains("Provider") && Request.QueryString["Provider"].Length > 0)
                {
                    if (Request.QueryString["Provider"] == "True")
                        hasmultiple = true;
                    ViewBag.MultipleProviders = "True";
                }

            }
            if (accountid == null)
            {
                accountid = string.Empty;
            }
            Guid securityquestionid = new Guid();
            if (SecurityQuestionID != null)
            {
                securityquestionid = SADFM.Data.Models.BaseModel.DecryptId(SecurityQuestionID);
                securityquestion = DataAccess.ListItem.GetListItemDescriptionByName(securityquestionid);
            }
            Models.ManageUserViewModel manageuser = new Models.ManageUserViewModel();
            manageuser.OldPassword = oldpassword;
            manageuser.NewPassword = HiddenNewPassword;
            manageuser.Username = hdnusername;
            manageuser.SecurityQuestion = securityquestion;
            manageuser.SecurityAnswer = SecurityQuestionAnswer;
            manageuser.MultipleProviderMember = hasmultiple;
            //           
            bool success = DataAccess.Account.ResetUserPassword(manageuser.NewPassword, manageuser.Username, securityquestion, SecurityQuestionAnswer, accountid, securityquestionid);
            Data.Models.Account thisaccount = new Data.Models.Account();
            thisaccount.Username = manageuser.Username;

            thisaccount = DataAccess.Account.GetAccountByUsername(manageuser.Username);
            if (success)
            {
                return View("Login");

            }
            else
                return View("ResetPassword");

        }

        [Log]
        public ActionResult Reset(string oldpassword, string HiddenNewPassword, string securityquestion, string securityanswer, string hdnusername, string id, string multiple)
        {
            bool hasmultiple = false;
            if (multiple != null)
            {
                if (multiple == "True")
                    hasmultiple = true;
                ViewBag.MultipleProviders = "True";
            }
            string username = string.Empty;
            if (Request.QueryString.HasKeys())
            {
                List<string> keys = new List<string>(Request.QueryString.AllKeys);
                if (keys.Contains("User") && Request.QueryString["User"].Length > 0)
                {
                    username = Request.QueryString["User"];

                }
                if (keys.Contains("Provider") && Request.QueryString["Provider"].Length > 0)
                {
                    if (Request.QueryString["Provider"] == "True")
                        hasmultiple = true;
                    ViewBag.MultipleProviders = "True";
                }
            }


            Models.ManageUserViewModel manageuser = new Models.ManageUserViewModel();
            manageuser.OldPassword = oldpassword;
            manageuser.NewPassword = HiddenNewPassword;
            if (hdnusername == null)
            {
                manageuser.Username = Request.QueryString["User"];
            }
            else
                manageuser.Username = hdnusername;
            manageuser.SecurityQuestion = securityquestion;
            manageuser.SecurityAnswer = securityanswer;
            manageuser.MultipleProviderMember = hasmultiple;
            if (multiple == "True")
                hasmultiple = true;
            ViewBag.MultipleProviders = "True";
            ViewBag.UserName = manageuser.Username;
            if (id != null)
            {
                manageuser.AccountId = Guid.Parse(id);
                manageuser.Username = DataAccess.Account.GetAccountUserNameByAccountId(manageuser.AccountId);
                ViewBag.UserName = manageuser.Username;
                manageuser.MultipleProviderMember = hasmultiple;
                if (multiple == "True")
                    hasmultiple = true;
                ViewBag.MultipleProviders = "True";
            }
            ViewBag.AccountId = manageuser.AccountId;
            return View("Reset", manageuser);

        }

        [Log]
        public ActionResult SecurityQuestion(string User, string chkconfirmagree, string HiddenchkAgree, string msg, string Providers)
        {
            bool hasmultiple = false;
            ViewBag.ErrorMessage = "You have provided the" + " " + msg + " " + "answer. Please try again";
            ViewBag.UserName = User;
            if (Providers != null)
            {
                if (Providers == "True")
                {
                    hasmultiple = true;
                    ViewBag.MultipleProviders = hasmultiple;
                }
            }

            Models.ManageUserViewModel manageuser = new Models.ManageUserViewModel();
            manageuser.Username = User;
            ViewBag.UserName = User;
            manageuser.MultipleProviderMember = hasmultiple;

            return View("SecurityQuestion", manageuser);
        }

        [Log]
        [HttpPost]
        public ActionResult Reset(Models.ManageUserViewModel model, string oldpassword, string HiddenNewPassword, string securityquestion, string securityanswer, string hdnusername, string chkconfirmagree, string HiddenchkAgree, string hdnfrom, string accountid, string multiple)
        {

            bool hasmultiple = false;
            if (multiple != null)
            {
                if (multiple == "True")
                    hasmultiple = true;
                ViewBag.MultipleProviders = "True";
            }
            if (hdnfrom == "securityquestion")
            {
                //check correct answer
                string answer = DataAccess.Account.GetAccountSecurityAnswer(hdnusername);
                if (answer.ToLower() == securityanswer.ToLower())
                {
                    return Redirect("/Account/Reset?User=" + hdnusername + "&chkconfirmagree=" + chkconfirmagree + "&chkagree=" + HiddenchkAgree + "&Provider=" + hasmultiple);
                }
                else
                {
                    return Redirect("/Account/SecurityQuestion?User=" + hdnusername + "&chkconfirmagree=" + chkconfirmagree + "&chkagree=" + HiddenchkAgree + "&Provider=" + hasmultiple + "&Msg=wrong");
                }
            }
            else
            {
                string username = string.Empty;
                if (Request.QueryString.HasKeys())
                {
                    List<string> keys = new List<string>(Request.QueryString.AllKeys);
                    if (keys.Contains("User") && Request.QueryString["User"].Length > 0)
                    {
                        username = Request.QueryString["User"];

                    }
                    if (keys.Contains("Provider") && Request.QueryString["Provider"].Length > 0)
                    {
                        if (Request.QueryString["Provider"] == "True")
                            hasmultiple = true;
                        ViewBag.MultipleProviders = hasmultiple;
                    }

                }
                else
                    username = model.Username;

                Models.ManageUserViewModel manageuser = new Models.ManageUserViewModel();
                manageuser.OldPassword = oldpassword;
                manageuser.MultipleProviderMember = hasmultiple;
                manageuser.NewPassword = HiddenNewPassword;
                manageuser.Username = hdnusername;
                manageuser.SecurityQuestion = securityquestion;
                manageuser.SecurityAnswer = securityanswer;

                bool success = DataAccess.Account.ResetUserPassword(manageuser.NewPassword, manageuser.Username, securityquestion, securityanswer, accountid, Guid.NewGuid());
                Data.Models.Account thisaccount = new Data.Models.Account();
                thisaccount.Username = manageuser.Username;
                thisaccount = DataAccess.Account.GetAccountByUsername(manageuser.Username);
                if (success)
                {
                    return View("Profile", thisaccount);
                }
                else
                {
                    return View("ResetPassword");
                }
            }


        }


#if(DEBUG)
        [Secured]
        public ActionResult Impersonate(string id)
        {
            var account = DataAccess.Account.GetAccountByUsername(id);
            if (account != null)
                FormsAuthentication.SetAuthCookie(id.ToLower(), false);
            return Redirect("/");
        }
#endif

        [Log]
        [Secured]
        public ActionResult Logout()
        {
            UserHelper.ClearSelectedClientId();
            FormsAuthentication.SignOut();
            return new RedirectResult(FormsAuthentication.LoginUrl);
        }

    }
}