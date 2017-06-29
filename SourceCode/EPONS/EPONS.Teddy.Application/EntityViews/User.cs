using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.EntityViews
{
    public class User
    {
        public Guid Id { get; set; }
        [DisplayName("First Name")]
        public string Firstname { get; set; }
        [DisplayName("Last Name")]
        public string Lastname { get; set; }
        [DisplayName("User Name")]
        public string Username { get; set; }
        [DisplayName("Email Address")]
        public string EmailAddress { get; set; }
        [DisplayName("Is Active")]
        public bool IsActive { get; set; }

        [DisplayName("Display Name")]
        public string DisplayName
        {
            get
            {
                return string.Format("{0} {1} ({2})", Firstname, Lastname, Username);
            }
        }
    }
}
