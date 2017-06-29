using SADFM.Data;
using SADFM.Web.Filters;
using SADFM.Web.Models;
using SADFM.Web.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Net.Mail;
using System.Net.Mime;
using System.Text;
using System.Net.Http;
using OpenServices.Web.Attributes;

namespace SADFM.Web.Controllers
{
    [Secured("SuperAdmin")]
    public class AdministrationController : Controller
    {
        //
        // GET: /Administration/
        [Log]
        public ActionResult Index()
        {
            return View();
        }

        [Log]
        public ActionResult SupportServices()
        {
            return View();
        }


        #region User Administration

        [Log]
        public ActionResult Users()
        {
            return View(DataAccess.Account.GetLatestPermission());
        }

        [Log]
        [HttpPost]
        public JsonResult AccreditationList()
        {
            List<Models.Accreditation> output = null;
            ReturnTrue.Utilities.Shared.JsonClient.Execute<List<Models.Accreditation>>(
                HttpMethod.Get,
                new Uri(string.Format("https://sadfm.co.za/trainingSADFM/grading_report.php?startdate={0}", new DateTime(1900, 1, 1).ToString("yyyy-MM-dd"))),
                result =>
                {
                    var dbAccounts = DataAccess.Account.GetAllAccounts();
                    result.ForEach(a =>
                    {

                        a.GradeDisplay = a.Grade.ToString("0.0#");

                        Data.Models.Account account = dbAccounts.SingleOrDefault(ax => ax.Username.ToLower() == a.Username.ToLower());
                        if (account == null)
                            account = dbAccounts.SingleOrDefault(ax => ax.EmailAddress.ToLower() == a.EmailAddress.ToLower());
                        if (account == null)
                        {
                            a.UserMatched = false;
                            return;
                        }
                        a.UserMatched = true;

                    });
                    output = result;
                },
                failure =>
                {
                    throw new ApplicationException("Cannot connect to Moodle");
                });


            output = output.GroupBy(x => x.Username).Select(x => x.OrderByDescending(y => y.GradeTimestamp).FirstOrDefault()).ToList();

            return Json(
                Utilities.DataTableJson(
                Utilities.DataTableRequest.Parse(Request.Form),
                output,
                null,
                x => x.Username, x => x.EmailAddress, x => x.GradeDisplay, x => x.ScaleCode, x => x.UserMatched, x => x.GradeTimestamp, x => x.Grade));
        }


        [Log]
        [HttpPost]
        public JsonResult ImportAccreditation(List<Models.Accreditation> model)
        {

            if (model != null)
            {
                List<Data.Models.ListItem> ScaleList = DataAccess.ListItem.GetList("Scale");

                foreach (Models.Accreditation acc in model)
                {
                    MoodleManuaImport(new Data.Models.ScalePermission()
                    {
                        Username = acc.Username,
                        Grade = Convert.ToInt32(acc.Grade),
                        ScaleId = Data.Models.BaseModel.EncryptId(ScaleList.Single(x => x.Description == acc.ScaleCode).GetId()),
                        GradeDate = acc.GradeDate
                    });
                }

            }
            return Json(new { Success = true });
        }

        [Log]
        public JsonResult MoodleManuaImport(Data.Models.ScalePermission model, bool overrideDate = false)
        {

            Guid AccountId = DataAccess.Account.GetAccountIdByUsername(model.Username);

            Data.ScalePermission scalePermission = new ScalePermission()
            {
                AccountId = AccountId,
                DateCreatedTimestamp = overrideDate ? model.GradeDate : DateTime.Now,
                Grade = model.Grade,
                LastUpdateAccountId = UserHelper.GetCurrentAccount().GetId(),
                LastUpdateTimestamp = overrideDate ? model.GradeDate : DateTime.Now,
                ScaleId = Data.Models.BaseModel.DecryptId(model.ScaleId)


            };

            return Json(DataAccess.Account.AddScalePermission(scalePermission));
        }

        [Log]
        public ActionResult User(string id)
        {

            var account = UserHelper.GetAccount(id);

            return View(account);
        }

