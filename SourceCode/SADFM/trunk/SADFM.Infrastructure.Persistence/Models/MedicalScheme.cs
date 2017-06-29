namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("MedicalScheme")]
    public partial class MedicalScheme
    {
        private MedicalScheme() { }

        public MedicalScheme(string name)
        {
            this.Name = name;
        }

        public MedicalScheme AddFacility(Facility facility)
        {
            if (this.Facilities == null)
                this.Facilities = new List<Facility>();

            this.Facilities.Add(facility);

            return this;
        }

        public Guid MedicalSchemeId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        public virtual ICollection<Patient> Patients { get; set; }

        public virtual ICollection<Facility> Facilities { get; set; }
    }
}
