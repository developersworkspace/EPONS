using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class ScaleScore : BaseModel
    {
        private Guid ScaleScoreId { get; set; }


        public List<Models.ScoreValue> ScoreValues { get; set; }
        public string Description { get; set; }
        public string Name { get; set; }
        public int? SortOrder { get; set; }

        public ScaleScore(Data.ListItem data)
            : base(data.ListItemId, data.LastUpdateTimestamp.Ticks)
        {
            ScaleScoreId = data.ListItemId;
            Description = data.Description;
            Name = data.Name;
            SortOrder = data.SortOrder;
            ScoreValues = data.Children.Where(li => li.Value != null).ToList().Select(x => new ScoreValue(x)).ToList();
        }
    }
}
