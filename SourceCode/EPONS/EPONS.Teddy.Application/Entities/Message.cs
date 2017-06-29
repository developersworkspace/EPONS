using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Entities
{
    public class Message
    {
        public Guid Id { get; set; }
        public Guid SenderId { get; set; }
        public string SenderDisplayName { get; set; }
        public string Body { get; set; }
        public DateTime Timestamp { get; set; }
        public Guid PatientId { get; set; }
        public string PatientDisplayName { get; set; }
        public IList<EntityViews.User> Recipients { get; set; } = new List<EntityViews.User>();
    }
}
