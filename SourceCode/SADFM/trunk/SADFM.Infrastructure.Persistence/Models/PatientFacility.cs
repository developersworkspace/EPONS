namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PatientFacility")]
    public partial class PatientFacility
    {

        private PatientFacility() { }

        public PatientFacility(Facility facility,Case cse, Account teamMember)
        {

        }

        public Guid PatientFacilityId { get; set; }

        public Guid PatientId { get; set; }

        public Guid FacilityId { get; set; }

        public Guid TeamMemberId { get; set; }

        public Guid? CaseId { get; set; }

        public DateTime AllocationDate { get; set; }

        public DateTime? DischargeDate { get; set; }

        public virtual Account Account { get; set; }

        public virtual Case Case { get; set; }

        public virtual Facility Facility { get; set; }

        public virtual Patient Patient { get; set; }
    }
}
