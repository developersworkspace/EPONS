using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Repositories
{
    public class CaseRepository : Repository
    {

        public CaseRepository(IDbConnection connection) : base(connection)
        {
            
        }
        public List<EntityViews.Case> FindCases(Guid patientId)
        {
            return new List<EntityViews.Case>();
            //return Query<EntityViews.Case>("[EPONS].[FindCasesByPatientId]", new
           // {
           //     patientId = patientId
           // });
        }

        public List<EntityViews.Case> FindCases(Guid patientId, DateTime startDate, DateTime endDate)
        {

            return new List<EntityViews.Case>();
            //return Query<EntityViews.Case>("[EPONS].[FindCasesByPatientIdAndDateRange]", new
           // {
           //     patientId = patientId,
           //     startDate = startDate,
           //     endDate = endDate
           // });
        }
    }
}
