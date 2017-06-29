using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EPONS.Teddy.Presentation.ViewObjects.Survey
{
    public class Index : Base
    {
        public Application.Entities.Survey Survey { get; set; }
        public Application.Entities.Patient Patient { get; set; }

        public Index() : base()
        {

        }

        public Index(Base baseModel) : base(baseModel)
        {

        }
    }
}