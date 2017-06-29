using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class FunderScheme
    {
        public string FunderName { get; set; }
        public string MedicalScheme { get; set; }
        public Guid MedicalSchemeId { get; set; }
        public Guid FunderId { get; set; }
    }
}
