namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ServiceTypeGroup")]
    public partial class ServiceTypeGroup
    {
        private ServiceTypeGroup() { }

        public ServiceTypeGroup(string name, string code, string type)
        {
            this.Name = name;
            this.Code = code;
            this.Type = type;
        }

        public ServiceTypeGroup AddServiceType(ServiceType serviceType)
        {
            if (this.ServiceTypes == null)
                this.ServiceTypes = new List<ServiceType>();

            this.ServiceTypes.Add(serviceType);

            return this;
        }


        public Guid ServiceTypeGroupId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        [Required]
        [StringLength(255)]
        public string Code { get; set; }

        [Required]
        [StringLength(255)]
        public string Type { get; set; }

        public virtual ICollection<ServiceType> ServiceTypes { get; set; }
    }
}
