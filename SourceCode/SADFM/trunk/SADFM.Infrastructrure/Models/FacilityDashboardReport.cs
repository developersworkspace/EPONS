using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Infrastructure.Models
{
    public class FacilityDashboardReport
    {

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string FacilityName { get; set; }
        public string FacilityImage { get; set; }

        public int ActivePatients { get; set; }
        public int Admitted { get; set; }
        public int Discharged { get; set; }
        public int Deaths { get; set; }

        public double AverageLOS { get; set; }
        public double AverageLOSWeek1 { get; set; }
        public double AverageLOSWeek2 { get; set; }
        public double AverageLOSWeek3 { get; set; }
        public double AverageLOSWeek4 { get; set; }
        public double AverageLOSMoreThanAMonth { get; set; }

        public int Males { get; set; }
        public int Females { get; set; }
        public int White { get; set; }
        public int Black { get; set; }
        public int Coloured { get; set; }
        public int Asian { get; set; }
        public int Other { get; set; }

        public double AverageAge { get; set; }
        public int Age1To10 { get; set; }
        public int Age11To20 { get; set; }
        public int Age21To30 { get; set; }
        public int Age31To40 { get; set; }
        public int Age41To50 { get; set; }
        public int Age51To60 { get; set; }
        public int Age61To70 { get; set; }
        public int Age71To80 { get; set; }
        public int Age81AndOlder { get; set; }

        public string Path { get; set; }
    }
}
