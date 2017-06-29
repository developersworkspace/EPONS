using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Domain.Repositories
{
    public class UserRepository
    {
        private readonly string _connectionString;

        public UserRepository(string connectionString)
        {
            _connectionString = connectionString;
        }

        public Guid? FindSelectedFacilityIdByUsername(string username)
        {
            using (var sqlConnection = new SqlConnection(_connectionString))
            {
                var result = sqlConnection.Query<dynamic>("SELECT TOP 1 [userFacility].[UserId], [userFacility].[FacilityId] FROM [dbo].[UserFacility] AS userFacility INNER JOIN [dbo].[Account] AS account ON [account].AccountId = userFacility.UserId AND account.Username = @Username ORDER BY [userFacility].[CreatedTimestamp] DESC", new
                {
                    Username = username
                });

                if (result.Count() == 0)
                    return null;

                Guid facilityId = result.First().FacilityId;


                return facilityId;
            }
        }

        public string FindSelectedFacilityTypeByUsername(string username)
        {
            string providerSql = "SELECT TOP 1 [facility].[ProviderId] FROM [dbo].[UserFacility] AS userFacility INNER JOIN [dbo].[Account] AS account ON [account].AccountId = userFacility.UserId AND account.Username = @Username INNER JOIN [dbo].[Provider] AS facility ON [facility].[ProviderId] = [userFacility].FacilityId ORDER BY [userFacility].[CreatedTimestamp] DESC";
            string funderSql = "SELECT TOP 1 [facility].[ListItemId] FROM [dbo].[UserFacility] AS userFacility INNER JOIN [dbo].[Account] AS account ON [account].AccountId = userFacility.UserId AND account.Username = @Username INNER JOIN [dbo].[ListItem] AS facility ON [facility].[ListItemId] = [userFacility].FacilityId ORDER BY [userFacility].[CreatedTimestamp] DESC";

            using (var sqlConnection = new SqlConnection(_connectionString))
            {
                var result = sqlConnection.Query<dynamic>(providerSql, new
                {
                    Username = username
                });

                if (result.Count() == 1)
                    return "Provider";

                result = sqlConnection.Query<dynamic>(funderSql, new
                {
                    Username = username
                });

                if (result.Count() == 1)
                    return "Funder";

                return null;
            }

        }

        public void SetSelectedFacilityId(string username, Guid facilityId)
        {
            using (var sqlConnection = new SqlConnection(_connectionString))
            {
                var usersResult = sqlConnection.Query<dynamic>("SELECT TOP 1 [AccountId]  FROM [dbo].[Account] WHERE [Username] = @Username", new
                {
                    Username = username
                });

                if (usersResult.Count() == 0)
                    throw new Exception("Username not found");

                Guid userId = usersResult.First().AccountId;


                var result = sqlConnection.Execute("INSERT INTO [dbo].[UserFacility] ([UserFacilityId], [UserId], [FacilityId], [CreatedTimestamp], [LastUpdatedTimestamp]) VALUES (NEWID(), @UserId, @FacilityId, GETDATE(), NULL)", new
                {
                    UserId = userId,
                    FacilityId = facilityId
                });
            }

        }

        public void RemoveSelectedFacilityByUsername(string username)
        {
            using (var sqlConnection = new SqlConnection(_connectionString))
            {
                var result = sqlConnection.Query<dynamic>("DELETE userFacility FROM [dbo].[UserFacility] userFacility INNER JOIN [dbo].[Account] account ON [account].[AccountId] = [userFacility].[UserId] AND [account].[Username] = @Username", new
                {
                    Username = username
                });

            }
        }
    }
}
