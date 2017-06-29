using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Infrastructure.Factories
{
    public interface IExcelFactory
    {
        string Create(DataTable dt);
    }
}
