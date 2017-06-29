using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SADFM.Infrastructure.Persistence.Models;
using SADFM.Infrastructure.Services;
using SADFM.Infrastructure.Repositories;

namespace SADFM.Application.Services
{
    public class AccountService : IAccountService
    {

        private IAccountRepository AccountRepository;

        public AccountService(IAccountRepository accountRepository)
        {
            this.AccountRepository = accountRepository;
        }

        public Account Details(string username)
        {
            return this.AccountRepository.FindByUsername(username, null);
        }

        public Account Register(string username)
        {
            throw new NotImplementedException();
        }
    }
}
