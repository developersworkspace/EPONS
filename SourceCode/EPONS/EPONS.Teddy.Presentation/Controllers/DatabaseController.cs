using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class DatabaseController : BaseController
    {
        [HttpGet]
        public ActionResult SavedQuery(string name)
        {
            SqlConnection connection = (SqlConnection)GetConnection();
            SqlCommand command;
            string sql = string.Format("EXEC [EPONS].[FindSavedQueryResultByName] {0}", name);
            SqlDataReader dataReader;
            try
            {
                connection.Open();
                command = new SqlCommand(sql, connection);
                dataReader = command.ExecuteReader();

                var dataTable = new DataTable();
                dataTable.Load(dataReader);
                dataReader.Close();
                command.Dispose();
                connection.Close();

                return View(dataTable);
            }
            catch (Exception ex)
            {
                return Content("Error!!");
            }
        }

        [HttpGet]
        public ActionResult Query(string query = null)
        {
            if (string.IsNullOrEmpty(query))
            {
                return View();
            }else
            {

                SqlConnection connection = (SqlConnection)GetConnection();
                SqlCommand command;
                string sql = query;
                SqlDataReader dataReader;
                try
                {
                    connection.Open();
                    command = new SqlCommand(sql, connection);
                    dataReader = command.ExecuteReader();

                    var dataTable = new DataTable();
                    dataTable.Load(dataReader);
                    dataReader.Close();
                    command.Dispose();
                    connection.Close();

                    return View(dataTable);
                }
                catch (Exception ex)
                {
                    return Content("Error!!");
                }
            }

        }

    }
}