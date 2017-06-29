using EPONS.Teddy.Application.ValueObjects;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Entities
{
    public class EpisodeOfCare
    {

        public string Name { get; set; }
        public Guid EpisodeOfCareId { get; set; }
        public Guid PatientId { get; set; }
        public Guid FacilityId { get; set; }
        public Guid userId { get; set; }
        public string Facility { get; set; }
        [DisplayName("Admission")]
        public DateTime AllocationTimestamp { get; set; }
        [DisplayName("Discharge Date")]
        public DateTime? DeallocationTimestamp { get; set; }
        public Guid? ReasonForAdmissionId { get; set; }
        //[DisplayName("Admission Number")]
        [DisplayName("Unique hospital or clinic number on admission")]
        public string AllocationNumber { get; set; }
        [DisplayName("Admit From")]
        public Guid? AdmissionTypeId { get; set; }
        [DisplayName("Discharge To (Required before you able to discharge patient)")]
        public Guid? DischargeTypeId { get; set; }
        [DisplayName("What is the Primary Diagnosis on Admission? (Required before discharge)")]
        public string ReasonForAdmissionName { get; set; }
        [DisplayName("When did this particular episode in your illness start?")]
        public DateTime? ReasonForAdmissionTimestamp { get; set; }
        [DisplayName("Impairment Group")]
        public Guid? ImpairmentGroupId { get; set; }
        public IList<ListItem> AdmissionTypes { get; set; } = new List<ListItem>();
        public IList<ListItem> DischargeTypes { get; set; } = new List<ListItem>();
        public IList<ListItem> ImpairmentGroups { get; set; } = new List<ListItem>();

        [DisplayName("Referring Doctor")]
        public int? ReferringDoctorId { get; set; }
        [DisplayName("Attending Doctor")]
        public int? AttendingDoctorId { get; set; }
        public Doctor ReferringDoctor { get; set; }

        [DisplayName("Referring Doctor")]
        public string ReferringDoctorName
        {
            get
            {

                if (ReferringDoctor == null)
                {
                    return string.Empty;
                }
                else
                    return ReferringDoctor.Name;
            }

            set { ReferringDoctor.Name = value; }
        }

        [DisplayName("Contact Number")]
        public string ReferringDoctorNumber
        {
            get
            {
                if (ReferringDoctor == null)
                {
                    return string.Empty;
                }
                else
                    return ReferringDoctor.ContactNumber;
            }
            set { ReferringDoctor.ContactNumber = value; }
        }
        
        [DisplayName("Email address")]
        public string ReferringDoctorEmail
        {
            get
            {
                if (ReferringDoctor == null)
                {
                    return string.Empty;
                }
                else
                    return ReferringDoctor.Email;
            }
            set { ReferringDoctor.Email = value; }
        }

        [DisplayName("Practice Number")]
        public string ReferringDoctorPracticeName
        {
            get
            {
                if (ReferringDoctor == null)
                {
                    return string.Empty;
                }
                else
                    return ReferringDoctor.PracticeName;
            }
            set { ReferringDoctor.PracticeName = value; }
        }

        [DisplayName("HPCSA Number")]
        public string ReferringDoctorHPCSANumber
        {
            get
            {
                if (ReferringDoctor == null)
                {
                    return string.Empty;
                }
                else
                    return ReferringDoctor.HPCSANumber;
            }
            set { ReferringDoctor.HPCSANumber = value; }
        }

        public Doctor AttendingDoctor { get; set; }
        [DisplayName("Treating Doctor")]
        public string AttendingDoctorName
        {
            get
            {
                if (AttendingDoctor == null)
                {
                    return string.Empty;
                }
                else
                    return AttendingDoctor.Name;
            }
            set { AttendingDoctor.Name = value; }
        }
        [DisplayName("Contact Number")]
        public string AttendingDoctorNumber
        {
            get
            {
                if (AttendingDoctor == null)
                {
                    return string.Empty;
                }
                else
                    return AttendingDoctor.ContactNumber;
            }
            set { AttendingDoctor.ContactNumber = value; }
        }

        [DisplayName("Email address")]
        public string AttendingDoctorEmail
        {
            get
            {
                if (AttendingDoctor == null)
                {
                    return string.Empty;
                }
                else
                    return AttendingDoctor.Email;
            }
            set { AttendingDoctor.Email = value; }
        }

        [DisplayName("Practice Number")]
        public string AttendingDoctorPracticeName
        {
            get
            {
                if (AttendingDoctor == null)
                {
                    return string.Empty;
                }
                else
                    return AttendingDoctor.PracticeName;
            }
            set { AttendingDoctor.PracticeName = value; }
        }

        [DisplayName("HPCSA Number")]
        public string AttendingDoctorHPCSANumber
        {
            get
            {
                if (AttendingDoctor == null)
                {
                    return string.Empty;
                }
                else
                    return AttendingDoctor.HPCSANumber;
            }
            set { AttendingDoctor.HPCSANumber = value; }
        }



    }
}
