using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class AccountRole : BaseModel
    {
        public AccountRole() : base(null, 0) { }
        public AccountRole(object Id = null, long Age = 0) : base(Id, Age) { }

        private Guid AccountId { get; set; }
        private Guid RoleId { get; set; }

        public string RoleID { get; set; }
        public string RoleName { get; set; }

        public static explicit operator AccountRole(Data.AccountRole data)
        {

            return new AccountRole()
            {
               AccountId = data.AccountId,
               RoleId = data.RoleId,
               RoleID = EncryptId(data.RoleId),
               RoleName = data.Role.Name
            };
        }

        public Guid GetRoleId()
        {
            return DecryptId(RoleID);
        }

    }
}
