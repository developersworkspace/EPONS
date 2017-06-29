using SADFM.Data.Models;
using SADFM.Infrastructure.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Application.Repositories
{
    public class FacilityRepository : IFacilityRepository
    {
        public List<Provider> GetAll()
        {
            using (Data.SADFMEntities context = new Data.SADFMEntities())
            {
                return context.Providers.ToList().Select(x => (Provider)x).ToList().ToList();
            }
        }

        public Provider GetDetails(Guid id)
        {
            using (Data.SADFMEntities context = new Data.SADFMEntities())
            {
                return (Provider)context.Providers.SingleOrDefault(x => x.ProviderId == id);
            }
        }
    }
}
