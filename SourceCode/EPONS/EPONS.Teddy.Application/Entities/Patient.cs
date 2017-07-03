using EPONS.Teddy.Application.Attributes;
using EPONS.Teddy.Application.Enums;
using EPONS.Teddy.Application.Extensions;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Entities
{
    public class Patient
    {
        public Guid Id { get; set; }
        [DisplayName("First Name")]
        public string Firstname { get; set; }
        [DisplayName("Last Name")]
        public string Lastname { get; set; }
        [DisplayName("Date of Birth")]
        public DateTime? DateOfBirth { get; set; }
        public string Gender { get; set; }
        [DisplayName("Gender")]
        public Guid? GenderId { get; set; }
        public string Race { get; set; }
        [DisplayName("Race")]
        public Guid? RaceId { get; set; }
        public string Title { get; set; }
        [DisplayName("Title")]
        public Guid? TitleId { get; set; }
        [DisplayName("Contact Number")]
        public string ContactNumber { get; set; }
        [DisplayName("Identification Number")]
        public string IdentificationNumber { get; set; }
        [DisplayName("Passport Number")]
        public string PassportNumber { get; set; }
        public string Country { get; set; }
        [DisplayName("Country")]
        public Guid? CountryId { get; set; }
        public string Province { get; set; }
        [DisplayName("Province")]
        public Guid? ProvinceId { get; set; }
        public string City { get; set; }
        [DisplayName("City")]
        public Guid? CityId { get; set; }
        public string Street { get; set; }
        [DisplayName("Postal Code")]
        public string PostalCode { get; set; }
        [DisplayName("Residential Environment")]
        public string ResidentialEnvironment { get; set; }
        [DisplayName("Residential Environment")]
        public Guid? ResidentialEnvironmentId { get; set; }
        [DisplayName("Name of Next of Kin")]
        public string NameOfNextOfKin { get; set; }
        [DisplayName("Email Address of Next of Kin")]
        public string EmailAddressOfNextOfKin { get; set; }
        [DisplayName("Contact Number of Next of Kin")]
        public string ContactNumberOfNextOfKin { get; set; }
        [DisplayName("Relationship of Next of Kin")]
        public string RelationshipOfNextOfKin { get; set; }
        [DisplayName("Medical Scheme")]
        public string MedicalScheme { get; set; }
        [DisplayName("Medical Scheme")]
        public Guid? MedicalSchemeId { get; set; }
        [DisplayName("Medical Scheme Number")]
        public string MedicalSchemeNumber { get; set; }
        public string ImpairmentGroup { get; set; }
        public Guid? ImpairmentGroupId { get; set; }
        public IList<ValueObjects.SupportService> SupportServices { get; set; } = new List<ValueObjects.SupportService>();
        public byte[] Avatar { get; set; }
        public IList<ValueObjects.ListItem> Titles { get; set; } = new List<ValueObjects.ListItem>();
        public IList<ValueObjects.ListItem> Genders { get; set; } = new List<ValueObjects.ListItem>();
        public IList<ValueObjects.ListItem> Races { get; set; } = new List<ValueObjects.ListItem>();
        public IList<ValueObjects.ListItem> Countries { get; set; } = new List<ValueObjects.ListItem>();
        public IList<ValueObjects.ListItem> ResidentialEnvironments { get; set; } = new List<ValueObjects.ListItem>();
        public IList<ValueObjects.ListItem> MedicalSchemes { get; set; } = new List<ValueObjects.ListItem>();
        public IList<ValueObjects.ListItem> Provinces { get; set; } = new List<ValueObjects.ListItem>();
        public IList<ValueObjects.ListItem> Cities { get; set; } = new List<ValueObjects.ListItem>();
        public IList<ValueObjects.ListItem> SupportServicesList { get; set; } = new List<ValueObjects.ListItem>();

        public string GetTitleLine()
        {
            return string.Format("{0} {1}", Firstname, Lastname);
        }

        public string GetSubTitleLine()
        {
            List<string> lines = new List<string>();

            if (DateOfBirth.HasValue)
                lines.Add(string.Format("Age {0}", (int)(DateTime.Now.Subtract(DateOfBirth.Value).TotalDays / (double)365)));

            if (GenderId.HasValue)
                lines.Add(Gender);

            if (RaceId.HasValue)
                lines.Add(Race);



            return string.Join(", ", lines);
        }

        public bool CanAccess(Entities.User user, IList<EntityViews.TeamMember> teamMembers, IList<ValueObjects.ListItem> userPermissions)
        {
            if (teamMembers.Count == 0)
                return true;

            if (teamMembers.Count(x => x.Id == user.Id) > 0)
                return true;

            if (userPermissions.Count(x => x.Name == "Case Manager" || x.Name == "Administrator") > 0)
                return true;

            if (user.IsSuperAdmin)
                return true;

            return false;
        }
    }
}
