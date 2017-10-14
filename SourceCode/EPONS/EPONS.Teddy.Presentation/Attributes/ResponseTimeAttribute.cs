using StatsdClient;
using System;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Attributes
{
    public class ResponseTimeAttribute : ActionFilterAttribute
    {
        private const string Key = "ResponseTimeAttribute";

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);

            filterContext.RequestContext.HttpContext.Items[Key] = System.Diagnostics.Stopwatch.StartNew();
        }

        public override void OnActionExecuted(ActionExecutedContext filterContext)
        {
            base.OnActionExecuted(filterContext);

            System.Diagnostics.Stopwatch stopwatch = (System.Diagnostics.Stopwatch)filterContext.RequestContext.HttpContext.Items[Key];

            Metrics.Timer("HTTPResponseTime", Convert.ToInt32(stopwatch.ElapsedMilliseconds));
        }
    }
}