        [Log]
        [HttpPost]
        public JsonResult UserList(Guid AccountId, string Type, int StartIndex, int Length, string Search, int ColumnSort, string Direction)
        {
            int count, filteredCount;

            var userList = DataAccess.Account.GetAllAccountsLightWeight(StartIndex, Length, Search, ColumnSort, Direction, out count, out filteredCount).Select(x =>
    {
        return new
        {
            Username = x.Username,
            FirstName = x.FirstName,
            LastName = x.LastName,
            EmailAddress = x.EmailAddress,
            Status = x.Status,
            Permissions = string.Join("<br/>", x.Permissions.Distinct().Select(kvp => string.Concat(kvp.PermissionDescription))),
            ID = x.ID,
            Age = x.Age,
            IsForCurrentClient = x.Permissions.FirstOrDefault(p => p.GetClientId() == UserHelper.SelectedClientId) != null
        };
    }).Where(x => Type == "SuperAdmin" || x.IsForCurrentClient).ToList();


            Utilities.DataTableRequest dataTableRequest = Utilities.DataTableRequest.Parse(Request.Form);

            dataTableRequest.OverrideSearch = true;
            dataTableRequest.OverrideCount = count;
            dataTableRequest.OverrideFilteredCount = filteredCount;


            return Json(
                Utilities.DataTableJson(
                dataTableRequest,
                userList,
                null,
                x => x.Username, x => x.FirstName, x => x.LastName, x => x.EmailAddress, x => x.Status, x => x.Permissions, x => x.ID, x => x.Age), JsonRequestBehavior.AllowGet);
        }

        [Log]
        [HttpPost]
        public JsonResult UserClientList()
        {
            return Json(DataAccess.Client.GetClients().OrderBy(c => c.Name).ToList());
        }

        [Log]
        [HttpPost]
        public JsonResult DeletePermission(Data.Models.Permission permission)
        {
            return Json(DataAccess.Account.DeletePermission(permission));
        }

        [Log]
        [HttpPost]
        public JsonResult AddPermission(Data.Models.Permission permission)
        {
            return Json(DataAccess.Account.AddPermission(permission));
        }

        [Log]
        [HttpPost]
        public JsonResult AccountPermissionList(Guid id)
        {
            return Json(
                Utilities.DataTableJson(
                Utilities.DataTableRequest.Parse(Request.Form),
                DataAccess.Account.GetAccountByAccountId(id).Permissions,
                null,
                x => x.ClientName, x => x.PermissionDescription, x => x.ID));
        }

        [Log]
        [HttpPost]
        public JsonResult UserPermissionList(string ClientType)
        {
            return Json(DataAccess.ListItem.GetList("Permission", filter: li => li.Value == ClientType));
        }

        [Log]
        [HttpPost]
        public JsonResult VerifyUsernames(List<string> verification)
        {
            return Json(DataAccess.Account.VerifyNewUsernames(verification));
        }

        [Log]
        [HttpPost]
        public JsonResult AddNewUsers(NewUsers newUsers)
        {

            var data = DataAccess.Account.AddNewUsers(newUsers.Users, newUsers.ClientId, newUsers.Permissions, UserHelper.Username);
            if (data.Success)
            {
                foreach (var user in newUsers.Users.ToList())
                {
                    string email = DataAccess.Account.GetAccountEmailAddress(user.Username);
                    Guid act = DataAccess.Account.GetAccountIdByUsername(user.Username);

                    var verifyUrl = System.Web.HttpContext.Current.Request.Url.GetLeftPart
                   (UriPartial.Authority) + "/Account/Verify/" + act;

                    SendRegistrationEmailLink(verifyUrl, email, user.Username, act.ToString(), user.FirstName, "");
                }
            }
            return Json(data);
        }

        public bool SendRegistrationEmailLink(string verifyurl, string useremail, string username, string accountid, string firstname, string accounttype)
        {

            StringBuilder xd = new StringBuilder();
            xd.Append(SADFMRegistrationBodySetting(useremail, username, verifyurl, firstname));
            Shared.Utilities.SendMail(
               Constants.EmailFromAddress,
               Constants.EmailFromName,
               new List<string> { useremail },
               "Registration",
               xd.ToString(),
               linkedResources: null,
               onError: ex =>
               {
                   Shared.Utilities.LogError("Cannot send registration email: {0}", ex.Message);
               });
            // ReturnTrue.Utilities.Communication.Sender.SendEmail(useremail, "Confirm Registration", xd.ToString());
            return true;
        }


