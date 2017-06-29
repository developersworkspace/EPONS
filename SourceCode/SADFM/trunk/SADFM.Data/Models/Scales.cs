using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SADFM.Data.Models
{
    public class Scale : BaseModel
    {
        public Scale() : base(null, 0) { }
        public Scale(object Id = null, long Age = 0) : base(Id, Age) { }
        public string PatientScaleId { get; set; }
        public string FrequencyID { get; set; }
        public string FrequencyValue { get; set; }
        public string Frequency { get; set; }
        public string Code { get; set; }
        public string ScaleID { get; set; }
        public string ScaleName { get; set; }
        public string Description { get; set; }
        public int? SortOrder { get; set; }
        private Guid ScaleId { get; set; }
        public List<ScaleScore> Scores { get; set; }
        public string Value { get; set; }
        public Dictionary<Guid, List<ScaleScore>> SubScores { get; set; }


        public static explicit operator Scale(Data.PatientScale data)
        {

      
            var scores = data.Scale.Children.ToList().Select(x => new ScaleScore(x)).ToList();

            var subScores = new Dictionary<Guid, List<ScaleScore>>();
            foreach (var sc in data.Scale.Children)
                subScores.Add(sc.ListItemId, sc.Children.Where(z => z.Children.Count > 0).ToList().Select(li => new ScaleScore(li)).ToList());
          

            return new Scale(data.PatientScaleId, 0)
            {
                FrequencyID = EncryptId(data.FrequencyId),
                Frequency = data.Frequency.Description,
                ScaleID = EncryptId(data.ScaleId),
                ScaleName = data.Scale.Name,
                Description = data.Scale.Description,
                SortOrder = data.Scale.SortOrder,
                ScaleId = data.ScaleId,
                PatientScaleId = EncryptId(data.PatientScaleId),
                Scores = scores,
                SubScores = subScores,
                Value = data.Scale.Value,
                Code = data.Scale.Code,
                FrequencyValue = data.Frequency.Value

            };
        }

        public Scale(Data.PatientScale data)
        {

            FrequencyID = EncryptId(data.FrequencyId);
            Frequency = data.Frequency.Description;
            ScaleID = EncryptId(data.ScaleId);
            ScaleName = data.Scale.Name;
            Description = data.Scale.Description;
            SortOrder = data.Scale.SortOrder;
            ScaleId = data.ScaleId;
            PatientScaleId = EncryptId(data.PatientScaleId);
            Value = data.Scale.Value;
            Code = data.Scale.Code;
            FrequencyValue = data.Frequency.Value;

        }

        public bool IsOverdue { get; set; }

        internal Guid GetScaleId()
        {
            return ScaleId;
        }

    }
}
