using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Infrastructure.Models
{
    public class GroupedPatientSummary
    {
        public Guid? ImpairmentGroupId { get; set; }
        public string ImpairmentGroup { get; set; }
        public int AverageAdmitScore { get; set; }
        public int AverageDischargeScore { get; set; }
        public int Delta { get; set; }
        public double AverageLOS { get; set; }
        public double Effiency { get; set; }
        public int NumberOfPatients { get; set; }
        public int TotalPatients { get; set; }
        public double PercentageOfPatients { get; set; }
        public double Age { get; set; }
        public double OnsetDays { get; set; }

        public GroupedPatientSummary()
        {

        }
    }
}
