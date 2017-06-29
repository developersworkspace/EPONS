using System.Collections.Generic;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.ViewObjects.Patient
{
    public class Edit : Base
    {
        public Application.Entities.Patient Patient { get; set; }
        public IList<Application.EntityViews.MeasurementTool> MeasurementTools { get; set; } = new List<Application.EntityViews.MeasurementTool>();
        public IList<Application.EntityViews.Visit> Visits { get; set; } = new List<Application.EntityViews.Visit>();
        public IList<Application.EntityViews.EpisodeOfCare> EpisodesOfCare { get; set; } = new List<Application.EntityViews.EpisodeOfCare>();
        public IList<Application.EntityViews.TeamMember> TeamMembers { get; set; } = new List<Application.EntityViews.TeamMember>();
        public IList<Application.EntityViews.Case> Cases { get; set; } = new List<Application.EntityViews.Case>();
        public SelectList MeasurementToolList { get; set; } = new SelectList(new List<string>());
        public SelectList FrequencyList { get; set; } = new SelectList(new List<string>());
        public Application.Entities.TeamMember TeamMember { get; set; }
        public Application.Entities.EpisodeOfCare EpisodeOfCare { get; set; }

        public Edit(Base baseModel) : base(baseModel)
        {

        }

        public Edit() : base()
        {

        }
    }
}