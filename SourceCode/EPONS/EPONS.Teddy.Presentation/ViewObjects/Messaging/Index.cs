using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EPONS.Teddy.Presentation.ViewObjects.Messaging
{
    public class Index : Base
    {
        public IList<Application.Entities.Message> MessagesList { get; set; } = new List<Application.Entities.Message>();

        public Index() :base()
        {

        }

        public Index(Base baseModel) : base(baseModel)
        {

        }
    }
}