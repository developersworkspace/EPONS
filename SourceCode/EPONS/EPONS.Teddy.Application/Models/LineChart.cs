using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Models
{
    class LineChart
    {
        #region Properties

        public string Title { get; set; }
        public List<Dataset> DataSets { get; set; }
        public List<string> DataLabels { get; set; }

        #endregion
    }
}
