namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("AdmissionType")]
    public partial class AdmissionType
    {
        private AdmissionType() { }

        public AdmissionType(string name)
        {
            this.Name = name;
        }

        public Guid AdmissionTypeId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }
    }
}
