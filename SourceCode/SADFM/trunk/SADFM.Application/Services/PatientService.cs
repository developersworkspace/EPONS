using SADFM.Infrastructure.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SADFM.Infrastructure.Persistence.Models;

namespace SADFM.Application.Services
{
    public class PatientService : IPatientService
    {
        public Careplan AddCareplan(Guid careplanId, Guid frequencyId)
        {
            throw new NotImplementedException();
        }

        public Case UpdateCase(Case model)
        {
            throw new NotImplementedException();
        }
    }
}
