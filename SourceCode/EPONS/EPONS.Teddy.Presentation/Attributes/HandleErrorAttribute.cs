using EPONS.Teddy.Application.Exceptions;
using EPONS.Teddy.Presentation.Controllers;
using EPONS.Teddy.Presentation.ViewObjects.Error;
using System;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Attributes
{
    public class HandleErrorAttribute : ActionFilterAttribute, IExceptionFilter
    {
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger("MVCErrorLogger");

        public void OnException(ExceptionContext filterContext)
        {
            //if (ConfigurationDefaults.EnableErrorHandling)
            //{
            //    string url = filterContext.HttpContext.Request.RawUrl;
            //    string user = filterContext.HttpContext.User.Identity.Name;
            //    string contentType = filterContext.HttpContext.Request.ContentType;
            //    string ipAddress = HttpContext.Current.Request.UserHostAddress;
            //    string method = filterContext.HttpContext.Request.HttpMethod.ToString();
            //    string parameters = method == "GET" ? null : string.Join(", ", filterContext.HttpContext.Request.Form.AllKeys.Select(x => string.Format("{0}: '{1}'", x, filterContext.HttpContext.Request.Form[x])).ToList());

            //    var statusCode = (int)HttpStatusCode.InternalServerError;
            //    if (filterContext.Exception is HttpException)
            //    {
            //        statusCode = (filterContext.Exception as HttpException).GetHttpCode();
            //    }
            //    else if (filterContext.Exception is UnauthorizedAccessException)
            //    {
            //        statusCode = (int)HttpStatusCode.Forbidden;
            //    }

            //    log.Info(string.Format("{0} {1} - {2} [{3}]", string.IsNullOrWhiteSpace(user) ? "Anonymous" : user, url, parameters, ipAddress));
            //    log.Error("Uncaught exception", filterContext.Exception);

            //    var result = CreateActionResult(filterContext, statusCode);
            //    filterContext.Result = result;


            //    filterContext.ExceptionHandled = true;
            //    filterContext.HttpContext.Response.Clear();
            //    filterContext.HttpContext.Response.StatusCode = statusCode;
            //    filterContext.HttpContext.Response.TrySkipIisCustomErrors = true;
            //}
        }

        protected virtual ActionResult CreateActionResult(ExceptionContext filterContext, int statusCode)
        {
            var ctx = new ControllerContext(filterContext.RequestContext, filterContext.Controller);
            var statusCodeName = ((HttpStatusCode)statusCode).ToString();

            string viewName = null;
            ViewDataDictionary viewData = null;

            if (filterContext.Exception.GetType() == typeof(BusinessRuleException))
            {
                viewName = SelectFirstView(ctx,
                                         "~/Views/Error/UnAuthorized.cshtml",
                                          "~/Views/Error/General.cshtml",
                                          statusCodeName,
                                          "Error");

                string username = filterContext.HttpContext.User.Identity.Name;

                var baseModel = ((BaseController)filterContext.Controller).GetBaseObject();
                UnAuthorized model = new UnAuthorized(baseModel)
                {
                    Exception = filterContext.Exception
                };

                viewData = new ViewDataDictionary<UnAuthorized>(model);

            }
            else
            {
                viewName = SelectFirstView(ctx,
                                         string.Format("~/Views/Error/{0}.cshtml", statusCodeName),
                                          "~/Views/Error/General.cshtml",
                                          statusCodeName,
                                          "Error");

                var controllerName = (string)filterContext.RouteData.Values["controller"];
                var actionName = (string)filterContext.RouteData.Values["action"];

                HandleErrorInfo model = new HandleErrorInfo(filterContext.Exception, controllerName, actionName);
                viewData = new ViewDataDictionary<HandleErrorInfo>(model);
            }


            var result = new ViewResult
            {
                ViewName = viewName,
                ViewData = viewData,
            };
            result.ViewBag.StatusCode = statusCode;
            return result;
        }

        protected string SelectFirstView(ControllerContext ctx, params string[] viewNames)
        {
            return viewNames.First(view => ViewExists(ctx, view));
        }

        protected bool ViewExists(ControllerContext ctx, string name)
        {
            var result = ViewEngines.Engines.FindView(ctx, name, null);
            return result.View != null;
        }


    }
}