namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ServiceType")]
    public partial class ServiceType
    {

        private ServiceType() { }

        public ServiceType(string name, string code)
        {
            this.Name = name;
            this.Code = code;
        }


        public Guid ServiceTypeId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        [Required]
        [StringLength(255)]
        public string Code { get; set; }

        public Guid ServiceTypeGroupId { get; set; }

        public virtual ServiceTypeGroup ServiceTypeGroup { get; set; }
    }
}
