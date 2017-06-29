using System;
using SADFM.Data;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;

namespace SADFM.Web.Shared
{

    public class Constants
    {
        static Constants()
        {
            //  APIID = DataAccess.Security;
            // DefaultAvatar = string.Format("data:image/png;base64,{0}", Convert.ToBase64String(Mirrovest.Shared.AvatarCreator.CreateAvatar(File.OpenRead(HttpContext.Current.Server.MapPath("~/Content/elements/bigavatar.png")))));
            EmailHost = ConfigurationManager.AppSettings["EmailHost"];
            EmailUsername = ConfigurationManager.AppSettings["EmailUsername"];
            EmailPassword = ConfigurationManager.AppSettings["EmailPassword"];
            EmailFromAddress = ConfigurationManager.AppSettings["EmailFromAddress"];
            EmailFromName = ConfigurationManager.AppSettings["EmailFromName"];
            DefaultLanguage = ConfigurationManager.AppSettings["DefaultLanguage"];

            ScalesList = SADFM.Data.DataAccess.ListItem.GetList("Scale").ToList();
            //ImpairmentClassList = SADFM.Data.DataAccess.ListItem.GetList("ImpairmentClass").OrderBy(x => Convert.ToInt32(x.SortOrder)).SelectMany(li => li.Children.OrderBy(x => x.SortOrder)).ToList();
            ImpairmentClassList = SADFM.Data.DataAccess.ListItem.GetImpairmentClass();
            AdmissionStatusList = SADFM.Data.DataAccess.ListItem.GetImpairmentClass();
            FrequencyList = SADFM.Data.DataAccess.ListItem.GetList("Frequency", deep: false).ToList();

            RolesList = SADFM.Data.DataAccess.ListItem.GetList("Role");
            TitleComboBox = SADFM.Web.Shared.HtmlHelper.DropdownBox(SADFM.Data.DataAccess.ListItem.GetList("Title" , deep: false), "TitleID", l => l.ID, l => l.Name, "chosen-select", dataPlaceholder: "Select title");
            GenderComboBox = SADFM.Web.Shared.HtmlHelper.DropdownBox(SADFM.Data.DataAccess.ListItem.GetList("Gender", deep: false), "GenderID", l => l.ID, l => l.Name, "chosen-select", dataPlaceholder: "Gender");
            RaceComboBox = SADFM.Web.Shared.HtmlHelper.DropdownBox(SADFM.Data.DataAccess.ListItem.GetList("Race", deep: false), "RaceID", l => l.ID, l => l.Name, "chosen-select", dataPlaceholder: "Race");
            MedicalSchemeComboBox = SADFM.Web.Shared.HtmlHelper.DropdownBox(SADFM.Data.DataAccess.ListItem.GetList("MedicalScheme", deep: false).OrderByDescending(x => x.SortOrder).ThenBy(x => x.Description).ToList(), "medicalscheme", l => l.ID, l => l.Description, "chosen-select", dataPlaceholder: "Medical Scheme");

            var medicalShemeListMulti = SADFM.Data.DataAccess.ListItem.GetList("MedicalScheme", deep: false).OrderByDescending(x => x.SortOrder).ThenBy(x => x.Description).ToList();
            medicalShemeListMulti.Insert(0, new Data.Models.ListItem() { Description = "All", ID = "All" });
            MedicalSchemeComboBoxMulti = SADFM.Web.Shared.HtmlHelper.DropdownBox(medicalShemeListMulti, "MedicalSchemes", l => l.GUID.ToString(), l => l.Description, "chosen-select", dataPlaceholder: "Medical Schemes", multiple: true);

            CountryComboBox = SADFM.Web.Shared.HtmlHelper.DropdownBox(SADFM.Data.DataAccess.ListItem.GetList("Country", deep: false), "CountryID", l => l.ID, l => l.Description, "chosen-select", dataPlaceholder: "Country");
            ScalesComboBox = SADFM.Web.Shared.HtmlHelper.DropdownBox(ScalesList, "ScaleId", s => s.GUID.ToString(), s => s.Description, "chosen-select", dataPlaceholder: "Select scale");
            ScalesComboBoxMulti = SADFM.Web.Shared.HtmlHelper.DropdownBox(ScalesList, "Scales", s => s.GUID.ToString(), s => s.Description, "chosen-select", dataPlaceholder: "Select scale", multiple: true);

            FrequencyComboBox = SADFM.Web.Shared.HtmlHelper.DropdownBox(FrequencyList.OrderBy(x => x.SortOrder).ToList(), "FrequencyID", f => f.ID, f => f.Description, "chosen-select", dataPlaceholder: "Select frequency");
            DefaultCountryId = SADFM.Data.Models.BaseModel.EncryptId(SADFM.Data.DataAccess.ListItem.GetListItemIdByName(ConfigurationManager.AppSettings["DefaultCountry"]));
#if(DEBUG)
            Debugging = true;
#else
            Debugging = false;
#endif
        }

        public static System.Web.Mvc.MvcHtmlString TitleComboBox { get; private set; }
        public static System.Web.Mvc.MvcHtmlString ScalesComboBox { get; private set; }
        public static System.Web.Mvc.MvcHtmlString ScalesComboBoxMulti { get; private set; }
        public static System.Web.Mvc.MvcHtmlString FrequencyComboBox { get; private set; }
        public static System.Web.Mvc.MvcHtmlString GenderComboBox { get; private set; }
        public static System.Web.Mvc.MvcHtmlString RaceComboBox { get; private set; }
        public static System.Web.Mvc.MvcHtmlString CountryComboBox { get; private set; }
        public static System.Web.Mvc.MvcHtmlString MedicalSchemeComboBox { get; private set; }
        public static System.Web.Mvc.MvcHtmlString MedicalSchemeComboBoxMulti { get; private set; }
        public static System.Web.Mvc.MvcHtmlString Provinces { get; private set; }
        public static List<Data.Models.ListItem> ImpairmentClassList { get; private set; }
        public static List<Data.Models.ListItem> RolesList { get; private set; }
        public static List<Data.Models.ListItem> AdmissionStatusList { get; private set; }
        public static List<Data.Models.ListItem> ScalesList { get; private set; }
        public static List<Data.Models.ListItem> FrequencyList { get; private set; }
        public static string DefaultCountryId { get; set; }
        public static string APIID { get; private set; }
        public static string DefaultAvatar { get; private set; }
        public static string EmailHost { get; private set; }
        public static string EmailUsername { get; private set; }
        public static string EmailPassword { get; private set; }
        public static string EmailFromAddress { get; private set; }
        public static string EmailFromName { get; private set; }
        public static string DefaultLanguage { get; private set; }
        public static bool Debugging { get; private set; }
    }
}