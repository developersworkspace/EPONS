namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Account")]
    public partial class Account
    {

        private Account() { }

        public Account(string username, string password, string emailAddress, string firstname, string lastname, Status status)
        {
            this.Username = username;
            this.Password = password;
            this.EmailAddress = emailAddress;
            this.Firstname = firstname;
            this.Lastname = lastname;
            this.Status = status;
            this.DateCreatedTimestamp = DateTime.Now;
        }

        public Account UpdateTitle(Title title)
        {

            this.Title = title;
            this.TitleId = title.TitleId;

            return this;
        }

        public Account UpdateProfessionalBody(ProfessionalBody professionalBody, string registrationNumber, string practiceNumber)
        {
            this.ProfessionalBody = professionalBody;
            this.ProfessionalBodyId = professionalBody.ProfessionalBodyId;


            this.RegistrationNumber = registrationNumber;
            this.PracticeNumber = practiceNumber;

            return this;
        }

        public Account UpdateType(AccountType type)
        {

            this.AccountType = type;
            this.AccountTypeId = type.AccountTypeId;

            return this;
        }


        public Guid AccountId { get; set; }

        [Required]
        [StringLength(255)]
        public string Username { get; set; }

        [StringLength(255)]
        public string Password { get; set; }

        [Required]
        [StringLength(255)]
        public string EmailAddress { get; set; }

        [StringLength(255)]
        public string Firstname { get; set; }

        [StringLength(255)]
        public string Lastname { get; set; }

        public int? InvalidLoginAttempts { get; set; }

        public bool? FirstSignIn { get; set; }

        public DateTime DateCreatedTimestamp { get; set; }

        public DateTime? LastUpdatedTimestamp { get; set; }

        [StringLength(255)]
        public string IDNumberType { get; set; }

        [StringLength(255)]
        public string IDNumber { get; set; }

        public byte[] Avatar { get; set; }

        [StringLength(50)]
        public string SecurityQuestionAnswer { get; set; }

        public DateTime? DisclaimerAgreeTimestamp { get; set; }

        [StringLength(50)]
        public string PracticeNumber { get; set; }

        [StringLength(50)]
        public string RegistrationNumber { get; set; }

        public Guid AccountTypeId { get; set; }

        public Guid? LanguageId { get; set; }

        public Guid StatusId { get; set; }

        public Guid? TitleId { get; set; }

        public Guid? ProfessionalBodyId { get; set; }

        public virtual AccountType AccountType { get; set; }

        public virtual Language Language { get; set; }

        public virtual ProfessionalBody ProfessionalBody { get; set; }

        public virtual Status Status { get; set; }

        public virtual Title Title { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Case> Cases { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FacilityPermission> FacilityPermissions { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Patient> Patients { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PatientFacility> PatientFacilities { get; set; }
    }
}
