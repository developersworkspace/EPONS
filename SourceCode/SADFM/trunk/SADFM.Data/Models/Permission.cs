using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class Permission : BaseModel
    {
        public Permission() : base(null, 0) { }
        public Permission(object Id = null, long Age = 0) : base(Id, Age) { }

        public string AccountID { get; set; }
        private Guid ClientId { get; set; }
        public string ClientID { get; set; }
        public string ClientName { get; set; }
        public string PermissionID { get; set; }
        public string PermissionDescription { get; set; }

        public static explicit operator Permission(FunderAccountPermission data)
        {
            return new Permission(data.FunderAccountPermissionId, 0)
            {
                ClientID = EncryptId(data.FunderId),
                ClientId = data.FunderId,
                ClientName = data.Funder.Name,
                PermissionID = EncryptId(data.PermissionId),
                PermissionDescription = data.Permission.Description,
                AccountID = EncryptId(data.AccountId),
            };
        }

        public static explicit operator Permission(ProviderAccountPermission data)
        {
            return new Permission(data.ProviderAccountPermissionId, 0)
            {
                ClientID = EncryptId(data.ProviderId),
                ClientId = data.ProviderId,
                ClientName = data.Provider.Name,
                PermissionID = EncryptId(data.PermissionId),
                PermissionDescription = data.Permission.Description,
                AccountID = EncryptId(data.AccountId)
            };
        }

        public Guid GetClientId()
        {
            return ClientId;
        }
    }
}
