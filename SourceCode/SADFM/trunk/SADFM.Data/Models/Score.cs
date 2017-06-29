using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class Score
    {
        public Score() { }
        public Guid ScoreID { get; set; }
        public Guid VisitID { get; set; }
    }
}
