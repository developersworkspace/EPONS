using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Configuration
{
    public class EPONSSection : ConfigurationSection
    {

        [ConfigurationProperty("Email", IsRequired = true)]
        public EmailConfiguration Email
        {
            get
            {
                return this["Email"] as EmailConfiguration;
            }
        }

        [ConfigurationProperty("Host", IsRequired = true)]
        public string Host
        {
            get
            {
                return this["Host"] as string;
            }
        }

        [ConfigurationProperty("DataFormats")]
        public DataFormatConfigurationCollection DataFormats
        {
            get
            {
                return this["DataFormats"] as DataFormatConfigurationCollection;
            }
        }

        [ConfigurationProperty("OAuths")]
        public OAuthConfigurationCollection OAuths
        {
            get
            {
                return this["OAuths"] as OAuthConfigurationCollection;
            }
        }


        [ConfigurationProperty("Moodle", IsRequired = true)]
        public MoodleConfiguration Moodle
        {
            get
            {
                return this["Moodle"] as MoodleConfiguration;
            }
        }
    }
}
