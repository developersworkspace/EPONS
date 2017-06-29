using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.EntityViews
{
    public class TeamMember
    {
        public Guid Id { get; set; }
        public string Facility { get; set; }
        public string Permission { get; set; }
        public string Position { get; set; }
        [DisplayName("First Name")]
        public string Firstname { get; set; }
        [DisplayName("Last Name")]
        public string Lastname { get; set; }
        [DisplayName("Allocation Date")]
        public DateTime AllocationDate { get; set; }
        [DisplayName("Deallocation Date")]
        public DateTime? DeallocationDate { get; set; }

        public string Fullname
        {
            get
            {
                return string.Format("{0} {1}", Firstname, Lastname);
            }
        }
    }
}
