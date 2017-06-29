using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.EntityViews
{
    public class EpisodeOfCare
    {
        public Guid EpisodeOfCareId { get; set; }
        public Guid FacilityId { get; set; }
        public string icd10Code { set; get; }
        public string Facility { get; set; }
        [Display(Name = "Admission")]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd HH:mm}")]
        public DateTime AllocationTimestamp { get; set; }
        [Display(Name = "Discharge")]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd HH:mm}")]
        public DateTime? DeallocationTimestamp { get; set; }
        public Guid? ReasonForAdmissionId { get; set; }
        [Display(Name = "ICD10")]
        public string ReasonForAdmissionName { get; set; }
        [Display(Name = "Unique hospital or clinic number on admission")]
        public string AllocationNumber { get; set; }
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd HH:mm}")]
        public DateTime? ReasonForAdmissionTimestamp { get; set; }
        public Guid? AdmissionTypeId { get; set; }
        public Guid? DischargeTypeId { get; set; }
        public Guid? ImpairmentGroupId { get; set; }
        [Display(Name = "Impairment Group")]
        public string ImpairmentGroup { get; set; }
        [Display(Name = "Referring Doctor")]
        public string ReferringDoctorName { get; set; }

        [Display(Name = "Treating Doctor")]
        public string AttendingDoctorName { get; set; }
    }
}
