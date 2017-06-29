using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{

    public class PatientProgressReportScale
    {
        public string ScaleId { get; set; }
        public string ScaleName { get; set; }
        public string GraphType { get; set; }
        public string Base64 { get; set; }
        public string Uri { get; set; }

        public PatientProgressReportScale() { }
    }


    public class PatientProgressReportDiagnosis
    {
        public string ICD10 { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime? EndDate { get; set; }
    }

    public class PatientProgressReportCareplan
    {
        public string Name { get; set; }
        public string Frequency { get; set; }
        public string ScaleID { get; set; }
        public Guid ScaleId { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public string Provider { get; set; }

        public PatientProgressReportCareplan() { }
    }

    public class PatientProgressReportNote
    {

        public DateTime Timestamp { get; set; }
        public string Body { get; set; }
        public string Group { get; set; }
        public string Clinician { get; set; }
        public string Provider { get; set; }
        public bool IsCaseManager { get; set; }

        public PatientProgressReportNote() { }
    }

    public class PatientProgressReportDoctor
    {
        public string Email { get; set; }
        public string Contact { get; set; }
        public string Name { get; set; }

        public PatientProgressReportDoctor() { }
    }

    public class PatientProgressReportMDT
    {
        public string Provider { get; set; }
        public string Clinician { get; set; }
        public List<string> Roles { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime? EndDate { get; set; }

        public PatientProgressReportMDT() { }
    }

    public class PatientProgressReport
    {
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string Fullname { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string Street { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        public byte[] ProfileImage { get; set; }
        public string ProfileImageUri { get; set; }
        public string PostalCode { get; set; }
        public List<PatientProgressReportDiagnosis> Diagnosis { get; set; }
        public List<PatientProgressReportCareplan> Careplans { get; set; }
        public List<PatientProgressReportMDT> MDTs { get; set; }
        public Guid PatientId { get; set; }
        public PatientProgressReportScale[] Scales { get; set; }
        public PatientProgressReportNote[] Notes { get; set; }
        public PatientProgressReportDoctor[] ReferringDoctor { get; set; }
        public PatientProgressReportDoctor[] TreatingDoctor { get; set; }
        public byte[] ProviderImage { get; set; }
        public string ProviderImageUri { get; set; }
        public bool GroupedNotes { get; set; }
        public byte[] ReportImage { get; set; }
        public string ReportImageUri { get; set; }
        public List<SupportService> SupportServices { get; set; }

        public PatientProgressReport() { }
    }
}
