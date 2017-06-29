using SADFM.Infrastructure.Persistence.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Infrastructure.Services
{
    public interface IAccountService
    {
        Account Details(string username);
        Account Register(string username);

    }
}
