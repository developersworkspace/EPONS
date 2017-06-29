using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.DebugConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            //00005ae0000400000000000000000000
            //00004EED000400000000000000000000 helen
            Data.DataAccess.Patient.GetCompletedScalesWithoutStoredProcedure(Guid.ParseExact("00004EED000400000000000000000000", "N"));
        }           
    }
}
