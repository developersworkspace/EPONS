using Dapper;
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
            var data = _connection.Query<T>(spName, parameters, commandType: CommandType.StoredProcedure);

            _logger.InfoFormat("Executed {0} - Returned {1} results", spName, data.Count());

            return data.ToList();
        }

        protected T QueryOne<T>(string spName, object parameters)
        {
            var data = _connection.Query<T>(spName, parameters, commandType: CommandType.StoredProcedure);

            _logger.InfoFormat("Executed {0} - Returned {1} results", spName, data.Count());

            return data.FirstOrDefault();
        }

        protected GridReader QueryMultiple(string spName, object parameters)
        {
            GridReader gridReader = _connection.QueryMultiple(spName, parameters, commandType: CommandType.StoredProcedure);

            _logger.InfoFormat("Executed {0}", spName);

            return gridReader;
        }

        protected void Execute(string spName, object parameters)
        {
            _connection.Execute(spName, parameters, commandType: CommandType.StoredProcedure);

            _logger.InfoFormat("Executed {0}", spName);
        }
    }
}
