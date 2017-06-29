using SADFM.Base;
using SADFM.Data;
using SADFM.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace SADFM.Web.Shared
{
    public static class UserHelper
    {
        private static readonly UserRepository _userRepository;

        static UserHelper()
        {
            _userRepository = new UserRepository(ConfigurationManager.ConnectionStrings["SADFMContext"].ConnectionString);
        }

        public static string DefaultAvatar = "/Content/images/nouser.png";

        public static string GetUserLanguage()
        {

            if (HttpContext.Current != null)
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                    if (!string.IsNullOrEmpty(HttpContext.Current.User.Identity.Name))
                    {
                        var account = GetAccount(HttpContext.Current.User.Identity.Name);
                        if (!string.IsNullOrWhiteSpace(account.LanguageCode))
                            return account.LanguageCode;
                    }

            if (HttpContext.Current.Session["UserLanguage"] != null)
                return (string)HttpContext.Current.Session["UserLanguage"];

            return Constants.DefaultLanguage;

        }

        internal static Data.Models.Account GetAccount(string username)
        {
            var result = Data.DataAccess.Account.GetAccountByUsername(username);
            if (result == null)
                return null;

            if (string.IsNullOrWhiteSpace(result.Avatar))
                result.Avatar = DefaultAvatar;
            if (string.IsNullOrWhiteSpace(result.IDType))
                result.IDType = "ID";

            return result;
        }

        public static List<Data.Models.Permission> GetActivePermissions(Data.Models.Account account)
        {
            Guid? selectedClientId = SelectedClientId;
            if (!selectedClientId.HasValue)
            {
                if (account.AccountType.Equals("SuperAdmin"))
                {
                    List<Data.Models.Permission> list = new List<Data.Models.Permission>();
                    list.Add(new Data.Models.Permission()
                    {
                        PermissionDescription = "Case Manager"

                    });

                    return list;
                }

                return new List<Data.Models.Permission>();
            }

            var tempList = account.Permissions.Where(p => p.GetClientId() == selectedClientId).ToList();

            if (account.AccountType.Equals("SuperAdmin") && tempList.Count(x => x.PermissionDescription.Equals("Case Manager")) == 0)
            {

                tempList.Add(new Data.Models.Permission()
                {
                    PermissionDescription = "Case Manager"

                });

            }

            return tempList;
        }

        public static Data.Models.Account GetCurrentAccount()
        {
            if (HttpContext.Current != null)
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                    if (!string.IsNullOrEmpty(HttpContext.Current.User.Identity.Name))
                        return GetAccount(HttpContext.Current.User.Identity.Name);
            return null;
        }

        public static string Username
        {
            get
            {
                return HttpContext.Current.User.Identity.Name;
            }
        }

        public static Guid? SelectedClientId
        {
            get
            {
                return _userRepository.FindSelectedFacilityIdByUsername(Username);
            }
        }
        public static string SelectedClientType
        {
            get
            {
                return _userRepository.FindSelectedFacilityTypeByUsername(Username);
            }
        }

        public static void SetSelectedClientId(Guid selectedClientId)
        {
            SetSelectedClientId(Username, selectedClientId);
        }

        public static void ClearSelectedClientId()
        {
            _userRepository.RemoveSelectedFacilityByUsername(Username);
        }

        public static void SetSelectedClientId(string username, Guid selectedClientId)
        {
            _userRepository.SetSelectedFacilityId(username, selectedClientId);
        }

        internal static Data.Models.UpdateResult SaveProfile(Data.Models.Account account)
        {
            if (account.Avatar != null)
                if (account.Avatar == DefaultAvatar)
                    account.Avatar = null;
                else if (!(account.Avatar.Substring(0, 22) == "data:image/png;base64,"))
                    account.Avatar = null;

            return Data.DataAccess.Account.Update(account, Username);
        }

        public static MvcHtmlString GetClientName()
        {
            if (SelectedClientId.HasValue)
                return new MvcHtmlString(DataAccess.Client.GetById(SelectedClientId.Value).Name);
            else
                return Library.GetText("ApplicationLongName");
        }
    }
}