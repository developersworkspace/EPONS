using Autofac;
using SADFM.Application.Repositories;
using SADFM.Application.Services;
using SADFM.Infrastructure.Persistence;
using SADFM.Infrastructure.Repositories;
using SADFM.Infrastructure.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Application
{
    public class ApplicationModule : Module
    {
        public ApplicationModule() { }

        protected override void Load(ContainerBuilder builder)
        {

            builder.RegisterType<AccountRepository>().As<IAccountRepository>().InstancePerRequest();

            builder.RegisterType<ReportService>().As<IReportService>().InstancePerRequest();
            builder.RegisterType<AccountService>().As<IAccountService>().InstancePerRequest();

           
            builder.RegisterType<SADFMContext>().As<SADFMContext>().InstancePerRequest();

            base.Load(builder);
        }
    }
}
