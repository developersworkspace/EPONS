using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace SADFM.Data.Models
{
   
    public class Patient : BaseModel
    {
        public Patient() : base(null, 0) { }
        public Patient(object Id = null, long Age = 0) : base(Id, Age) { }

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
        public List<SupportService> SupportServices { get; set; }
        public List<CarePlan> CarePlan { get; set; }
        public string Providers { get; set; }
        public List<PatientProvider> PatientProviders { get; set; }

        public static explicit operator Patient(Data.Patient data)
        {
            return new Patient(data.PatientId, data.LastUpdateTimestamp.Ticks)
            {
                ResidentialEnvironment = data.ResidentialEnviroment != null ? data.ResidentialEnviroment.Description : "",
                AdmitFrom = data.AdmitFrom != null ? data.AdmitFrom.Description : "",
                DischargeTo = data.DischargeTo != null ? data.DischargeTo.Description : "",
                FirstName = data.FirstName,
                LastName = data.LastName,
                BirthDate = data.BirthDate,
                GenderID = EncryptId(data.GenderId),
                Gender = data.Gender != null ? data.Gender.Description : null,
                RaceID = EncryptId(data.RaceId),
                Race = data.Race != null ? data.Race.Description : null,
                IDNumber = data.IDNumber,
                MedicalSchemeID = EncryptId(data.MedicalSchemeId),
                MedicalScheme = data.MedicalScheme != null ? data.MedicalScheme.Name : null,
                ContactNumber = data.ContactNumber,
                Street = data.Street,
                City = data.CityId == null ? "" : data.City.Description,
                Province = data.ProvinceId == null ? "" : data.Province.Description,
                CityId = Data.Models.BaseModel.EncryptId(data.CityId),
                ProvinceId = Data.Models.BaseModel.EncryptId(data.ProvinceId),
                PostalCode = data.PostalCode,
                NextOfKinName = data.NextOfKinName,
                NextOfKinContact = data.NextOfKinContact,
                MedicalSchemeNo = data.MedicalSchemeMembershipNumber,
                LastUpdatedTimestamp = data.LastUpdateTimestamp,
                LastUpdateUsername = string.Format("{0} {1}", data.LastUpdatedAccount.FirstName, data.LastUpdatedAccount.LastName),
                CountryID = Data.Models.BaseModel.EncryptId(data.CountryId),
                Country = data.Country != null ? data.Country.Description : null,
                TitleId = Data.Models.BaseModel.EncryptId(data.TitleId),
                Title = data.Title == null ? null : data.Title.Description,
                Cases = data.Cases.ToList().Select(c => new Models.Case(c)).ToList(),
                Scales = DataAccess.Patient.GetScalesForVisit(data.PatientId),
                Messages = data.Messages.ToList().Select(m => (Models.Message)m).ToList(),
                Avatar = data.Avatar != null ? string.Format("data:image/png;base64,{0}", Convert.ToBase64String(data.Avatar)) : "/Content/images/nopatient.png",
                PatientProviders = data.PatientProviders.Select(x => (PatientProvider)x).ToList()
            };
        }

        public static Patient FromPatient(Data.Patient data)
        {
            return new Patient(data.PatientId, data.LastUpdateTimestamp.Ticks)
            {
                FirstName = data.FirstName,
                LastName = data.LastName,
                BirthDate = data.BirthDate,
                Gender = data.Gender == null ? "" : data.Gender.Description,
                Race = data.Race == null ? "" : data.Race.Description,
                IDNumber = data.IDNumber,
                MedicalScheme = data.MedicalScheme == null ? "" : data.MedicalScheme.Description,
                Avatar = data.Avatar != null ? string.Format("data:image/png;base64,{0}", Convert.ToBase64String(data.Avatar)) : "/Content/images/nopatient.png",
            };
        }



        internal void SetUnreadMessageCount(string username)
        {
            UnreadMessagesCount = Messages.Count(m => m.IsMessageUnread(username));
        }

    }
}
