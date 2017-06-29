using SADFM.Infrastructure.Persistence.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Infrastructure.Repositories
{
    public interface IAccountRepository
    {
        Account FindByUsername(string username, string[] includes);
    }
}
