using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EPONS.Teddy.Presentation.ViewObjects.Facility
{
    public class Create : Base
    {
        public Application.Entities.Facility Facility { get; set; } = new Application.Entities.Facility();

        public Create() :base()
        {

        }

        public Create(Base baseModel) : base(baseModel)
        {

        }
       
    }
}