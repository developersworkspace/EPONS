using SADFM.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Infrastructure.Services
{
    public interface IFacilityService
    {
        List<Provider> List();
    }
}
