using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Models
{
    class Dataset
    {
        #region Properties

        public double[] Data { get; set; }
        public Color Color { get; set; }
        public string Label { get; set; }

        #endregion
    }
}
