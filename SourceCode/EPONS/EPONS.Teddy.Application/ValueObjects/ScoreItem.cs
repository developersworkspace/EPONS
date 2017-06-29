using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.ValueObjects
{
    public class ScoreItem
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string ValueDescription { get; set; }
        public IList<ScoreItem> SubScoreItems { get; set; } = new List<ScoreItem>();
        public IList<ScoreValue> ScoreValues { get; set; } = new List<ScoreValue>();

        public bool HasChildScoreItems()
        {
            return SubScoreItems.Count > 0;
        }
    }
}
