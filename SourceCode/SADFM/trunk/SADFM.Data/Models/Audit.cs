using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class Audit : BaseModel
    {
        public Audit(object Id = null, long Age = 0) : base(Id, Age) { }
        public Guid AuditId { get; set; }
        public string TableName { get; set; }
        public string FieldName { get; set; }
        public string OldValue { get; set; }
        public string NewValue { get; set; }
        public DateTime UpdateDate { get; set; }
        public string UpdateDateDisplay { get; set; }
        public Guid AccountId { get; set; }
        public Models.Account Account { get; set; }
        public Guid PrimaryKeyId { get; set; }

        public static explicit operator Audit(Data.Audit data)
        {
            return new Audit(data.AccountId, data.UpdateDate.Ticks)
            {
                TableName = data.TableName ,
                FieldName = data.FieldName,
                OldValue = data.OldValue,
                NewValue = data.NewValue,
                UpdateDate = data.UpdateDate,
                UpdateDateDisplay = data.UpdateDate.ToString("dd MMM yyyy HH:mm"),
                AccountId = data.AccountId,
                Account = (Models.Account)data.Account,
                PrimaryKeyId = data.PrimaryKeyId
            };
        }
    }
}

