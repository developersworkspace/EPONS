using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.EntityViews
{
    public class Patient
    {
        public Guid Id { get; set; }
        [DisplayName("First Name")]
        public string Firstname { get; set; }
        [DisplayName("Last Name")]
        public string Lastname { get; set; }
        [DisplayName("Date of Birth")]
        public DateTime DateOfBirth { get; set; }
        public string Gender { get; set; }
        public string Race { get; set; }
        [DisplayName("Medical Scheme")]
        public string MedicalScheme { get; set; }
        public string Facilities { get; set; }
    }
}
