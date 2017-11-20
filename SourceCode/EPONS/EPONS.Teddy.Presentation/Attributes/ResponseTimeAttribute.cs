using System;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Attributes
{
    public class ResponseTimeAttribute : ActionFilterAttribute
    {
        private const string Key = "ResponseTimeAttribute";

        private static UdpClient _udpClient = new UdpClient();

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

        }
    }
}