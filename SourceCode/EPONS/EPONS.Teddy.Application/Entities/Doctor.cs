using System.ComponentModel;

namespace EPONS.Teddy.Application.Entities
{
    public class Doctor
    {
        [DisplayName("Name")]
        public string Name { get; set; }

        [DisplayName("Contact Number")]
        public string ContactNumber { get; set; }

        [DisplayName("Email Address")]
        public string Email { get; set; }

        [DisplayName("Practice Number")]
        public string PracticeName { get; set; }

        [DisplayName("HPCSA Number")]
        public string HPCSANumber { get; set; }

        public bool? IsActive { get; set; }

    }
}
