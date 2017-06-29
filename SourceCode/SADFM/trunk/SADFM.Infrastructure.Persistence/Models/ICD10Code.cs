namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class ICD10Code
    {
        private ICD10Code() { }

        public ICD10Code(string code, string description)
        {
            this.Code = code;
            this.Description = description;
        }

        public Guid ICD10CodeId { get; set; }

        [Required]
        [StringLength(255)]
        public string Code { get; set; }

        [Required]
        [StringLength(255)]
        public string Description { get; set; }

        public virtual ICollection<Case> Cases { get; set; }
    }
}