        public static string SADFMRegistrationBodySetting(string useremail, string username, string verifylink, string firstname)
        {

            string ret = string.Empty;
            ret = "<html><head><meta content=\"text/html; charset=utf-8\" /></head><body><p>Dear " + firstname + "," + "</p>"
            + "<p>Username: " + username + "</p>"
            + "<p>Please confirm your registration to SADFM:</p>"
            + "<p>Please click the following link or copy and paste the link into your web browser:</p>"
            + "<p><a href=\"" + verifylink + "\" target=\"_blank\">" + verifylink
           + "</a><p>Regards,</p>"
           + "<p>Customer Service team,</p>"
            + "</p><div></div><div>SADFM</div></body></html>";
            return ret;
        }

        #endregion

        #region List Item Administration

        [Log]
        public ActionResult ListItems()
        {
            return View();
        }

        [Log]
        public ActionResult NewListItem(Data.Models.ListItem model)
        {

            model.LastUpdateUsername = UserHelper.Username;
            return Json(DataAccess.ListItem.SaveListItem(model));
        }

        [Log]
        public ContentResult ListItemChilds(int id, string parent)
        {
            List<Data.Models.ListItem> list = SADFM.Data.DataAccess.ListItem.GetChildren(Data.Models.BaseModel.DecryptNullableId(parent));
            if (list.Count == 0)
            {
                return Content(null);
            }

            return Content(SADFM.Web.Shared.HtmlHelper.DropdownBox(list, "ParentID" + id.ToString(), p => p.ID, p => p.Name, "chosen-select", dataPlaceholder: "Select parent").ToString());
        }

        [Log]
        [HttpPost]
        public JsonResult ListItemList()
        {
            Utilities.DataTableRequest dataTableRequest = Utilities.DataTableRequest.Parse(Request.Form);
            string orderColumn = new string[] { "ListName", "Name", "Description", "Code", "Value", "SortOrder" }[dataTableRequest.orderColumn];
            int count, filteredCount;
            List<Data.Models.ListItem> list = DataAccess.ListItem.GetMaintenanceList(dataTableRequest.search, dataTableRequest.start, dataTableRequest.length, orderColumn, dataTableRequest.orderAscending, out count, out filteredCount);
            dataTableRequest.OverrideSearch = true;
            dataTableRequest.OverrideCount = count;
            dataTableRequest.OverrideFilteredCount = filteredCount;
            return Json(
                Utilities.DataTableJson(
                dataTableRequest,
                list.Select(li => new
                {
                    ListName = li.FullListName,
                    Name = li.Name,
                    Description = li.Description,
                    Code = li.Code,
                    Value = li.Value,
                    SortOrder = li.SortOrder,
                    ID = li.ID,
                    Age = li.Age
                }).ToList(),
                null,
                x => x.ListName, x => x.Name, x => x.Description, x => x.Code, x => x.Value, x => x.SortOrder, x => x.ID, x => x.Age));
        }

        [Log]
        [HttpPost]
        public JsonResult SetListItem(Data.Models.ListItem model)
        {
            model.LastUpdateUsername = UserHelper.Username;
            return Json(DataAccess.ListItem.SaveListItem(model));
        }

        [Log]
        [Secured]
        public JsonResult GetICD10Codes(string query)
        {
            return Json(DataAccess.ListItem.GetList("ICD10", filter: li => li.Name.Contains(query) || li.Description.Contains(query), limit: 20).Select(li => new { ID = li.ID, Name = li.Name, Description = li.Description, DisplayName = li.Name + " - " + li.Description }), JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Label Administration

        [Log]
        public ActionResult Labels()
        {
            return View();
        }

        [Log]
        [HttpPost]
        [Secured]
        public JsonResult LabelList()
        {
            return Json(
                Utilities.DataTableJson(
                Utilities.DataTableRequest.Parse(Request.Form),
                DataAccess.ListItem.GetLabelList(),
                null,
                x => x.ID, x => x.LabelName, x => x.Language, x => x.Value));
        }

        [Log]
        [HttpPost]
        [Secured]
        public JsonResult SetLabel(Data.Models.Label label)
        {
            return Json(DataAccess.ListItem.SaveLabel(label));
        }

        #endregion

    }
}