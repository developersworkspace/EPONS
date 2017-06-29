using SADFM.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SADFM.Web.ViewModels
{
    public class Visit
    {
        public Guid VisitId { get; set; }
        public string[] ScalesValuesIds { get; set; }
        public string StartDate { get; set; }
        public DateTime VisitDate { get; set; }
        public string CaseID { get; set; }
        public int? Duration { get; set; }
        public string DurationDisplay { get; set; }
        public string PatientId { get; set; }
        public Guid PatientGUID { get; set; }
        public string Notes { get; set; }
        public List<Attachment> VisitAttachments { get; set; }
        public List<ScaleItemScore> ScaleValues { get; set; }
        public List<ListItem> Scales { get; set; }
        public string CaseName { get; set; }
        public Guid? AccountId { get; set; }
        public string AccountFullname { get; set; }
        public string AccountRoles { get; set; }
        public string TemperatureString { get; set; }
        public double? Temperature { get; set; }
        public int? HeartRate { get; set; }
        public int? BloodPressureSystolic { get; set; }
        public int? BloodPressureDiastolic { get; set; }
        public int? PulseOximetry { get; set; }
        public string GlucoseString { get; set; }
        public double? Glucose { get; set; }
        public DateTime? DischargeDate { get; set; }
        public string ICD10 { get; set; }
        public string ImpairmentGroupId { get; set; }
        public bool HeartRateRegular { get; set; }
        public string HeartRateNote { get; set; }
        public bool RespiratoryRateRegular { get; set; }
        public int? RespiratoryRate { get; set; }
        public string RespiratoryRateNote { get; set; }
        public string PulseOximetryNote { get; set; }
        public bool PulseOximetryRegular { get; set; }
        public bool AllCases { get; set; }
        public Guid? CaseGuid { get; set; }
        public string ExtraNotes { get; set; }
        public bool IsPrivate { get; set; }
    }
}