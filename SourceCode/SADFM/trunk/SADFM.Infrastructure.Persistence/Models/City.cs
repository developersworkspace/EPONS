namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("City")]
    public partial class City
    {
        private City() { }

        public City(string name)
        {
            this.Name = name;

        }

        public Guid CityId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        public Guid ProvinceId { get; set; }

        public virtual Province Province { get; set; }

        public virtual ICollection<FacilityServiceType> FacilityServiceTypes { get; set; }

        public virtual ICollection<Patient> Patients { get; set; }
    }
}
