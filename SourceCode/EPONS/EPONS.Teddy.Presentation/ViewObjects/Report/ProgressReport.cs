using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EPONS.Teddy.Presentation.ViewObjects.Report
{
    public class ProgressReport : Base
    {
        public Guid PatientId { get; set; }
        [Display(Name = "Start Date")]
        public DateTime StartDate { get; set; }
        [Display(Name = "End Date")]
        public DateTime EndDate { get; set; }
        [Display(Name = "Include Radar Chart")]
        public bool IncludeRadarChart { get; set; }
        [Display(Name = "Include Line Chart")]
        public bool IncludeLineChart { get; set; }
        public bool ShowCaseManagerNotes { get; set; }
        public bool ShowDailyClinicalNotes { get; set; }

        public ProgressReport() : base()
        {

        }

        public ProgressReport(Base baseModel) : base(baseModel)
        {

        }

    }
}