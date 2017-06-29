using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Configuration
{
    public class OAuthConfigurationCollection : ConfigurationElementCollection
    {
        protected override ConfigurationElement CreateNewElement()
        {
            return new OAuthConfiguration();
        }

        protected override object GetElementKey(ConfigurationElement element)
        {
            return ((OAuthConfiguration)(element)).Name;
        }


        public OAuthConfiguration this[int idx]
        {
            get
            {
                return (OAuthConfiguration)BaseGet(idx);
            }
        }

        new public OAuthConfiguration this[string key]
        {
            get
            {
                return (OAuthConfiguration)BaseGet(key);
            }
        }
    }
}
