using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Configuration
{
    public class DataFormatConfigurationCollection : ConfigurationElementCollection
    {
        protected override ConfigurationElement CreateNewElement()
        {
            return new DataFormatConfiguration();
        }

        protected override object GetElementKey(ConfigurationElement element)
        {
            return ((DataFormatConfiguration)(element)).Type;
        }


        public DataFormatConfiguration this[int idx]
        {
            get
            {
                return (DataFormatConfiguration)BaseGet(idx);
            }
        }

        new public DataFormatConfiguration this[string key]
        {
            get
            {
                return (DataFormatConfiguration)BaseGet(key);
            }
        }
    }
}
