using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.ViewObjects.Modals
{
    public class AddMeasurementTool
    {
        public Guid FacilityId { get; set; }
        [Display(Name = "Measurement Tool")]
        [Required(ErrorMessage = "Measurement Tool cannot be empty")]
        public Guid MeasurementToolId { get; set; }
        public SelectList MeasurementTools { get; set; }
    }
}