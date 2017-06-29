namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Race")]
    public partial class Race
    {
        private Race() { }

        public Race(string name)
        {
            this.Name = name;
        }


        public Guid RaceId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        public virtual ICollection<Patient> Patients { get; set; }
    }
}
