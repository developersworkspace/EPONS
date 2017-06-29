using SADFM.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Infrastructure.Models
{
    public class PatientSummary
    {
        public Guid PatientId { get; set; }
        public string Firstname { get; set; }
        public string Lastname { get; set; }
        public string Race { get; set; }
        public string Gender { get; set; }
        public DateTime BirthDate { get; set; }
        public Guid? CaseId { get; set; }
        public string[] Providers { get; set; }
        public string[] ProvidersServiceType { get; set; }
        public string MedicalScheme { get; set; }
        public string MedicalSchemeNumber { get; set; }
        public string ImpairmentGroup { get; set; }

        public DateTime AdmissionDate { get; set; }
        public DateTime? DischargeDate { get; set; }
        public int LOS { get; set; }
        public DateTime FirstDate { get; set; }
        public DateTime LastDate { get; set; }
        public List<ScaleItemScore> FirstScore { get; set; }
        public List<ScaleItemScore> LastScore { get; set; }
        public double Age { get; set; }
        public double OnsetDays { get; set; }
        public Guid? ImpairmentGroupId { get; set; }

        public PatientSummary() { }


    }
}
