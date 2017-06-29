using SADFM.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SADFM.Web.ViewModels
{
    public class Account
    {

        public string ID { get; set; }
        public string AccountType { get; set; }
        public string LanguageCode { get; set; }
        public string Username { get; set; }
        public string EmailAddress { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string DisplayName { get; set; }
        public string Status { get; set; }
        public bool FirstSignIn { get; set; }
        public bool ResetBySuperAdmin { get; set; }
        public DateTime DateCreatedTimestamp { get; set; }
        public DateTime LastUpdateTimestamp { get; set; }
        public string LastUpdateAccount { get; set; }
        public string Avatar { get; set; }
        public string IDType { get; set; }
        public string IDNumber { get; set; }
        public string TitleId { get; set; }
        public string Title { get; set; }
        public string ContactNumber { get; set; }
        public string SecurityQuestionID { get; set; }
        public string SecurityQuestionAnswer { get; set; }
        public string Password { get; set; }
        public List<Permission> Permissions { get; set; }
        public DateTime? DisclaimerAgreeTimestamp { get; set; }
        public int UnreadMessageCount { get; set; }
        public int TotalMessageCount { get; set; }
        public string RecipientSearchName { get; set; }
        public Guid? ProfessionalBody { get; set; }
        public string PracticeNumber { get; set; }
        public string RegistrationNumber { get; set; }
        public List<AccountRole> AccountRoles { get; set; }
    }
}