using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SADFM.Web.Models
{
    public class ChangePasswordModel
    {
        public string AccountID { get; set; }
        public string Username { get; set; }
        public bool RequestOldPassword { get; set; }
        public string OldPassword { get; set; }
        public string NewPassword { get; set; }
        public string Origin { get; set; }
    }
}