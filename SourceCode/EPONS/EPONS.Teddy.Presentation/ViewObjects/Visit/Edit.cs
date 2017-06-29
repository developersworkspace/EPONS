using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EPONS.Teddy.Presentation.ViewObjects.Visit
{
    public class Edit : Base
    {
        public Application.Entities.Visit Visit { get; set; }
        public IList<Application.EntityViews.MeasurementTool> MeasurementTools { get; set; } = new List<Application.EntityViews.MeasurementTool>();
        public Application.Entities.Patient Patient { get; set; }
        public Guid[] ScoreValues { get; set; } = new Guid[0];

        public Edit(Base baseModel) : base(baseModel)
        {

        }

        public Edit() : base()
        {

        }

        public Application.EntityViews.MeasurementTool GetVitalSigns()
        {
            return null;
        }
    }
}