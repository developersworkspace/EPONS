using System.Configuration;
using EPONS.Teddy.Application.Configuration;

namespace EPONS.Teddy.Presentation
{
    public static class ConfigurationDefaults
    {
        public static string DateFormat
        {
            get
            {
                EPONSSection config = ConfigurationManager.GetSection("EPONS") as EPONSSection;
                return config.DataFormats["Date"].Format;
            }
        }

        public static string DateTimeFormat
        {
            get
            {
                EPONSSection config = ConfigurationManager.GetSection("EPONS") as EPONSSection;
                return config.DataFormats["DateTime"].Format;
            }
        }

      
    }
}