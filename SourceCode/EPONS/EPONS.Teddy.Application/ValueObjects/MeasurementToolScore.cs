using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.ValueObjects
{
    public class MeasurementToolScore
    {
        public Guid UserId { get; set; }
        [DisplayName("Measurement Tool")]
        public Guid Id { get; set; }
        public string Name { get; set; }
        public int Score { get; set; }
        public DateTime Timestamp { get; set; }

        public IList<ListItem> MeasurementTools { get; set; } = new List<ListItem>();
    }
}
