namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Frequency")]
    public partial class Frequency
    {
        private Frequency() { }

        public Frequency(string name, int frequencyPerWeek)
        {
            this.Name = name;
            this.FrequencyPerWeek = frequencyPerWeek;
        }

        public Guid FrequencyId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        public int FrequencyPerWeek { get; set; }

        public virtual ICollection<PatientCarePlan> PatientCarePlans { get; set; }
    }
}
