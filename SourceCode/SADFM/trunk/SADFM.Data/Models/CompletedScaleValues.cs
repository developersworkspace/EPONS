using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class CompletedScaleValues
    {
        public Guid ScaleId { get; set; }
        public Guid ScaleItemId { get; set; }
        public DateTime FirstVisitDate { get; set; }
        public DateTime VisitDate { get; set; }
        public int VisitCount { get; set; }
        public int Value { get; set; }
    }
}
