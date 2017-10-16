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

            string statName = $"HTTPResponseTime-{filterContext.ActionDescriptor.ControllerDescriptor.ControllerName}-{filterContext.ActionDescriptor.ActionName}";

            System.Diagnostics.Stopwatch stopwatch = (System.Diagnostics.Stopwatch)filterContext.RequestContext.HttpContext.Items[Key];

            stopwatch.Stop();

            Metrics.Timer(statName, Convert.ToInt32(stopwatch.ElapsedMilliseconds));
            Metrics.Timer("HTTPResponseTime", Convert.ToInt32(stopwatch.ElapsedMilliseconds));
            Metrics.Timer($"HTTP.{filterContext.RequestContext.HttpContext.Request.HttpMethod}.{filterContext.RequestContext.HttpContext.Response.StatusCode}", Convert.ToInt32(stopwatch.ElapsedMilliseconds));
        }
    }
}