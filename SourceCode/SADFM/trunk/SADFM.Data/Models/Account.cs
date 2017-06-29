using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class Account : BaseModel
    {
        public Account() : base(null, 0) { }
        public Account(object Id = null, long Age = 0) : base(Id, Age) { }
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

        public static explicit operator Account(Data.Account data)
        {
            List<Permission> permissions = new List<Permission>();
            foreach (var perm in data.FunderAccountPermissions)
                permissions.Add((Permission)perm);
            foreach (var perm in data.ProviderAccountPermissions)
                permissions.Add((Permission)perm);

            return new Account(data.AccountId, data.LastUpdateTimestamp.Ticks)
            {
                LanguageCode = data.Language == null ? null : data.Language.Code,
                Username = data.Username,
                EmailAddress = data.EmailAddress,
                FirstName = data.FirstName,
                LastName = data.LastName,
                DisplayName = string.Format("{0} {1}", data.FirstName, data.LastName),
                Status = data.Status.Name,
                FirstSignIn = data.FirstSignIn,
                DateCreatedTimestamp = data.DateCreatedTimestamp,
                LastUpdateTimestamp = data.LastUpdateTimestamp,
                LastUpdateAccount = string.Format("{0} {1}", data.LastUpdateAccount.FirstName, data.LastUpdateAccount.LastName),
                Avatar = data.Avatar == null ? null : string.Format("data:image/png;base64,{0}", Convert.ToBase64String(data.Avatar)),
                TitleId = data.TitleId.HasValue ? EncryptId(data.TitleId.Value) : null,
                Title = data.Title == null ? null : data.Title.Name,
                Permissions = permissions,
                AccountType = data.AccountType.Name,
                IDNumber = data.IDNumber,
                IDType = data.IDNumberType,
                ContactNumber = data.ContactNumber,
                DisclaimerAgreeTimestamp = data.DisclaimerAgreeTimestamp,
                ResetBySuperAdmin = data.ResetBySuperAdmin,
                TotalMessageCount = data.Messages.Where(mr => !mr.Archived).Select(m => m.MessageId).Union(data.MessageRecipients.Where(mr => !mr.Archived).Select(mr => mr.MessageId)).Distinct().Count(),
                UnreadMessageCount = data.MessageRecipients.Count(mr => !mr.ReadTimestamp.HasValue && !mr.Archived),
                AccountRoles = data.AccountRoles.Select(x => (AccountRole)x).ToList(),
                PracticeNumber = data.PracticeNumber,
                RegistrationNumber = data.RegistrationNumber,
                ProfessionalBody = data.ProfessionalBodyId
            };
        }

        public Account(Data.Account data)
        {

            List<Permission> permissions = new List<Permission>();
            foreach (var perm in data.FunderAccountPermissions)
                permissions.Add((Permission)perm);
            foreach (var perm in data.ProviderAccountPermissions)
                permissions.Add((Permission)perm);

            Username = data.Username;
            FirstName = data.FirstName;
            LastName = data.LastName;
            EmailAddress = data.EmailAddress;
            Status = data.Status.Name;
            Permissions = permissions;
            ID = EncryptId(data.AccountId);
            Age = data.LastUpdateTimestamp.Ticks;
            RegistrationNumber = data.RegistrationNumber;
            PracticeNumber = data.PracticeNumber;
            ProfessionalBody = data.ProfessionalBodyId;
        }

    }
}
