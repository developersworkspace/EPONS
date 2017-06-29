using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SADFM.Web.ViewModels
{
    public class FacilityPerformanceReport
    {
        
        public Guid[] MedicalSchemes { get; set; }

        [Required(ErrorMessage = "Please select a scale")]
        public Guid ScaleId { get; set; }

        [Required(ErrorMessage = "Please enter a start date")]
        public DateTime? StartDate { get; set; }

        [Required(ErrorMessage = "Please enter an end date")]
        public DateTime? EndDate { get; set; }

        public Guid? ProviderId { get; set; }


        public bool IsValid()
        {
            if (!this.StartDate.HasValue)
                return false;

            if (!this.EndDate.HasValue)
                return false;

            return true;
        }
    }
}