using OpenServices.Web.Attributes;
using SADFM.Data;
using SADFM.Web.Filters;
using SADFM.Web.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SADFM.Web.Controllers
{
    [Log]
    [Secured]
    public class ClientController : Controller
    {
        //
        // GET: /Client/
        public ActionResult Index()
        {
            return View();
        }

        #region Providers

        public ActionResult Providers()
        {
            return View();
        }

        public ActionResult MedicalSchemes()
        {
            return View();
        }

        [HttpPost]
        public JsonResult AddProvider(Data.Models.Provider model)
        {
            return Json(DataAccess.Provider.SaveNewProvider(model, UserHelper.GetCurrentAccount().GetId()));
        }


        public ContentResult ProviderGroups()
        {
            return Content(SADFM.Web.Shared.HtmlHelper.DropdownBox(SADFM.Data.DataAccess.Provider.GetAllProviders().Where(p => p.IsGroup).ToList(), "GroupID", c => c.ID, c => c.Name, "chosen-select", dataPlaceholder: "Select a group").ToHtmlString());
        }


        [HttpPost]
        public JsonResult ProviderList()
        {
            return SADFM.Web.Shared.ControllerHelper.LargeJson(this,
                Utilities.DataTableJson(
                Request.Form,
                DataAccess.Provider.GetAllProviders().Where(p => p.IsGroup == false)
                .Select(x => new
                {
                    Name = x.Name,
                    Group = x.ParentProvider == null ? "" : x.ParentProvider.Name,
                    Scales = x.Scales,
                    GroupId = x.ParentProvider != null ? x.ParentID : "",
                    ServicesTypes = x.ServiceTypes,
                    ProviderID = Data.Models.BaseModel.EncryptId(x.ProviderGUID),
                    MonthlyRate = x.MonthlyRate.ToString().Replace(",","."),
                    MonthlyRateDisplay = Convert.ToDecimal(x.MonthlyRate).ToString("C").Replace(',', '.'),
                    ProfileImage = x.ProfileImage
                    
                })
                .ToList(),
                null,
                x => x.Name, x => x.ProfileImage,x => x.MonthlyRateDisplay, x => x.Group, x => x.GroupId, x => x.Scales, x => x.ServicesTypes, x => x.ProviderID, x => x.MonthlyRate));
        }

        [HttpPost]
        public JsonResult SaveMedicalSchemeLinks(Guid FunderId, Guid[] MedicalSchemes)
        {

            DataAccess.Client.SaveMedicalSchemeLinks(FunderId,MedicalSchemes.ToList());

            return Json(new
            {
                Success = true
            });
        }

        [HttpPost]
        public JsonResult MedicalSchemesList(Guid? FunderId)
        {
            return Json(
                Utilities.DataTableJson(
                Request.Form,
                DataAccess.Client.GetMedicalSchemes(FunderId).ToList(),
                null,
                x => x.FunderName, x => x.MedicalScheme, x => x.MedicalSchemeId,x => x.FunderId));
        }

        public ContentResult GetAccounts(string ProviderId, string AccountID, bool multi = false)
        {
            var accounts = SADFM.Data.DataAccess.Account.GetAccountsOfProvider(ProviderId, AccountID);

            string selectHtml = string.Join("", accounts.Select(x => string.Format("<option data-group='{0}' value='{1}'>{2}</option>", string.Join("|",x.AccountRoles.Select(y => y.RoleID)),x.ID,string.Format("{0} {1} {2}", x.Title, x.FirstName, x.LastName))));

            return Content(string.Format("<select id='AccountID' multiple='true' data-placeholder='{0}'>{1}</select>", "Team Member", selectHtml));

        }


        #endregion

        #region Funders

        public ActionResult Funders()
        {
            return View();
        }

        [HttpPost]
        public JsonResult FunderList()
        {
            return Json(
                Utilities.DataTableJson(
                Request.Form,
                DataAccess.ListItem.GetList("Funders").Select(x => new
                {
                    Name = x.Name,
                    ID = x.ID,
                    Age = x.Age,
                    Value = x.Value,
                    ValueDisplay = x.Value == null ? "0.00" : Convert.ToDecimal(x.Value.Replace('.',',')).ToString("C").Replace(',','.')
                }).ToList(),
                null,
                x => x.Name, x => x.ID, x => x.Age, x => x.Value, x => x.ValueDisplay));
        }

        #endregion
    }
}