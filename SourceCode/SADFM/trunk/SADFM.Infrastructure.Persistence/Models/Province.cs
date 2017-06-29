namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Province")]
    public partial class Province
    {
        private Province() { }

        public Province(string name)
        {
            this.Name = name;
        }

        public Province AddCity(City city)
        {
            if (this.Cities == null)
                this.Cities = new List<City>();

            this.Cities.Add(city);

            return this;
        }

        public Guid ProvinceId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        public Guid CountryId { get; set; }

        public virtual ICollection<City> Cities { get; set; }

        public virtual Country Country { get; set; }

        public virtual ICollection<FacilityServiceType> FacilityServiceTypes { get; set; }

        public virtual ICollection<Patient> Patients { get; set; }
    }
}
