using Dapper;
using EPONS.Teddy.Application.Repositories;
using RestSharp;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.Caching;
using System.Web.Mvc;
using System.Linq;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class BaseController : Controller
    {
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private IDbConnection _connection;

        protected IDbConnection GetConnection()
        {
            if (_connection == null)
                _connection = new SqlConnection(ConfigurationManager.ConnectionStrings["SADFM"].ConnectionString);

            return _connection;
        }

        
        internal ViewObjects.Base GetBaseObject()
        {
            string key = string.Format("BaseObject-{0}", this.User.Identity.Name);

            ViewObjects.Base result = null; 

            if (result == null)
            {               
                Application.Entities.User user = new UserRepository(GetConnection()).FindByUsername(this.User.Identity.Name);
                Application.Services.MessagingService messagingService = new Application.Services.MessagingService(new MessagingRepository(GetConnection()));

                result = new ViewObjects.Base()
                {
                    DisplayName = this.User.Identity.Name,
                    User = user,
                    Messages = messagingService.Retrieve(user.Id)
                };
            }

            var adminMessageData = GetConnection().Query<dynamic>("[EPONS].[FindAdminMessage]", commandType: CommandType.StoredProcedure).AsList<dynamic>();

            if (adminMessageData.Count > 0)
            {
                result.AdminMessageTitle = adminMessageData.First().Title;
                result.AdminMessageBody = adminMessageData.First().Message;
            }

            return result;
        }

        protected override void OnException(ExceptionContext filterContext)
        {
            Elmah.ErrorSignal.FromCurrentContext().Raise(filterContext.Exception);

            _logger.Fatal("Unhandled Exception", filterContext.Exception);

            base.OnException(filterContext);
        }


        protected void SendNotification(string message, string color)
        {
            var client = new RestClient("https://api.hipchat.com/v2/room/EPONS/notification");
            var request = new RestRequest();
            request.AddHeader("Authorization", string.Format("Bearer {0}", "7i0uG82HunPe3fJXyp93dgAwmfimrhgEAFdRYVeF"));
            request.Method = Method.POST;
            request.AddHeader("Content-Type", "application/json");
            request.AddJsonBody(new
            {
                color = color,
                message = message,
                notify = true
            });

            client.ExecuteAsync(request, null);
        }
    }
}