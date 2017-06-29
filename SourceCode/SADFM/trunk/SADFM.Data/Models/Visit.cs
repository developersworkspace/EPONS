using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class Visit : BaseModel
    {

        public Visit() { }

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

        public static explicit operator Visit(Data.Visit data)
        {

            return new Visit()
            {
                HeartRate = data.HeartRate,
                Glucose = data.Glucose,
                RespiratoryRate = data.RespiratoryRate,
                PulseOximetry = data.PulseOximetry,
                Temperature = data.Temperature,
                BloodPressureDiastolic = data.BloodPressureDiastolic,
                BloodPressureSystolic = data.BloodPressureSystolic,
                VisitId = data.VisitId,
                StartDate = data.VisitDate.ToString("dd MMMM yyyy HH:mm"),
                VisitDate = data.VisitDate,
                CaseID = data.CaseId != null ? Data.Models.BaseModel.EncryptId(data.CaseId) : "",
                Duration = data.VisitDuration,
                DurationDisplay = data.VisitDuration.HasValue ? new TimeSpan(0, data.VisitDuration.Value, 0).ToString(@"hh\:mm") : "N/A",
                PatientId = Data.Models.BaseModel.EncryptId(data.PatientId),
                PatientGUID = data.PatientId,
                Notes = data.VisitNotes,
                ExtraNotes = data.ExtraNote,
                AccountId = data.AccountId,
                AccountFullname = data.Account != null ? data.Account.FirstName + " " + data.Account.LastName : "",
                AccountRoles = data.Account != null ? string.Join(",", data.Account.AccountRoles.Select(x => x.Role.Name)) : "",
                VisitAttachments = data.VisitAttachments.Select(x => new Models.Attachment()
                {
                    Data = Convert.ToBase64String(x.Data),
                    MimeType = x.MimeType,
                    Name = x.Name
                }).ToList(),
                CaseName = data.Case != null ? data.Case.ICD10.Name + " - " + data.Case.ICD10.Description : "None",
                ScalesValuesIds = data.VisitScores.Select(x => BaseModel.EncryptId(x.ScoreId)).ToArray(),
                IsPrivate = data.IsPrivate.HasValue ? data.IsPrivate.Value : false
            };
        }

        public List<SADFM.Data.Models.Scale> GetScales()
        {
            List<SADFM.Data.Models.Scale> scales = new List<SADFM.Data.Models.Scale>();
            scales.AddRange(SADFM.Data.DataAccess.Patient.GetScoresForVisit(VisitId));

            return scales;
        }

        public Patient getPatient()
        {
            return DataAccess.Patient.GetById(PatientGUID);
        }


        #region Visit grouping

        public DateTime FirstVisitDate { get; set; }
        public int VisitCount { get; set; }

        #endregion
    }
}
