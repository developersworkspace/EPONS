using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.EntityViews
{
    public class Visit
    {
        public Guid Id { get; set; }
        public DateTime Timestamp { get; set; }
        public string User { get; set; }
        [DisplayName("Duration of this Visit (Minutes)")]
        public int DurationOfVisit { get; set; }
        [DisplayName("Measurement Tools")]
        public string MeasurementTools { get; set; }
    }
}
