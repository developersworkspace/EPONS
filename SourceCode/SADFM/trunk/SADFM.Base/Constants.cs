using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Base
{
    public static class Constants
    {

        static Constants()
        {

            IdKey = ConfigurationManager.AppSettings["IdKey"];
            if (string.IsNullOrWhiteSpace(IdKey))
                IdKey = @"Q_[DJbn33]za{k)HRr{>'_pc.$]g@29mn;h('%w=}6/>-@-^3,Ks@;= Z&\:T}j),!3w/z+{^z(C>$:6C,%s@Qm/+ ""+3T*[%4,2";

            DefaultLanguage = ConfigurationManager.AppSettings["DefaultLanguage"];
            if (string.IsNullOrWhiteSpace(DefaultLanguage))
                DefaultLanguage = "en-GB";
        }

        public static string IdKey { get; private set; }
        public static string DefaultLanguage { get; private set; }
    }
}
