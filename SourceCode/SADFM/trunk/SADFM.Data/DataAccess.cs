using ReturnTrue.Utilities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace SADFM.Data
{
    public static class DataAccess
    {

        private static readonly string security;

        private static readonly SADFMEntities context;
        private static object __locker = new object();
        static DataAccess()
        {

           

            if (context == null)
            {
                lock (__locker)
                {
                    if (context == null)
                    {
                        try
                        {
                            ConnectionStringSettings conn = ConfigurationManager.ConnectionStrings["SADFMEntities"];

                            context = ReturnTrue.Data.EF6.DatabaseUpdater.Execute<SADFMEntities>(
                            conn.ConnectionString,
                            cx =>
                            {
                                try
                                {
                                    cx.Database.Connection.Open();
                                    return Version.Parse(cx.Database.SqlQuery<string>("SELECT TOP 1 liv.Name FROM ListItem liv INNER JOIN ListItem livp ON (livp.Name = 'DatabaseVersion' AND liv.ParentId = livp.ListItemId) ORDER BY liv.LastUpdateTimestamp DESC").First());
                                }
                                catch
                                {
                                    return new Version("0.0.0.0");
                                }
                                finally
                                {
                                    cx.Database.Connection.Close();
                                }
                            },
                            (cx, v) =>
                            {
#if(DEBUG)
                                System.Diagnostics.Debug.WriteLine(v.ToString());
#endif
                                try
                                {

                                    EventLog.WriteEvent("Updated database {0} to script {1}", cx.Database.Connection.ConnectionString, v);
                                }
                                catch {


                                }
                                cx.Database.ExecuteSqlCommand(string.Format("INSERT INTO ListItem (ListItemId, Name, Description, LastUpdateAccountId, LastUpdateTimestamp, StatusId, ParentId) VALUES (newid(), '{0}', '{0}', (SELECT TOP 1 AccountId FROM Account ORDER BY LastUpdateTimestamp DESC), getdate(), (SELECT ListItemId FROM ListItem WHERE Name='Active' AND ParentId=(SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL)), (SELECT ListItemId FROM ListItem WHERE Name='DatabaseVersion' AND ParentId IS NULL))", v.ToString()));
                            },
                            logException: xe => EventLog.WriteEvent(System.Diagnostics.EventLogEntryType.Error, "Error in DatabaseUpdater: {0}", xe.Message.Substring(0,xe.Message.Length > 20000 ? 20000 : xe.Message.Length))
                            );

                            //context.ContextOptions.LazyLoadingEnabled = false;

                            Account = new EntityAccess.Account(conn);
                            ListItem = new EntityAccess.ListItem(conn);
                            Audit = new EntityAccess.Audit(conn);
                            Provider = new EntityAccess.Provider(conn);
                            Client = new EntityAccess.Client(conn);
                            Patient = new EntityAccess.Patient(conn);
                            Visit = new EntityAccess.Visit(conn);

                            security = Guid.NewGuid().ToString("N");

                            context.Database.CommandTimeout = 180;
                        }
                        catch (Exception ex)
                        {
                            try
                            {
                                EventLog.WriteEvent(System.Diagnostics.EventLogEntryType.Error, "CANNOT UPDATE DB: {0}", ex.Message);
                            }
                            catch { }
                            throw ex;
                        }
                    }
                }
            }
        }

        public static EntityAccess.Account Account { get; private set; }
        public static EntityAccess.ListItem ListItem { get; private set; }
        public static EntityAccess.Audit Audit { get; private set; }
        public static EntityAccess.Provider Provider { get; private set; }
        public static EntityAccess.Client Client { get; private set; }
        public static EntityAccess.Patient Patient { get; private set; }
        public static EntityAccess.Visit Visit { get; private set; }

        public static string Security { get { return security; } }

    }
}
