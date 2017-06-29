using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SADFM.Web.Models
{
    public class LineChart
    {
        internal Guid Id { get; set; }
        internal Dictionary<long, double> Data { get; set; }

        public string name { get; set; }
        public List<object[]> data
        {
            get
            {
                return Data.Where(kvp => kvp.Value > 0).Select(kvp => new object[] { kvp.Key, kvp.Value }).ToList();
            }
        }
    }
}