using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SADFM.Web.Models
{
    public class Accreditation
    {
        public string ScaleCode { get; set; }
        public string Username { get; set; }
        public string EmailAddress { get; set; }
        public double Grade { get; set; }
        public long GradeTimestamp { get; set; }
        public bool UserMatched { get; set; }
        public DateTime GradeDate
        {
            get
            {
                DateTime epoch = new DateTime(1970, 1, 1);
                return epoch.AddSeconds(GradeTimestamp);
            }
        }

        public string GradeDisplay { get; set; }
    }
}