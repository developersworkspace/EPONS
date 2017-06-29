using SADFM.Infrastructure.Persistence;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Infrastructure.Repositories
{
    public abstract class Repository
    {
        protected SADFMContext Context;

        public Repository(SADFMContext context)
        {
            this.Context = context;
        }
    }
}
