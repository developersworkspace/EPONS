using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EPONS.Teddy.Presentation.ViewObjects.Facility
{
    public class Edit : Base
    {
        public Application.Entities.Facility Facility { get; set; } = new Application.Entities.Facility();
        public IList<Application.ValueObjects.ListItem> MeasurementTools { get; set; } = new List<Application.ValueObjects.ListItem>();
        public IList<Application.ValueObjects.ListItem> MeasurementToolList { get; set; } = new List<Application.ValueObjects.ListItem>();

        public Edit() :base()
        {

        }

        public Edit(Base baseModel) : base(baseModel)
        {

        }

    }
}