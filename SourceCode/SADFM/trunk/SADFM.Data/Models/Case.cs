using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class Case : BaseModel
    {
        public Case() : base(null, 0) { }
        public Case(object Id = null, long Age = 0) : base(Id, Age) { }

        public DateTime StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public string ICD10ID { get; set; }
        public string ICD10 { get; set; }
        public List<Data.Models.PatientProvider> Providers { get; set; }
        public string PatientId { get; set; }
        public string CaseId { get; set; }
        public string ICD10Description { get; set; }
        public string ImpairmentGroupId { get; set; }
        public string ImpairmenGroup { get; set; }
        public string ReferringDoctor { get; set; }
        public string ReferringDoctorContact { get; set; }
        public string ReferringDoctorEmail { get; set; }
        public string ReferringDoctorPracticeNumber { get; set; }

        public string TreatingDoctor { get; set; }
        public string TreatingDoctorContact { get; set; }
        public string TreatingDoctorEmail { get; set; }
        public string TreatingDoctorPracticeNumber { get; set; }

        public string AdmissionStatus { get; set; }
        public string AdmissionStatusId { get; set; }
        public string MDT { get; set; }
        public bool isActive { get; set; }
        public Patient Patient { get; set; }

        public Case(Data.Case data, bool loadPatient = false, bool compressScales = false)
            : base(data.CaseId, data.LastUpdateTimestamp.Ticks)
        {
            SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "Case1");
            StartDate = data.StartDate;
            EndDate = data.EndDate;
            MDT = string.Join(",", data.PatientProviders.Where(x => x.Account != null).Select(x => string.Format("{0} {1}", x.Account.FirstName, x.Account.LastName)).ToList().Distinct());
            ICD10ID = EncryptId(data.ICD10Id);
            ICD10 = data.ICD10 != null ? data.ICD10.Name : null;
            PatientId = Models.BaseModel.EncryptId(data.PatientId);
            CaseId = Models.BaseModel.EncryptId(data.CaseId);
            Providers = data.PatientProviders.Select(x => (Data.Models.PatientProvider)x).ToList();
            ImpairmentGroupId = data.ImpairmentGroupId != null ? Models.BaseModel.EncryptId(data.ImpairmentGroupId.Value) : null;
            ImpairmenGroup = data.ImpairmentGroupId != null ? string.Format("{0}.{1} - {2} - {3}", data.ImpairmentGroup.Parent.Value, data.ImpairmentGroup.Value, data.ImpairmentGroup.Parent.Name, data.ImpairmentGroup.Name) : "";
            ReferringDoctor = data.ReferringDoctor;
            ReferringDoctorContact = data.ReferringDoctorContact;
            ReferringDoctorEmail = data.ReferringDoctorEmail;
            ReferringDoctorPracticeNumber = data.ReferringDoctorPracticeNumber;

            TreatingDoctor = data.TreatingDoctor;
            TreatingDoctorContact = data.TreatingDoctorContact;
            TreatingDoctorEmail = data.TreatingDoctorEmail;
            TreatingDoctorPracticeNumber = data.TreatingDoctorPracticeNumber;

            AdmissionStatus = data.AdmissionStatus != null ? data.AdmissionStatus.Description : "";
            AdmissionStatusId = data.AdmissionStatus != null ? Data.Models.BaseModel.EncryptId(data.AdmissionStatusId) : null;
            SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "Case2");
           
            ICD10Description = data.ICD10.Description;

            SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "Case3");
            if (loadPatient)
                Patient = Patient.FromPatient(data.Patient);
            SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "Case4");

        }

    }
}
