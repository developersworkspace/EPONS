using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.EntityAccess
{
    public class Visit : EntityAccessBase
    {
        internal Visit(ConnectionStringSettings connection)
            : base(connection)
        { }

        public void SetPrivate(Guid visitId, bool isPrivate)
        {
            Execute(context =>
            {

                Data.Visit visit = context.Visits.SingleOrDefault(x => x.VisitId == visitId);

                visit.IsPrivate = isPrivate;

                context.SaveChanges();

                return true;
            });
        }

    }
}
