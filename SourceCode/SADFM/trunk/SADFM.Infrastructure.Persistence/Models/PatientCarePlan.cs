namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PatientCarePlan")]
    public partial class PatientCarePlan
    {


        private PatientCarePlan() { }

        public PatientCarePlan(Careplan careplan, Frequency frequency, Facility facility)
        {

        }

        public Guid PatientCarePlanId { get; set; }

        public Guid FacilityId { get; set; }

        public Guid PatientId { get; set; }

        public Guid CareplanId { get; set; }

        public Guid FrequencyId { get; set; }

        public virtual Careplan Careplan { get; set; }

        public virtual Frequency Frequency { get; set; }

        public virtual Patient Patient { get; set; }

        public virtual Facility Facility { get; set; }
    }
}
