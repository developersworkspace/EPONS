using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EPONS.Teddy.Application.ValueObjects;
using System.ComponentModel.DataAnnotations;
using EPONS.Teddy.Application.Attributes;
using System.ComponentModel;

namespace EPONS.Teddy.Application.Entities
{
    public class TeamMember
    {
        public Guid Id { get; set; }
        public Guid PatientId { get; set; }
        [DisplayName("Facility")]
        public Guid FacilityId { get; set; }
        [DisplayName("Users")]
        public Guid[] UserIds { get; set; }
        public string ReasonForAdmissionName { get; set; }
        public DateTime ReasonForAdmissionTimestamp { get; set; }
        public Guid AdmissionTypeId { get; set; }
        public IList<ValueObjects.ListItem> Facilities { get; set; } = new List<ValueObjects.ListItem>();
    }
}
