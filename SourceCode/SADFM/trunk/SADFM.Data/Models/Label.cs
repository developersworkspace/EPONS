using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class Label : BaseModel
    {
        public Label() : this(null, 0) { }
        public Label(object Id = null, long Age = 0) : base(Id, Age) { }

        public string Language { get; set; }
        public string LabelName { get; set; }
        public string Value { get; set; }

        public static explicit operator Label(Data.ListItemLabel data)
        {
            return new Label(data.ListItemId, 0)
            {
                Language = data.Language.Code,
                LabelName = data.ListItem.Name,
                Value = data.Label
            };
        }

    }
}
