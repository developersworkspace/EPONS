namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Country")]
    public partial class Country
    {
        private Country() { }

        public Country(string name)
        {
            this.Name = name;
        }

        public Country AddProvince(Province province)
        {
            if (this.Provinces == null)
                this.Provinces = new List<Province>();

            this.Provinces.Add(province);

            return this;
        }


        public Guid CountryId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        public virtual ICollection<FacilityServiceType> FacilityServiceTypes { get; set; }

        public virtual ICollection<Patient> Patients { get; set; }

        public virtual ICollection<Province> Provinces { get; set; }
    }
}
