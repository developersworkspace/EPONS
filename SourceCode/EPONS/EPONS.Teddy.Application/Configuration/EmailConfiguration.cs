using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Configuration
{
    public class EmailConfiguration : ConfigurationElement
    {
        [ConfigurationProperty("Host", IsRequired = true)]
        public string Host
        {
            get
            {
                return this["Host"] as string;
            }
        }

        [ConfigurationProperty("Port", IsRequired = false, DefaultValue = 1)]
        public int? Port
        {
            get
            {
                return this["Port"] as int?;
            }
        }

        [ConfigurationProperty("FromEmailAddress", IsRequired = true)]
        public string FromEmailAddress
        {
            get
            {
                return this["FromEmailAddress"] as string;
            }
        }

        [ConfigurationProperty("Username", IsRequired = true)]
        public string Username
        {
            get
            {
                return this["Username"] as string;
            }
        }

        [ConfigurationProperty("Password", IsRequired = true)]
        public string Password
        {
            get
            {
                return this["Password"] as string;
            }
        }

        [ConfigurationProperty("OverrideEmailAddress", IsRequired = false, DefaultValue = null)]
        public string OverrideEmailAddress
        {
            get
            {
                return this["OverrideEmailAddress"] as string;
            }
        }
    }
}
