using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class Client : BaseModel
    {
        public Client() : this(null, 0) { }
        public Client(object Id = null, long Age = 0) : base(Id, Age) { }

        public string Name { get; set; }
        public string Type { get; set; }
    }
}
