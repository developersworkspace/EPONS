using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.ValueObjects
{
    public class ScoreValue
    {
        public Guid Id { get; set; }
        public int Value { get; set; }
        public string Description { get; set; }
        public IList<ScoreItem> SubScoreItems { get; set; } = new List<ScoreItem>();
    }
}
