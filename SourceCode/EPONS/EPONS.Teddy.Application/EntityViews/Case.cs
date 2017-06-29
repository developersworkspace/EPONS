using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.EntityViews
{
    public class Case
    {
        public Guid Id { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public string ICD10Code { get; set; }
        public string NameOfReferringDoctor { get; set; }
        public string EmailAddressOfReferringDoctor { get; set; }
        public string ContactNumberOfReferringDoctor { get; set; }
        public string HPCSANumberOfReferringDoctor { get; set; }
        public string PracticeNumberOfReferringDoctor { get; set; }
        public string NameOfAttendingDoctor { get; set; }
        public string EmailAddressOfAttendingDoctor { get; set; }
        public string ContactNumberOfAttendingDoctor { get; set; }
        public string HPCSANumberofAttendingDoctor { get; set; }
        public string PracticeNumberOfAttendingDoctor { get; set; }
    }
}
