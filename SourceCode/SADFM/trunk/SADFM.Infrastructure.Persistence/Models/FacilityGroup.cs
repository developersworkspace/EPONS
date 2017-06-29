namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("FacilityGroup")]
    public partial class FacilityGroup
    {
        public FacilityGroup()
        {
            Facilities = new HashSet<Facility>();
        }

        public Guid FacilityGroupId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        public virtual ICollection<Facility> Facilities { get; set; }
    }
}
