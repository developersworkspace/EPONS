using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models.ViewModels
{
    public class VisitViewModel
    {
        public Models.Patient patient { get; set; }
        public Models.Account account { get; set; }
        public bool requiresVitalSigns { get; set; }
        public bool IsPrivate { get; set; }

        public VisitViewModel() { }
    }
}
