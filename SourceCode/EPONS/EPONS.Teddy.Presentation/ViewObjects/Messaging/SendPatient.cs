using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EPONS.Teddy.Presentation.ViewObjects.Messaging
{
    public class SendPatient : Base
    {
        public IList<Application.Entities.Message> MessagesList { get; set; } = new List<Application.Entities.Message>();
        public Application.Entities.Patient Patient { get; set; }
        public IList<Application.EntityViews.TeamMember> TeamMembers { get; set; } = new List<Application.EntityViews.TeamMember>();

        public SendPatient() :base()
        {

        }

        public SendPatient(Base baseModel) : base(baseModel)
        {

        }
    }
}