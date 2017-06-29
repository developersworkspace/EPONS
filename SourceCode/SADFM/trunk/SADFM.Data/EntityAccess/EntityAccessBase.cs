using ReturnTrue.Utilities.ExceptionManagement;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity.Core;
using System.Data.Entity.Core.Objects;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.EntityAccess
{
    public abstract class EntityAccessBase
    {
        private static bool? logSql = null;
        private static bool LogSql
        {
            get
            {
                if (!logSql.HasValue)
                {
                    bool tmp;
                    if (bool.TryParse(ConfigurationManager.AppSettings["LogSql"], out tmp))
                        logSql = tmp;
                    else
                        logSql = false;
                }
                return logSql.Value;
            }
        }
        private readonly string connectionString;
        private readonly ErrorRecorder errorRecorder;
        protected EntityAccessBase(ConnectionStringSettings connection)
        {
            connectionString = new System.Data.Entity.Core.EntityClient.EntityConnectionStringBuilder(connection.ConnectionString).ProviderConnectionString;
            errorRecorder = new ErrorRecorder("Application", "SADFM.Data");
        }

        internal T Execute<T>(Func<SADFMEntities, T> func)
        {
            try
            {
                using (SADFMEntities context = new SADFMEntities())
                {
                    context.Database.Connection.ConnectionString = connectionString;
                    context.Database.CommandTimeout = 60;
                    return func(context);
                }
            }
            catch (DbEntityValidationException ex)
            {
                string msg = ex.Message;
                foreach (var error in ex.EntityValidationErrors)
                    if (!error.IsValid)
                        foreach (var lineError in error.ValidationErrors)
                            msg = string.Concat(msg, Environment.NewLine, string.Format(" --Validation error: {0} = {1}", lineError.PropertyName, lineError.ErrorMessage));
                string stackTrace = ex.StackTrace;
                while (ex.InnerException != null)
                {
                    msg = string.Concat(msg, Environment.NewLine, ex.InnerException.Message);
                }
                errorRecorder.LogError(EventLogEntryType.Error, string.Concat("Message:", msg, "Stack trace:", stackTrace));
                throw ex;
            }
            catch (Exception ex)
            {
                string msg = ex.Message;
                string stackTrace = ex.StackTrace;
                while (ex.InnerException != null)
                {
                    msg = string.Concat(msg, Environment.NewLine, ex.InnerException.Message);
                    ex = ex.InnerException;
                }
                errorRecorder.LogError(EventLogEntryType.Error, string.Concat("Message:", msg, "Stack trace:", stackTrace));
                throw ex;
            }
        }

        internal void WriteAudit(SADFMEntities context, string lastUpdateUsername)
        {
            WriteAudit(context, context.Accounts.Single(a => a.Username == lastUpdateUsername).AccountId);
        }

        internal void WriteManualAudit(SADFMEntities context, Data.Audit audit)
        {
            context.Audits.Add(audit);
        }

        internal void WriteAudit(SADFMEntities context, Guid lastUpdateAccountId)
        {

            if (!context.ChangeTracker.HasChanges())
                return;

            var allChanges = context.ChangeTracker.Entries();
            foreach (DbEntityEntry ee in allChanges)
            {
                if (ee.State == System.Data.Entity.EntityState.Unchanged)
                    continue;
                if (ee.State == System.Data.Entity.EntityState.Deleted)
                    //Deletes should be tracked by the parent object or status change
                   continue;

                ObjectContext ox = ((IObjectContextAdapter)context).ObjectContext;
                ObjectStateEntry ose = ox.ObjectStateManager.GetObjectStateEntry(ee.Entity);
                Guid pkid = Guid.Empty;
                if (ose.EntityKey.EntityKeyValues != null)
                {
                    EntityKeyMember member = ose.EntityKey.EntityKeyValues[0];
                    pkid = (Guid)member.Value;
                }
                bool added = ee.State == System.Data.Entity.EntityState.Added;
                string tableName = ose.EntitySet.Name;

                System.Data.Entity.Infrastructure.DbPropertyValues original = null;
                if (!added)
                    original = ee.OriginalValues;
                System.Data.Entity.Infrastructure.DbPropertyValues current = null;
                if (ee.State != System.Data.Entity.EntityState.Deleted)
                    current = ee.CurrentValues;

                foreach (string property in current.PropertyNames)
                {
                    object originalValue = original == null ? null : original.GetValue<object>(property);
                    object currentValue = current == null ? null : current.GetValue<object>(property);
                    if (originalValue == null && currentValue == null)
                        continue;
                    if (originalValue == null || currentValue == null || originalValue.ToString() != currentValue.ToString())
                        context.Audits.Add(new Data.Audit
                        {
                            TableName = tableName,
                            ChangeTypeId = DataAccess.ListItem.GetListItem("ChangeType", added ? "Insert" : "Update").GUID,
                            AccountId = lastUpdateAccountId,
                            FieldName = property,
                            OldValue = originalValue == null ? null : originalValue.ToString().Substring(0, originalValue.ToString().Length > 1000 ? 1000 : originalValue.ToString().Length),
                            NewValue = currentValue == null ? null : currentValue.ToString().Substring(0, currentValue.ToString().Length > 1000 ? 1000 : currentValue.ToString().Length),
                            PrimaryKeyId = pkid,
                            UpdateDate = DateTime.Now
                        });
                }
            }
        }

        protected void RecordError(EventLogEntryType type, string message, string source = null)
        {
            errorRecorder.LogError(type, message, source);
        }

        protected void RecordSql(string location, string qry)
        {

            if (!LogSql)
                return;

            SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Debug, "{0} - {1}", location, qry);
            //System.Diagnostics.Debug.WriteLine(string.Format("{0} - {1}", location, qry));
            
            //RecordError(EventLogEntryType.Information, string.Format("Location:{0}\nSQL:{1}", location, qry));

        }

        protected void RecordSql(string location, ObjectQuery qry)
        {
            RecordSql(location, qry.ToTraceString());
        }
    }
}
