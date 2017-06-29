using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Configuration
{
    public class MoodleConfiguration : ConfigurationElement
    {
        [ConfigurationProperty("Url", IsRequired = true)]
        public string Url
        {
            get
            {
                return this["Url"] as string;
            }
        }
    }
}
