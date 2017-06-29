using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SADFM.Web.Models
{
    public class APOMReportViewModel
    {
        public Dictionary<string, Dictionary<string, string>> ScaleItems { get; set; }
        public Data.Models.Patient Patient { get; set; }
        public DateTime VisitDate { get; set; }
        public Dictionary<string, int> GraphData { get; set; }
        public string Graph { get; set; }
        public Guid VisitId { get; set; }
    }
}