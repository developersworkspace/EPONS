using EPONS.Teddy.Presentation.Controllers;
using NSubstitute;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using RazorGenerator.Testing;
using Epons.Gateway.Helpers;

namespace EPONS.Teddy.Runner
{
    class Program
    {
        static void Main(string[] args)
        {
            int cnt = 0;
            var userService = new Application.Services.UserService(GetConnection());

            int totalRecords;

            var users = userService.List(1, 1000, null, out totalRecords);

            foreach (var user in users)
            {
                var fullUser = userService.Get(user.Id);

                foreach (var facility in fullUser.Facilitites.GroupBy(x => x.Id).Select(x => x.First()))
                {
                    //Console.WriteLine("Changing user, {0} to facility {1}", fullUser.Username, facility.Name);
                    userService.SetFacility(fullUser.Username, facility.Id);
                    
                    var mockControllerContext = Substitute.For<ControllerContext>();
                    mockControllerContext.HttpContext.User.Identity.Name.Returns(fullUser.Username);

                    var patientController = new PatientController();

                    patientController.ControllerContext = mockControllerContext;

                    var patientListResult = patientController.List(pageSize: 1000);
                    var patientListModel = ((ViewResult)patientListResult).Model as EPONS.Teddy.Presentation.ViewObjects.Patient.List;

                    foreach (var patient in patientListModel.Patients)
                    {
                        try
                        {
                            var patientEditResult = patientController.Edit(patient.Id);
                            var patientEditModel = ((ViewResult)patientListResult).Model as EPONS.Teddy.Presentation.ViewObjects.Patient.Edit;
                            cnt++;
                            //Console.WriteLine("Patient, {0} {1} succeed as {2} at {3}", patient.Firstname, patient.Lastname, fullUser.Username, facility.Name);
                        }
                        catch
                        {
                            Console.ForegroundColor = ConsoleColor.Red;
                            Console.WriteLine("Patient, {0} {1} failed as {2} at {3}", patient.Firstname, patient.Lastname, fullUser.Username, facility.Name);
                            Console.ForegroundColor = ConsoleColor.White;
                        }

                        Console.Title = cnt.ToString();
                    }
                }
            }

        }

        static IDbConnection GetConnection()
        {
            string host = ConfigurationManager.AppSettings["DatabaseHost"];
            string user = ConfigurationManager.AppSettings["DatabaseUser"];
            string name = ConfigurationManager.AppSettings["DatabaseName"];
            string password = ConfigurationManager.AppSettings["DatabasePassword"];

            string connectionString = $"data source={host};Initial Catalog={name};User ID={user};Password={Crypto.Decrypt(password)};";

            return new SqlConnection(connectionString);
        }
    }
}
