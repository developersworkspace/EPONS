using SADFM.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SADFM.Web.ViewModels
{
    public class Patient
    {

        public Guid PatientId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public DateTime? BirthDate { get; set; }
        public string GenderID { get; set; }
        public string Gender { get; set; }
        public string RaceID { get; set; }
        public string Race { get; set; }
        public string IDNumber { get; set; }
        public string MedicalSchemeID { get; set; }
        public string MedicalScheme { get; set; }
        public string Street { get; set; }
        public string MedicalSchemeNo { get; set; }
        public string ContactNumber { get; set; }
        public string ProvinceId { get; set; }
        public string CityId { get; set; }
        public string PostalCode { get; set; }
        public string NextOfKinName { get; set; }
        public string NextOfKinContact { get; set; }
        public string NextOfKinEmail { get; set; }
        public string NextOfKinRelationship { get; set; }
        public string TitleId { get; set; }
        public string Title { get; set; }
        public string CountryID { get; set; }
        public string Country { get; set; }
        public DateTime LastUpdatedTimestamp { get; set; }
        public List<Case> Cases { get; set; }
        public List<Scale> Scales { get; set; }
        public List<Message> Messages { get; set; }
        public string Avatar { get; set; }
        public int UnreadMessagesCount { get; set; }
        public string City { get; set; }
        public string Province { get; set; }
        public string DischargeToID { get; set; }
        public string AdmitFromID { get; set; }
        public string DischargeTo { get; set; }
        public string AdmitFrom { get; set; }
        public string ResidentialEnvironmentID { get; set; }
        public string ResidentialEnvironment { get; set; }
        public List<Data.Models.SupportService> SupportServices { get; set; }
    }
}