using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EPONS.Teddy.Presentation.ViewObjects.EpisodeOfCare
{
    public class List : Base, IEnumerable
    {
        public Guid EpisodeOfCareId { get; set; }
        public Guid FacilityId { get; set; }
        public string Facility { get; set; }
        [Display(Name = "Admission")]
        public DateTime AllocationTimestamp { get; set; }
        [Display(Name = "Discharge")]
        public DateTime? DeallocationTimestamp { get; set; }
        public Guid? ReasonForAdmissionId { get; set; }
        [Display(Name = "ICD10")]
        public string ReasonForAdmissionName { get; set; }
        [Display(Name = "Admission Number")]
        public string AllocationNumber { get; set; }
        public DateTime? ReasonForAdmissionTimestamp { get; set; }
        public Guid? AdmissionTypeId { get; set; }
        public Guid? DischargeTypeId { get; set; }
        public Guid? ImpairmentGroupId { get; set; }
        [Display(Name = "Impairment Group")]
        public string ImpairmentGroup { get; set; }
        [Display(Name = "Referring Doctor")]
        public string ReferringDoctorName { get; set; }

        [Display(Name = "Attending Doctor")]
        public string AttendingDoctorName { get; set; }
        public Pagination Pagination { get; set; }
        public int PageSize { get; set; }
        public string ListType { get; set; }
        public Application.Entities.EpisodeOfCare EpisodeOfCare { get; set; }

        public List(Base baseModel) : base(baseModel)
        {

        }

        public List() : base()
        {

        }

        public IEnumerator GetEnumerator()
        {
            throw new NotImplementedException();
        }
    }
}