using SADFM.Data.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SADFM.Web.ViewModels
{
    public class FacilityDashboardReport
    {
        public List<Provider> Facilities { get; set; }

        public Guid? FacilityId { get; set; }

        [Required(ErrorMessage = "Please enter a start date")]
        public DateTime? StartDate { get; set; }

        [Required(ErrorMessage = "Please enter an end date")]
        public DateTime? EndDate { get; set; }
    }
}