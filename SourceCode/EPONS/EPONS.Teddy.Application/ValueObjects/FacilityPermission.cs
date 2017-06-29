using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.ValueObjects
{
    public class FacilityPermission
    {
        public Guid UserId { get; set; }
        [DisplayName("Facility")]
        public Guid FacilityId { get; set; }
        public string Facility { get; set; }
        [DisplayName("Permission")]
        public Guid PermissionId { get; set; }
        public string Permission { get; set; }

        public IList<ValueObjects.ListItem> Facilities { get; set; }
        public IList<ValueObjects.ListItem> Permissions { get; set; }
    }
}
