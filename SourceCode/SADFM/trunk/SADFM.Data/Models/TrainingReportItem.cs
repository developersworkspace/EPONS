using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class TrainingReportItem
    {

        public TrainingReportItem() { }

        public string Username { get; set; }
        public string Firstname { get; set; }
        public string Lastname { get; set; }
        public string EmailAdress { get; set; }
        public int Grade { get; set; }
        public string Scale { get; set; }
        public DateTime Updated { get; set; }
        public string UpdatedDisplay { get; set; }
    }
}
