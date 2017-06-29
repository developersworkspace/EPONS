using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class FunderProvider : BaseModel
    {
        public string MonthEndDate { get; set; }
        public string ClientType { get; set; }
        public string ClientName { get; set; }
        public string Scale { get; set; }
        public string ServiceType { get; set; }
        public string Group { get; set; }
        public string BillingRate { get; set; }
    }
}
