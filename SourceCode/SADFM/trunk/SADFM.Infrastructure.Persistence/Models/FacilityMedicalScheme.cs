namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("FacilityMedicalScheme")]
    public partial class FacilityMedicalScheme
    {
        [Key]
        [Column(Order = 0)]
        public Guid MedicalSchemeId { get; set; }

        [Key]
        [Column(Order = 1)]
        public Guid FacilityId { get; set; }
    }
}
