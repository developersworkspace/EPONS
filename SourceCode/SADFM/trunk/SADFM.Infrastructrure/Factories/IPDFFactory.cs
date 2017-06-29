using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Infrastructure.Factories
{
    public interface IPDFFactory
    {
        string Create(string templateName, object obj);
    }
}
