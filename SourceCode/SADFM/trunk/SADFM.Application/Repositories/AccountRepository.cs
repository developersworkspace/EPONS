using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SADFM.Infrastructure.Persistence.Models;
using SADFM.Infrastructure.Repositories;
using SADFM.Infrastructure.Persistence;

namespace SADFM.Application.Repositories
{
    public class AccountRepository : Repository, IAccountRepository
    {
        public AccountRepository(SADFMContext context) : base(context)
        {

        }

        public Account FindByUsername(string username, string[] includes)
        {
            return this.Context.Accounts.SingleOrDefault(x => x.Username == username);
        }
    }
}
