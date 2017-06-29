using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SADFM.Web.ViewModels
{
    public class Case
    {
        public DateTime StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public string ICD10ID { get; set; }
        public string PatientId { get; set; }
        public string CaseId { get; set; }
        public string ImpairmentGroupId { get; set; }
        public string ImpairmenGroup { get; set; }
        public string ReferringDoctor { get; set; }
        public string ReferringDoctorContact { get; set; }
        public string ReferringDoctorEmail { get; set; }
        public string ReferringDoctorPracticeNumber { get; set; }
        public string TreatingDoctor { get; set; }
        public string TreatingDoctorContact { get; set; }
        public string TreatingDoctorEmail { get; set; }
        public string TreatingDoctorPracticeNumber { get; set; }
        public string AdmissionStatusId { get; set; }
    }
}