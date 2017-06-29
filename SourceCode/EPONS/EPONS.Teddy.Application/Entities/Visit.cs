using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Entities
{
    public class Visit
    {
        public Guid Id { get; set; }
        public Guid PatientId { get; set; }
        [DisplayName("TimeStamp")]
        public DateTime Timestamp { get; set; }
        public string User { get; set; }
        [DisplayName("Measurement Tools")]
        public string MeasurementTools { get; set; }
        [DisplayName("Progress Notes")]
        public string ProgressNotes { get; set; }

        private double? _heartRate = 0;
        [DisplayName("Heart Rate (bpm)")]
        public double? HeartRate
        {
            get
            {
                return this._heartRate.HasValue ? this._heartRate : 0;
            }
            set
            {
                this._heartRate = value;
            }
        }

        private double? _temperature = 0;
        [DisplayName("Temperature (°C)")]
        public double? Temperature
        {
            get
            {
                return this._temperature.HasValue ? this._temperature : 0;
            }
            set
            {
                this._temperature = value;
            }
        }

        private double? _bloodPressureDiastolic = 0;
        [DisplayName("Blood Pressure Diastolic (mmHg)")]
        public double? BloodPressureDiastolic
        {
            get
            {
                return this._bloodPressureDiastolic.HasValue ? this._bloodPressureDiastolic : 0;
            }
            set
            {
                this._bloodPressureDiastolic = value;
            }
        }

        private double? _bloodPressureSystolic = 0;
        [DisplayName("Blood Pressure Systolic (mmHg)")]
        public double? BloodPressureSystolic
        {
            get
            {
                return this._bloodPressureSystolic.HasValue ? this._bloodPressureSystolic : 0;
            }
            set
            {
                this._bloodPressureSystolic = value;
            }
        }

        private double? _glucose = 0;
        [DisplayName("Glucose (mmol/L)")]
        public double? Glucose
        {
            get
            {
                return this._glucose.HasValue ? this._glucose : 0;
            }
            set
            {
                this._glucose = value;
            }
        }

        private double? _pulseOximetry = 0;
        [DisplayName("Pulse Oximetry (%)")]
        public double? PulseOximetry
        {
            get
            {
                return this._pulseOximetry.HasValue ? this._pulseOximetry : 0;
            }
            set
            {
                this._pulseOximetry = value;
            }
        }

        private double? _respiratoryRate = 0;
        [DisplayName("Respiratory Rate (breaths per minute)")]
        public double? RespiratoryRate
        {
            get
            {
                return this._respiratoryRate.HasValue ? this._respiratoryRate : 0;
            }
            set
            {
                this._respiratoryRate = value;
            }
        }

        [DisplayName("Impairment Group")]
        public Guid? ImpairmentGroupId { get; set; }
        [DisplayName("Impairment Group")]
        public string ImpairmentGroup { get; set; }
        [DisplayName("Duration of this Visit")]
        public int DurationOfVisit { get; set; }
        [DisplayName("Daily Notes")]
        public string DailyNotes { get; set; }
        [DisplayName("Is Private")]
        public bool IsPrivate { get; set; }
        public Guid UserId { get; set; }
        public IList<ValueObjects.ListItem> ImpairmentGroups { get; set; } = new List<ValueObjects.ListItem>();
    }
}
