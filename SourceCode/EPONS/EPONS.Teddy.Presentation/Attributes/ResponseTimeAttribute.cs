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

            SendMetric("HTTPResponseTime", stopwatch.ElapsedMilliseconds, "ms", new string[][] {
                new string[]
                {
                    "Token",
                    "eea9d4b1-9e49-4a8d-9e6d-f65ac51818c2"
                },
                new string[]
                {
                    "Application",
                    "EPONS"
                },
                new string[]
                {
                    "Controller",
                    filterContext.ActionDescriptor.ControllerDescriptor.ControllerName
                },
                new string[]
                {
                    "Action",
                    filterContext.ActionDescriptor.ActionName
                },
                new string[]
                {
                    "Method",
                    filterContext.RequestContext.HttpContext.Request.HttpMethod
                },
                new string[]
                {
                    "StatusCode",
                    filterContext.RequestContext.HttpContext.Response.StatusCode.ToString()
                }
            });

            SendMetric("HTTPRequest", 1, "c", new string[][] {
                new string[]
                {
                    "Token",
                    "eea9d4b1-9e49-4a8d-9e6d-f65ac51818c2"
                },
                new string[]
                {
                    "Application",
                    "EPONS"
                },
                new string[]
                {
                    "Controller",
                    filterContext.ActionDescriptor.ControllerDescriptor.ControllerName
                },
                new string[]
                {
                    "Action",
                    filterContext.ActionDescriptor.ActionName
                },
                new string[]
                {
                    "Method",
                    filterContext.RequestContext.HttpContext.Request.HttpMethod
                },
                new string[]
                {
                    "StatusCode",
                    filterContext.RequestContext.HttpContext.Response.StatusCode.ToString()
                }
            });

        }

        private void SendMetric(string name, long value, string type, string[][] tags)
        {
            _udpClient.Connect("open-stats.openservices.co.za", 8125);

            string tagsString = String.Join(",", tags.Select((x) => $"{x[0]}:{x[1]}").ToArray());

            byte[] bytes = Encoding.ASCII.GetBytes($"{name}:{value}|{type}|#{tagsString}");

            _udpClient.Send(bytes, bytes.Length);
        }
    }
}