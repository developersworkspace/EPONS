using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class ScoreValue : BaseModel
    {
        private Guid ScoreValueId { get; set; }
        public string Value { get; set; }

        public ScoreValue(Data.ListItem data)
            : base(data.ListItemId, data.LastUpdateTimestamp.Ticks)
        {
            ScoreValueId = data.ListItemId;
            Value = data.Value;
        }
    }
}
