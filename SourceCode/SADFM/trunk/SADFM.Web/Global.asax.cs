using SADFM.Web.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;

namespace SADFM.Web
{
    public class MvcApplication : System.Web.HttpApplication
    {

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            GlobalConfiguration.Configure(WebApiConfig.Register);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "Application started.");

            log4net.Config.XmlConfigurator.Configure();
        }

        protected void Application_Error()
        {
            if (HttpContext.Current.Error is UserNotFoundException)
            {
                HttpContext.Current.ClearError();
                FormsAuthentication.SignOut();
                HttpContext.Current.Response.Redirect(FormsAuthentication.LoginUrl);
            }
            
            //HttpContext httpContext = HttpContext.Current;
            //if (httpContext != null)
            //{
            //    RequestContext requestContext = ((MvcHandler)httpContext.CurrentHandler).RequestContext;
            //    /* when the request is ajax the system can automatically handle a mistake with a JSON response. then overwrites the default response */
            //    if (requestContext.HttpContext.Request.IsAjaxRequest())
            //    {
            //        httpContext.Response.Clear();
            //        string controllerName = requestContext.RouteData.GetRequiredString("controller");
            //        IControllerFactory factory = ControllerBuilder.Current.GetControllerFactory();
            //        IController controller = factory.CreateController(requestContext, controllerName);
            //        ControllerContext controllerContext = new ControllerContext(requestContext, (ControllerBase)controller);

            //        JsonResult jsonResult = new JsonResult();
            //        jsonResult.Data = new { success = false, serverError = "500" };
            //        jsonResult.JsonRequestBehavior = JsonRequestBehavior.AllowGet;
            //        jsonResult.ExecuteResult(controllerContext);
            //        httpContext.Response.End();
            //    }
            //    else
            //    {
            //        httpContext.Response.Redirect("~/Error");
            //    }
            //}
        }

    }
}
