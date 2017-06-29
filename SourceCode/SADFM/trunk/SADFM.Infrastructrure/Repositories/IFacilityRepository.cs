using SADFM.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Infrastructure.Repositories
{
    public interface IFacilityRepository
    {
        List<Provider> GetAll();
        Provider GetDetails(Guid id); 
    }
}
