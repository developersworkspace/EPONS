using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class ScoreDefinition
    {
        public Guid ScoreDefinitionId { get; set; }
        public string ProviderExplaination { get; set; }
        public string FunderExplaination { get; set; }
        public Guid ScaleValueId { get; set; }
    }
}
