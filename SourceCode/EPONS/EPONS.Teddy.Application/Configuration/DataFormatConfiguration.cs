using System.Configuration;

namespace EPONS.Teddy.Application.Configuration
{
    public class DataFormatConfiguration : ConfigurationElement
    {
        [ConfigurationProperty("Type", IsRequired = true)]
        public string Type
        {
            get
            {
                return this["Type"] as string;
            }
        }

        [ConfigurationProperty("Format", IsRequired = true)]
        public string Format
        {
            get
            {
                return this["Format"] as string;
            }
        }

    }
}
