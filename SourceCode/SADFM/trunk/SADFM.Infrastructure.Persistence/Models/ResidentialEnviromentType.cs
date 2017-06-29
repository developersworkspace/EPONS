namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ResidentialEnviromentType")]
    public partial class ResidentialEnviromentType
    {
        public ResidentialEnviromentType()
        {
            Patients = new HashSet<Patient>();
        }

        public Guid ResidentialEnviromentTypeId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        public virtual ICollection<Patient> Patients { get; set; }
    }
}
