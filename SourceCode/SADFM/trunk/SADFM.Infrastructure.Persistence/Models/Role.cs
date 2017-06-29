namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Role")]
    public partial class Role
    {
        private Role() { }

        public Role(string name)
        {
            this.Name = name;
        }


        public Guid RoleId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        public Guid RoleGroupId { get; set; }

        public virtual RoleGroup RoleGroup { get; set; }
    }
}
