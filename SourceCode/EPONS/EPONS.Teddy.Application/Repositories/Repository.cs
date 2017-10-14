using Dapper;
using StatsdClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Dapper.SqlMapper;

namespace EPONS.Teddy.Application.Repositories
{
    public class Repository
    {
        private IDbConnection _connection;
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public Repository(IDbConnection connection)
        {
            _connection = connection;
        }

        protected List<T> Query<T>(string spName, object parameters)
        {
            using (Metrics.StartTimer($"Repository-Query-{spName}"))
            {
                var data = _connection.Query<T>(spName, parameters, commandType: CommandType.StoredProcedure);

                _logger.InfoFormat("Executed {0} - Returned {1} results", spName, data.Count());

                Metrics.Counter("Repository-Query");

                return data.ToList();
            }
        }

        protected T QueryOne<T>(string spName, object parameters)
        {
            using (Metrics.StartTimer($"Repository-QueryOne-{spName}"))
            {
                var data = _connection.Query<T>(spName, parameters, commandType: CommandType.StoredProcedure);

                _logger.InfoFormat("Executed {0} - Returned {1} results", spName, data.Count());

                Metrics.Counter("Repository-QueryOne");

                return data.FirstOrDefault();
            }
        }

        protected GridReader QueryMultiple(string spName, object parameters)
        {
            using (Metrics.StartTimer($"Repository-QueryMultiple-{spName}"))
            {
                GridReader gridReader = _connection.QueryMultiple(spName, parameters, commandType: CommandType.StoredProcedure);

                _logger.InfoFormat("Executed {0}", spName);

                Metrics.Counter("Repository-QueryMultiple");

                return gridReader;
            }
        }

        protected void Execute(string spName, object parameters)
        {
            using (Metrics.StartTimer($"Repository-Execute-{spName}"))
            {
                _connection.Execute(spName, parameters, commandType: CommandType.StoredProcedure);

                _logger.InfoFormat("Executed {0}", spName);

                Metrics.Counter("Repository-Execute");
            }
        }
    }
}
