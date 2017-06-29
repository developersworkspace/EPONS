using Autofac;
using Autofac.Integration.Mvc;
using SADFM.Application;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SADFM.WebApplication.App_Start
{
    public class IocConfig
    {

        public static void RegisterContainer()
        {

            var builder = new ContainerBuilder();

            builder.RegisterControllers(typeof(MvcApplication).Assembly);
            builder.RegisterModelBinderProvider();

          
            builder.RegisterModule<AutofacWebTypesModule>();

         
            builder.RegisterSource(new ViewRegistrationSource());

            // OPTIONAL: Enable property injection into action filters.
            builder.RegisterFilterProvider();

            // Register modules. 
            builder.RegisterModule(new ApplicationModule());

            var container = builder.Build();

            // Set the global dependency resolver. 
            DependencyResolver.SetResolver(new AutofacDependencyResolver(container));
        }
    }
}