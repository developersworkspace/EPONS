using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.EntityViews
{
    public class EpisodesofCare
    {
        public Guid Id { get; set; }
        public DateTime? OnsetDate { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public string FacilityName{ get; set; }
        public DateTime AdmissionDate { get; set; }
        public DateTime DischargeDate { get; set; }
        public string ICD10Code { get; set; }
        public string ImpairmentGroup { get; set; }
    }

    public class Diagnoses
    {
        public string ICD10Code { get; set; }
    }
    public class ReferringDoctors
    {
        public Guid Id { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string ContactNumber { get; set; }
        public string HPCSANumber { get; set; }
        public string PracticeName { get; set; }
    }
    public class AttendingDoctors
    {
        public Guid Id { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string ContactNumber { get; set; }
        public string HPCSANumber { get; set; }
        public string PracticeName { get; set; }
    }
}
