using EPONS.Teddy.Application.Configuration;
using RestSharp;
using StatsdClient;
using System;
using System.Configuration;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace EPONS.Teddy.Presentation
{
    public class MvcApplication : System.Web.HttpApplication
    {
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        protected void Application_Start()
        {
            //AutofacConfig.ConfigureContainer();
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            log4net.Config.XmlConfigurator.Configure();
            EPONSSection config = ConfigurationManager.GetSection("EPONS") as EPONSSection;

        }

        public void Application_Error(object sender, EventArgs e)
        {
            Exception ex = Server.GetLastError();

            Elmah.ErrorSignal.FromCurrentContext().Raise(ex);

            _logger.Fatal("Unhandled Exception", ex);
        }

        public void Application_BeginRequest(object sender, EventArgs e)
        {
            try
            {
                var request = HttpContext.Current.Request;

                _logger.InfoFormat("Request - {0} by {1}", request.Url);
            }catch(Exception ex)
            {

            }
        }

    }
}
