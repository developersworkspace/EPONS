using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EPONS.Teddy.Presentation.ViewObjects.Messaging
{
    public class SendPatientPost
    {
        public Guid[] UserIds { get; set; }
        public string Message { get; set; }
        public Guid PatientId { get; set; }
    }
}