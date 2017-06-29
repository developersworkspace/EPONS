using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Web.Models
{
    public class PatientReport
    {

       public string Graph {get;set;} 
        public string PatientId  {get;set;}
        public string ScaleId  {get;set;}
        public string SelectedDatesString { get; set; }

        public long[] SelectedDates { get; set; }


    }
}
