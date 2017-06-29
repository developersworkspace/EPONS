namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("RoleGroup")]
    public partial class RoleGroup
    {
        private RoleGroup() { }

        public RoleGroup(string name)
        {
            this.Name = name;
        }

        public RoleGroup AddRoles(Role role)
        {
            if (this.Roles == null)
                this.Roles = new List<Role>();

            this.Roles.Add(role);

            return this;
        }

        public Guid RoleGroupId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Role> Roles { get; set; }
    }
}
