using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class PatientProvider : BaseModel
    {
        public PatientProvider() { }

        public string Name { get; set; }
        public DateTime AssignedTimestamp { get; set; }
        public DateTime? DischargedTimestamp { get; set; }
        public string PatientProviderID { get; set; }
        public string ProviderId { get; set; }
        public string CaseId { get; set; }
        public string PatientId { get; set; }
        public DateTime CreatedTimestamp { get; set; }
        public DateTime LastUpdatedTimestamp { get; set; }
        public string LastUpdatedAccountId { get; set; }
        public string AccountID { get; set; }
        public string AccountFullname { get; set; }
        public string AccountRoles { get; set; }
        public string CaseICD10 { get; set; }

        public static explicit operator PatientProvider(Data.PatientProvider data)
        {
            return new PatientProvider()
            {

                Name = data.Provider.Name,
                PatientProviderID = EncryptId(data.PatientProviderId),
                ProviderId = EncryptId(data.ProviderId),
                CaseId = data.CaseId.HasValue? EncryptId(data.CaseId) : null,
                AssignedTimestamp = data.AssignedTimestamp,
                CaseICD10 = data.CaseId.HasValue? data.Case.ICD10.Description : null,
                DischargedTimestamp = data.DischargeTimestamp,
                CreatedTimestamp = data.CreatedTimestamp,
                LastUpdatedTimestamp = data.LastUpdateTimestamp,
                LastUpdatedAccountId = EncryptId(data.LastUpdateAccountId),
                AccountID = EncryptId(data.AccountId),
                AccountRoles = data.Account != null? string.Join(",", data.Account.AccountRoles.Select(x => x.Role.Name)) : "",
                AccountFullname = data.Account != null? data.Account.FirstName + " " + data.Account.LastName : ""

            };
        }
    }
}
