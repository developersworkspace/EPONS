namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Facility")]
    public partial class Facility
    {
        private Facility() { }

        public Facility(string name, double montlyRate)
        {
            this.Name = name;
            this.MonthlyRate = montlyRate;
            this.IsFunder = false;
        }

        public Facility SetAsFunder()
        {
            this.IsFunder = true;

            return this;
        }

        public Guid FacilityId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        public Guid FacilityGroupId { get; set; }

        public double? MonthlyRate { get; set; }

        public bool IsFunder { get; set; }

        public virtual FacilityGroup FacilityGroup { get; set; }

        public virtual ICollection<FacilityPermission> FacilityPermissions { get; set; }

        public virtual ICollection<FacilityServiceType> FacilityServiceTypes { get; set; }

        public virtual ICollection<PatientFacility> PatientFacilities { get; set; }

        public virtual ICollection<MedicalScheme> MedicalSchemes { get; set; }

        public virtual ICollection<PatientCarePlan> PatientCarePlans { get; set; }
    }
}
