namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Case")]
    public partial class Case
    {
        private Case()
        {

        }

        public Case(Account account, Patient patient, ICD10Code icd10Code, DateTime startDate, DateTime? endDate, AdmissionStatus admissionStatus)
        {
            //this.LastUpdatedAccount = account;
            this.LastUpdatedAccountId = account.AccountId;

            this.Patient = patient;
            this.PatientId = patient.PatientId;

            this.ICD10Code = icd10Code;
            this.ICD10CodeId = icd10Code.ICD10CodeId;

            this.StartDate = startDate;
            this.EndDate = endDate;


            this.AdmissionStatus = admissionStatus;
            this.AdmissionStatusId = admissionStatus.AdmissionStatusId;

            this.DateCreatedTimestamp = DateTime.Now;
        }

        public Case(Account account, ICD10Code icd10Code, DateTime startDate, DateTime? endDate, AdmissionStatus admissionStatus)
        {
            this.LastUpdatedAccount = account;
            this.LastUpdatedAccountId = account.AccountId;
          
            this.ICD10Code = icd10Code;
            this.ICD10CodeId = icd10Code.ICD10CodeId;

            this.StartDate = startDate;
            this.EndDate = endDate;


            this.AdmissionStatus = admissionStatus;
            this.AdmissionStatusId = admissionStatus.AdmissionStatusId;

            this.DateCreatedTimestamp = DateTime.Now;
        }

        public Case UpdateICD10Code(ICD10Code icd10Code)
        {
            return this;
        }

        public Case UpdateReferingDoctor(string name, string contactNumber, string emailAddress, string practiceNumber)
        {
            return this;
        }

        public Case UpdateTreatingDoctor(string name, string contactNumber, string emailAddress, string practiceNumber)
        {
            return this;
        }
        public Guid CaseId { get; set; }

        [StringLength(255)]
        public string ReferringDoctorName { get; set; }

        [StringLength(255)]
        public string ReferringDoctorContact { get; set; }

        [StringLength(255)]
        public string ReferringDoctorEmailAddress { get; set; }

        [StringLength(255)]
        public string ReferringDoctorPracticeNumber { get; set; }

        [StringLength(255)]
        public string TreatingDoctorName { get; set; }

        [StringLength(255)]
        public string TreatingDoctorContact { get; set; }

        [StringLength(255)]
        public string TreatingDoctorEmail { get; set; }

        [StringLength(255)]
        public string TreatingDoctorPracticeNumber { get; set; }

        public DateTime StartDate { get; set; }

        public DateTime? EndDate { get; set; }

        public DateTime DateCreatedTimestamp { get; set; }

        public DateTime? LastUpdatedTimestamp { get; set; }

        public Guid? LastUpdatedAccountId { get; set; }

        public Guid? ICD10CodeId { get; set; }

        public Guid PatientId { get; set; }

        public Guid? AdmissionStatusId { get; set; }

        public virtual Account LastUpdatedAccount { get; set; }

        public virtual AdmissionStatus AdmissionStatus { get; set; }

        public virtual ICD10Code ICD10Code { get; set; }

        public virtual Patient Patient { get; set; }

        public virtual ICollection<PatientFacility> PatientFacilities { get; set; }
    }
}
