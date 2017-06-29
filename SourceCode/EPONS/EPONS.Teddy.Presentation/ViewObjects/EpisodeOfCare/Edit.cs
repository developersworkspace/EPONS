using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using EPONS.Teddy.Application.ValueObjects;

namespace EPONS.Teddy.Presentation.ViewObjects.EpisodeOfCare
{
    public class Edit : Base
    {
        public Application.Entities.EpisodeOfCare EpisodeOfCare { get; set; }
        public IList<ListItem> AdmissionTypes { get; set; } = new List<ListItem>();
        public IList<ListItem> DischargeTypes { get; set; } = new List<ListItem>();
        public IList<ListItem> ImpairmentGroups { get; set; } = new List<ListItem>();

        public Edit() : base()
        {

        }

        public Edit(Base baseModel) : base(baseModel)
        {

        }
    }
}