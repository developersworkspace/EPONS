using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Entities
{
    public class User
    {
        public Guid Id { get; set; }
        public string DisplayName
        {
            get
            {
                return string.Format("{0} {1} ({2})", Firstname, Lastname, Username);
            }
        }

        [DisplayName("First Name")]
        public string Firstname { get; set; }
        [DisplayName("Last Name")]
        public string Lastname { get; set; }
        [DisplayName("User Name")]
        public string Username { get; set; }
        [DisplayName("Email Address")]
        public string EmailAddress { get; set; }
       
        public bool IsSuperAdmin { get; set; }
        public bool IsActive { get; set; }
        [DisplayName("Title")]
        public Guid? TitleId { get; set; }
        public string Title { get; set; }
        [DisplayName("Contact Number")]
        public string ContactNumber { get; set; }
        [DisplayName("Identification Number")]
        public string IdentificationNumber { get; set; }
        [DisplayName("Professional Body")]
        public Guid? ProfessionalBodyId { get; set; }
        [DisplayName("Professional Body")]
        public string ProfessionalBody { get; set; }
        [DisplayName("Professional Body Registration Number")]
        public string ProfessionalBodyRegistrationNumber { get; set; }
        [DisplayName("Practice Number")]
        public string PracticeNumber { get; set; }

        [DisplayName("Position")]
        public Guid? PositionId { get; set; }
        [DisplayName("Position")]
        public string Position { get; set; }
         public bool AcceptedDisclaimer { get; set; }
        public IList<ValueObjects.ListItem> Permissions { get; set; } = new List<ValueObjects.ListItem>();
        public IList<ValueObjects.ListItem> Titles { get; set; } = new List<ValueObjects.ListItem>();
        public IList<ValueObjects.ListItem> ProfessionalBodies { get; set; } = new List<ValueObjects.ListItem>();
        public IList<ValueObjects.ListItem> Positions { get; set; } = new List<ValueObjects.ListItem>();
        public EntityViews.Facility CurrentFacility { get; set; }
        public IList<EntityViews.Facility> Facilitites { get; set; } = new List<EntityViews.Facility>();
        public IList<ValueObjects.ListItem> CurrentFacilityMeasurementTools { get; set; } = new List<ValueObjects.ListItem>();
        public IList<ValueObjects.MeasurementToolScore> MeasurementToolScores { get; set; } = new List<ValueObjects.MeasurementToolScore>();
    }
}
