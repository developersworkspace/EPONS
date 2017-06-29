namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class AdmissionStatus
    {
        public AdmissionStatus()
        {
            Cases = new HashSet<Case>();
        }

        [Key]
        public Guid AdmissionStatusId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        public virtual ICollection<Case> Cases { get; set; }
    }
}
