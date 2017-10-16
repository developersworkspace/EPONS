using System;
using System.Collections.Generic;

namespace EPONS.Teddy.Presentation.ViewObjects.Visit
{
    public class Create : Base
    {
        public Application.Entities.Visit Visit { get; set; }
        public IList<Application.EntityViews.MeasurementTool> MeasurementTools { get; set; } = new List<Application.EntityViews.MeasurementTool>();
        public IList<Application.EntityViews.Survey> Surveys { get; set; } = new List<Application.EntityViews.Survey>();
        public Application.Entities.Patient Patient { get; set; }
        public Application.EntityViews.EpisodeOfCare EpisodeOfCare { get; set; }
        public Guid[] ScoreValues { get; set; } = new Guid[0];

        public Create(Base baseModel) : base(baseModel)
        {

        }

        public Create() : base()
        {

        }

        public Application.EntityViews.MeasurementTool GetVitalSigns()
        {
            return null;
        }
    }
}