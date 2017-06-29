using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class ScalePermission :BaseModel
    {

        private Guid ScalePermissionGUID { get; set; }

        public string ScalePermissionId { get; set; }
        public string ScaleId { get; set; }
        public string AccountId { get; set; }
        public int Grade { get; set; }
        public string Username { get; set; }
        public DateTime GradeDate { get; set; }

        public static explicit operator ScalePermission(Data.ScalePermission data)
        {

            ScalePermission result = new ScalePermission()
            {
               ScalePermissionGUID = data.ScalePermissionsId,
               ScaleId = EncryptId(data.ScaleId),
               ScalePermissionId = EncryptId(data.ScalePermissionsId),
               AccountId = EncryptId(data.AccountId),
               Username = data.Account.Username,
               Grade = data.Grade.Value

            };

            return result;
        }
    }
}
