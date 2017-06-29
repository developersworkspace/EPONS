using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class ScaleItemScore
    {
        public Guid ScaleId { get; private set; }
        public Guid ItemId { get; private set; }
        public int? SortOrder { get; set; }
        public Guid ScoreId { get; private set; }
        public int Value { get; private set; }
        public string ItemName { get; set; }

        public ScaleItemScore() { }

        public ScaleItemScore(Guid scaleId, Guid itemId, Guid scoreId, int value)
        {
            ScaleId = scaleId;
            ItemId = itemId;
            ScoreId = scoreId;
            Value = value;
        }
    }
}
