using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SADFM.Web.ViewModels
{
    public class PatientFacility
    {
        public string Name { get; set; }
        public DateTime AssignedTimestamp { get; set; }
        public DateTime? DischargedTimestamp { get; set; }
        public string PatientProviderID { get; set; }
        public string ProviderId { get; set; }
        public string CaseId { get; set; }
        public string PatientId { get; set; }
        public DateTime CreatedTimestamp { get; set; }
        public DateTime LastUpdatedTimestamp { get; set; }
        public string LastUpdatedAccountId { get; set; }
        public string AccountID { get; set; }
        public string AccountFullname { get; set; }
        public string AccountRoles { get; set; }
        public string CaseICD10 { get; set; }
        public string ReasonForAdmissionName { get; set; }
        public DateTime? ICD10CodeTimestamp { get; set; }

    }
}