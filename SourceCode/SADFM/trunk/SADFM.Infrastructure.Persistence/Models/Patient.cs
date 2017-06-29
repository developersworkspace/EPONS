namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Patient")]
    public partial class Patient
    {
        private Patient() { }

        public Patient(Account account, string idNumber, Title title, string firstname, string lastname, DateTime birthDate, Gender gender, Race race)
        {
            this.IDNumber = idNumber;
            this.Title = title;
            this.Firstname = firstname;
            this.Lastname = lastname;
            this.BirthDate = birthDate;
            this.Gender = gender;
            this.Race = race;
            this.LastUpdatedAccount = account;
            this.DateCreatedTimestamp = DateTime.Now;
        }

        public Patient AddCase(Case cse)
        {
            if (this.Cases == null)
            {
                this.Cases = new List<Case>();
            }

            this.Cases.Add(cse);

            return this;
        }

        public Patient AddCareplan(Careplan careplan, Frequency frequency, Facility facility)
        {
            if (this.PatientCarePlans == null)
            {
                this.PatientCarePlans = new List<PatientCarePlan>();
            }

            this.PatientCarePlans.Add(new PatientCarePlan(careplan, frequency, facility));

            return this;
        }

        public Patient AddFacility(Facility facilty,Case cse, Account teamMember)
        {
            if (this.PatientFacilities == null)
            {
                this.PatientFacilities = new List<PatientFacility>();
            }

            this.PatientFacilities.Add(new PatientFacility(facilty, cse, teamMember));

            return this;
        }

        public Patient UpdateAddres(Account account, Country country, Province province, City city, string street, string postalCode, ResidentialEnviromentType residentialEnviromentType)
        {

            this.LastUpdatedAccount = account;
            this.LastUpdatedTimestamp = DateTime.Now;

            return this;
        }

        public Patient UpdateAdmissionType(Account account, AdmissionType admissionType)
        {

            this.LastUpdatedAccount = account;
            this.LastUpdatedTimestamp = DateTime.Now;

            return this;
        }

        public Patient UpdateMedicalScheme(Account account, MedicalScheme medicalScheme, string medicalSchemeNumber)
        {

            this.LastUpdatedAccount = account;
            this.LastUpdatedTimestamp = DateTime.Now;

            return this;
        }

        public Patient UpdatNextOfKin(Account account, string name, string contactNumber, string emailAddress, string relantionship)
        {
            this.LastUpdatedAccount = account;
            this.LastUpdatedTimestamp = DateTime.Now;

            return this;
        }

        public Guid PatientId { get; set; }

        [Required]
        [StringLength(255)]
        public string Firstname { get; set; }

        [Required]
        [StringLength(255)]
        public string Lastname { get; set; }

        public DateTime BirthDate { get; set; }

        [StringLength(255)]
        public string IDNumber { get; set; }

        [StringLength(255)]
        public string ContactNumber { get; set; }

        [StringLength(255)]
        public string Street { get; set; }

        [StringLength(255)]
        public string PostalCode { get; set; }

        [StringLength(255)]
        public string NextOfKinName { get; set; }

        [StringLength(255)]
        public string NextOfKinContact { get; set; }

        [StringLength(255)]
        public string MedicalSchemeMembershipNumber { get; set; }

        public DateTime DateCreatedTimestamp { get; set; }

        public DateTime? LastUpdatedTimestamp { get; set; }

        public Guid? LastUpdatedAccountId { get; set; }

        public byte[] Avatar { get; set; }

        [StringLength(255)]
        public string NextOfKinEmailAddress { get; set; }

        [StringLength(255)]
        public string NextOfKinRelationship { get; set; }

        public Guid? CityId { get; set; }

        public Guid? AdmissionTypeId { get; set; }

        public Guid? CountryId { get; set; }

        public Guid? DischargeTypeId { get; set; }

        public Guid? GenderId { get; set; }

        public Guid? MedicalSchemeId { get; set; }

        public Guid? RaceId { get; set; }

        public Guid? ResidentialEnviromentTypeId { get; set; }

        public Guid? TitleId { get; set; }

        public Guid? ProvinceId { get; set; }

        public virtual Account LastUpdatedAccount { get; set; }

        public virtual ICollection<Case> Cases { get; set; }

        public virtual City City { get; set; }

        public virtual Country Country { get; set; }

        public virtual Gender Gender { get; set; }

        public virtual MedicalScheme MedicalScheme { get; set; }

        public virtual Province Province { get; set; }

        public virtual Race Race { get; set; }

        public virtual ResidentialEnviromentType ResidentialEnviromentType { get; set; }

        public virtual Title Title { get; set; }

        public virtual ICollection<PatientCarePlan> PatientCarePlans { get; set; }

        public virtual ICollection<PatientFacility> PatientFacilities { get; set; }
    }
}
