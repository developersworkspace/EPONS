using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EPONS.Teddy.Presentation.ViewObjects.Error
{
    public class UnAuthorized : Base
    {
        public Exception Exception { get; set; }

        public UnAuthorized(Base baseModel) : base(baseModel)
        {

        }
    }
}