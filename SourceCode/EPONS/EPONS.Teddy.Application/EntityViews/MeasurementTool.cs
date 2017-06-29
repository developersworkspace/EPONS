using EPONS.Teddy.Application.ValueObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.EntityViews
{
    public class MeasurementTool
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string Frequency { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public DateTime? LastCompletedTimestamp { get; set; }
        public IList<ScoreItem> ScoreItems { get; set; } = new List<ScoreItem>();

        public bool IsStandardMeasurementTool()
        {
            return Name != "Vital Signs";
        }

        public bool IsOverDue()
        {
            int days = 0;
            switch (Frequency)
            {
                case "Daily":
                    days = 1;
                    break;
                case "Every 2nd day":
                    days = 2;
                    break;
                case "Weekly":
                    days = 7;
                    break;
                case "Every 2 weeks":
                    days = 14;
                    break;
                case "Monthly":
                    days = 30;
                    break;
                case "Once-off":
                    return false;
                case "Stat":
                    return false;

            }

            if (!LastCompletedTimestamp.HasValue)
                return true;

            return DateTime.Now.Subtract(LastCompletedTimestamp.Value).TotalDays < days;
        }

        public string SubScoreAggregationMethod()
        {
            return Name == "Delta" ? "minimum" : Name == "APOM" ? "median" : null;
        }

    }
}
