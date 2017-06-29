namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class FacilityPermission
    {
        public FacilityPermission()
        {
            Permissions = new HashSet<Permission>();
        }

        [Key]
        public Guid FacilityPermissionsId { get; set; }

        public Guid FacilityId { get; set; }

        public Guid AccountId { get; set; }

        public virtual Account Account { get; set; }

        public virtual Facility Facility { get; set; }

        public virtual ICollection<Permission> Permissions { get; set; }
    }
}
