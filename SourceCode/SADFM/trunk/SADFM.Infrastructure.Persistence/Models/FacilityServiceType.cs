namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("FacilityServiceType")]
    public partial class FacilityServiceType
    {
        public Guid FacilityServiceTypeId { get; set; }

        [StringLength(255)]
        public string ContactNumber { get; set; }

        [StringLength(255)]
        public string Street { get; set; }

        [StringLength(255)]
        public string PostalCode { get; set; }

        public Guid CountryId { get; set; }

        public Guid CityId { get; set; }

        public Guid ProvinceId { get; set; }

        public Guid FacilityId { get; set; }

        public virtual City City { get; set; }

        public virtual Country Country { get; set; }

        public virtual Facility Facility { get; set; }

        public virtual Province Province { get; set; }
    }
}
