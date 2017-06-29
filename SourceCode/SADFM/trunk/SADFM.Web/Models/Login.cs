using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SADFM.Web.Models
{
    public class Login
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string Security { get; set; }
        public bool RememberMe { get; set; }
    }
}