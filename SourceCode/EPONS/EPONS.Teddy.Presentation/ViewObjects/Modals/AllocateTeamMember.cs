using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.ViewObjects.Modals
{
    public class AllocateTeamMember
    {
        [Display(Name = "Facility")]
        [Required(ErrorMessage = "Facility cannot be empty")]
        public Guid FacilityId { get; set; }
        [Display(Name = "Users")]
        [Required(ErrorMessage = "Users cannot be empty")]
        public Guid[] UserIds { get; set; }
        public Guid PatientId { get; set; }
        public string ICD10CodeName { get; set; }
        public DateTime? ICD10CodeTimestamp { get; set; }
        public SelectList Facilities { get; set; }
        public SelectList Users { get; set; }
    }
}