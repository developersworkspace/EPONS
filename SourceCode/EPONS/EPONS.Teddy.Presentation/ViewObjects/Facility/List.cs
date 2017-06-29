using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EPONS.Teddy.Presentation.ViewObjects.Facility
{
    public class List : Base
    {
        public List<Application.EntityViews.Facility> Facilities { get; set; }

        public List() :base()
        {

        }

        public List(Base baseModel) : base(baseModel)
        {
           
        }

    }
}