using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class VisitsAndScores
    {
        public class Score
        {
            public Guid ItemId { get; set; }
            public DateTime VisitDate { get; set; }
            public int ItemScore { get; set; }
        }

        public VisitsAndScores() {
            Items = new Dictionary<Guid, string>();
            Scores = new List<Score>();
        }
        public Dictionary<Guid, string> Items { get; private set; }
        public List<Score> Scores { get; private set; }
    }
}
