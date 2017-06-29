using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Configuration
{
    public class OAuthConfiguration : ConfigurationElement
    {
        [ConfigurationProperty("Name", IsRequired = true)]
        public string Name
        {
            get
            {
                return this["Name"] as string;
            }
        }

        [ConfigurationProperty("ClientId", IsRequired = true)]
        public string ClientId
        {
            get
            {
                return this["ClientId"] as string;
            }
        }

        [ConfigurationProperty("ClientSecret", IsRequired = true)]
        public string ClientSecret
        {
            get
            {
                return this["ClientSecret"] as string;
            }
        }
    }
}
