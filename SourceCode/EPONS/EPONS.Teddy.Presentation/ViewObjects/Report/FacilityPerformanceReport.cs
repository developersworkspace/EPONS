
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.ViewObjects.Report
{
    public class FacilityPerformanceReport : Base
    {
        [DisplayName("Start Date")]
        public DateTime StartDate { get; set; }
        [DisplayName("End Date")]
        public DateTime EndDate { get; set; }
        [DisplayName("Facility")]
        public Guid FacilityId { get; set; }
        [DisplayName("Measurement Tool")]
        public Guid MeasurementToolId { get; set; }
        public SelectList Facilities { get; set; }
        public SelectList MeasurementTools { get; set; }

        public FacilityPerformanceReport() : base()
        {

        }

        public FacilityPerformanceReport(Base baseModel) : base(baseModel)
        {

        }
    }
}