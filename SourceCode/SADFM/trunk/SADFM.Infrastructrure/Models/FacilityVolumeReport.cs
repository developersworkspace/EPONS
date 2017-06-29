using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Infrastructure.Models
{
    public class FacilityVolumeReport
    {
        public string ImpairmentGroup { get; set; }
        public int Admission { get; set; }
        public double Percentage { get; set; }
        public double AverageLOS { get; set; }
        public double AverageOnsetDays { get; set; }
        public double AverageAgeOnAdmission { get; set; }
        public int Patients { get; set; }
    }
}
