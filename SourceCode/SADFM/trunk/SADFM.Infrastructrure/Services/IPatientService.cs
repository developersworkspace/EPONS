using SADFM.Infrastructure.Persistence.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Infrastructure.Services
{
    public interface IPatientService
    {
        //Visit AddVisit(Visit model);
        Case UpdateCase(Case model);
        Careplan AddCareplan(Guid careplanId, Guid frequencyId);
    }
}
