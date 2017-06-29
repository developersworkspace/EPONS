using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace EPONS.Teddy.Application.Models
{
    public class ProgressReport
    {
        #region Properties

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public byte[] FacilityImage { get; set; }
        public Entities.Patient Patient { get; set; }
        public IList<EntityViews.TeamMember> TeamMembers { get; set; } = new List<EntityViews.TeamMember>();
        public IList<Entities.Visit> Visits { get; set; } = new List<Entities.Visit>();
        //public IList<EntityViews.Case> Cases { get; set; } = new List<EntityViews.Case>();
        public IList<EntityViews.ReferringDoctors> ReferringDoctors { get; set; } = new List<EntityViews.ReferringDoctors>();
        public IList<EntityViews.AttendingDoctors> AttendingDoctors { get; set; } = new List<EntityViews.AttendingDoctors>();
        public IList<EntityViews.EpisodesofCare> EpisodesofCare { get; set; } = new List<EntityViews.EpisodesofCare>();
        public IList<EntityViews.Diagnoses> Diagnoses { get; set; } = new List<EntityViews.Diagnoses>();
        public List<Entities.Visit> ProgressNotes
        {
            get
            {
                if (Visits == null)
                    return new List<Entities.Visit>();

                return Visits.Where(x => !string.IsNullOrWhiteSpace(StripHTML(HttpUtility.HtmlDecode(x.ProgressNotes)))).OrderBy(x => x.Timestamp).ToList();
            }
        }
        public IList<EntityViews.MeasurementTool> MeasurementTools { get; set; } = new List<EntityViews.MeasurementTool>();
        public Dictionary<EntityViews.CompletedMeasurementTool, byte[]> MeasurementToolChartsRadar { get; set; } = new Dictionary<EntityViews.CompletedMeasurementTool, byte[]>();
        public Dictionary<EntityViews.CompletedMeasurementTool, byte[]> MeasurementToolChartsLine { get; set; } = new Dictionary<EntityViews.CompletedMeasurementTool, byte[]>();
        public byte[] VitalSignsChart { get; set; }
        public string DateFormat { get; set; }
        public string DateTimeFormat { get; set; }

        #endregion

        #region Private Methods

        private string StripHTML(string inputString)
        {
            if (inputString == null)
                return null;

            return Regex.Replace
            (inputString, "<.*?>", string.Empty);
        }

        #endregion
    }
}
