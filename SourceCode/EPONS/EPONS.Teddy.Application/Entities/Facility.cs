using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Entities
{
    public class Facility
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        [DisplayName("Monthly Rate")]
        public double MonthlyRate { get; set; }
        [DisplayName("Is Funder")]
        public bool IsFunder { get; set; }
        public byte[] Avatar { get; set; }
        [DisplayName("Admission Type")]
        public Guid? AdmissionTypeId { get; set; }

        public IList<ValueObjects.ListItem> AdmissionTypes { get; set; } = new List<ValueObjects.ListItem>();
    }
}
