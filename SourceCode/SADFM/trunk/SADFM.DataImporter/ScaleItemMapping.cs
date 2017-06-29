using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SADFM.DataImporter
{
    class ScaleItemMapping
    {
        public string SourceField { get; set; }
        public Dictionary<int, Guid> TargetItemId { get; set; }
    }
}
