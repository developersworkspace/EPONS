using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SADFM.Web.Models
{
    public class NewUsers
    {
        public List<Data.Models.Account> Users { get; set; }
        public string ClientId { get; set; }
        public List<string> Permissions { get; set; }
    }
}