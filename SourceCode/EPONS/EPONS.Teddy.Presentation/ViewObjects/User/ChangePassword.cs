using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace EPONS.Teddy.Presentation.ViewObjects.User
{
    public class ChangePassword
    {
        public Guid UserId { get; set; }
        [DisplayName("New Password")]
        public string NewPassword { get; set; }
    }
}