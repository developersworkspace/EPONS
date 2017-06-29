using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Specification
{
    internal static class Configuration
    {
        static Configuration()
        {
            Console.WriteLine("Testing from {0}", ConfigurationManager.AppSettings["applicationRoot"]);

            ApplicationRoot = new Uri(ConfigurationManager.AppSettings["applicationRoot"]);
            Logout = new Uri(ApplicationRoot, "/Account/Logout");

            Passwords = new Dictionary<string, string>();
            ConfigurationManager.AppSettings.AllKeys.Where(s => s.StartsWith("password_")).ToList().ForEach(s =>
            {
                Passwords.Add(s.Substring(9).ToUpper(), ConfigurationManager.AppSettings[s]);
            });
        }

        internal static Uri ApplicationRoot { get; private set; }
        internal static Uri Logout { get; private set; }

        internal static string Url(string url)
        {
            return new Uri(ApplicationRoot, url).ToString();
        }

        public static Dictionary<string, string> Passwords { get; private set; }
    }
}
