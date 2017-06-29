using EPONS.Teddy.Application.ValueObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Entities
{
    public class Survey
    {
        public Guid Id { get; set; }
        public string Name { get; set; }

        public IList<SurveyQuestion> Questions { get; set; }
    }
}
