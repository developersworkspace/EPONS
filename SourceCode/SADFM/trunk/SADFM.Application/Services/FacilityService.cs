using SADFM.Infrastructure.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SADFM.Data.Models;
using SADFM.Infrastructure.Repositories;
using SADFM.Application.Repositories;

namespace SADFM.Application.Services
{
    public class FacilityService : IFacilityService
    {
        private IFacilityRepository facilityRepository { get; set; }

        public FacilityService()
        {
            this.facilityRepository = new FacilityRepository();
        }

        public List<Provider> List()
        {
            return this.facilityRepository.GetAll();
        }
    }
}
