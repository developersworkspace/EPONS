using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EPONS.Teddy.Application.Entities;
using static Dapper.SqlMapper;

namespace EPONS.Teddy.Application.Repositories
{
    public class UserRepository : Repository
    {
        public UserRepository(IDbConnection connection) : base(connection)
        {
        }

        public Entities.User FindById(Guid userId)
        {
            Entities.User user = QueryOne<Entities.User>("[EPONS].[FindUserById]", new
            {
                userId = userId
            });

            EntityViews.Facility currentFacility = QueryOne<EntityViews.Facility>("[EPONS].[FindCurrentUserFacilityByUserId]", new
            {
                userId = user.Id
            });

 
            List<EntityViews.Facility> userFacilities = Query<EntityViews.Facility>("[EPONS].[FindUserFacilitiesByUsername]", new
            {
                username = user.Username
            });

            
            List<ValueObjects.ListItem> userFacilityPermissions = new List<ValueObjects.ListItem>();
            if (currentFacility != null)
                userFacilityPermissions = Query<ValueObjects.ListItem>("[EPONS].[FindUserPermissionsByFacilityId]", new
                {
                    username = user.Username,
                    facilityId = currentFacility.Id
                });

           
            user.MeasurementToolScores = Query<ValueObjects.MeasurementToolScore>("[EPONS].[FindMeasurementToolScoresByUserId]", new
            {
                userId = userId
            });

            user.Titles = Query<ValueObjects.ListItem>("[EPONS].[ListTitles]", null);
            user.ProfessionalBodies = Query<ValueObjects.ListItem>("[EPONS].[ListProfessionalBodies]", null);
            user.Facilitites = userFacilities;
            user.CurrentFacility = currentFacility;
            user.Permissions = userFacilityPermissions == null? new List<ValueObjects.ListItem>() : userFacilityPermissions;
            user.Positions = Query<ValueObjects.ListItem>("[EPONS].[ListPositions]", null);
            
            return user;
        }

        public byte[] FindAvatarById(Guid userId)
        {
            dynamic result = QueryOne<dynamic>("[EPONS].[FindUserAvatarById]", new
            {
                userId = userId
            });

            return result == null ? null : result.Avatar;
        }

        public void UnlockUser(Guid userId)
        {
            Execute("[EPONS].[UnlockUser]", new
            {
                userId = userId
            });
        }

        public void LockUser(Guid userId)
        {
            Execute("[EPONS].[LockUser]", new
            {
                userId = userId
            });
        }

        public bool SaveUser(Entities.User user)
        {
            Execute("[EPONS].[SaveUser]", new
            {
                userId = user.Id,
                firstname = user.Firstname,
                lastname = user.Lastname,
                titleId = user.TitleId,
                emailAddress = user.EmailAddress,
                contactNumber = user.ContactNumber,
                identificationNumber = user.IdentificationNumber,
                professionalBodyId = user.ProfessionalBodyId,
                registrationNumber = user.ProfessionalBodyRegistrationNumber,
                practiceNumber = user.PracticeNumber,
                PositionId = user.PositionId
            });

            return true;
        }

        public void CreateMeasurementToolScore(Guid userId, Guid measurementToolId, int score)
        {
            Execute("[EPONS].[CreateMeasurementToolScore]", new
            {
                userId = userId,
                measurementToolId = measurementToolId,
                score = score
            });
        }

        public void UpdateUserPassword(Guid userId, string newPassword)
        {
            Execute("[EPONS].[UpdateUserPassword]", new
            {
                userId = userId,
                newPassword = newPassword
            });
        }

        public void CreateUser(User model, string password)
        {
            Execute("[EPONS].[CreateUser]", new
            {
                username = model.Username,
                emailAddress = model.EmailAddress,
                password = password
            });
        }

        public void AcceptDisclaimer(string username)
        {
            Execute("[EPONS].[AcceptDisclaimer]", new
            {
                username = username
            });
        }

        public void DeleteFacilityPermission(Guid userId, Guid facilityId, Guid permissionId)
        {
            Execute("[EPONS].[DeleteFacilityPermission]", new
            {
                userId = userId,
                facilityId = facilityId,
                permissionId = permissionId
            });
        }

        public void CreateFacilityPermission(Guid userId, Guid facilityId, Guid permissionId)
        {
            Execute("[EPONS].[CreateFacilityPermission]", new
            {
                userId = userId,
                facilityId = facilityId,
                permissionId = permissionId
            });
        }

        public IList<ValueObjects.FacilityPermission> FindFacilityPermissions(Guid userId)
        {
            return Query<ValueObjects.FacilityPermission>("[EPONS].[FindUserFacilityPermissionsByUserId]", new
            {
                userId = userId
            });
        }

        public List<EntityViews.User> List(int pageNumber, int pageSize, string query, out int totalRecords)
        {
            GridReader gridReader = QueryMultiple("[EPONS].[ListUsers]", new
            {
                query = query,
                start = (pageNumber - 1) * pageSize,
                length = pageSize
            });

            IEnumerable<EntityViews.User> usersResultSet = gridReader.Read<EntityViews.User>();
            IEnumerable<dynamic> usersCountResultSet = gridReader.Read<dynamic>();

            totalRecords = usersCountResultSet.FirstOrDefault().Count;

            return usersResultSet.ToList();

        }

        public Entities.User FindByUsername(string username)
        {
            Entities.User user = QueryOne<Entities.User>("[EPONS].[FindUserByUsername]", new
            {
                username = username
            });

            if (user == null)
                return null;

            EntityViews.Facility currentFacility = QueryOne<EntityViews.Facility>("[EPONS].[FindCurrentUserFacilityByUserId]", new
            {
                userId = user.Id
            });

            List<EntityViews.Facility> userFacilities = Query<EntityViews.Facility>("[EPONS].[FindUserFacilitiesByUsername]", new
            {
                username = username
            });

            List<ValueObjects.MeasurementToolScore> measurementToolScores = Query<ValueObjects.MeasurementToolScore>("[EPONS].[FindMeasurementToolScoresByUserId]", new
            {
                userId = user.Id
            });


            List<ValueObjects.ListItem> userFacilityPermissions = new List<ValueObjects.ListItem>();

            if (currentFacility != null)
                userFacilityPermissions = Query<ValueObjects.ListItem>("[EPONS].[FindUserPermissionsByFacilityId]", new
                {
                    username = username,
                    facilityId = currentFacility.Id
                });

            List<ValueObjects.ListItem> currentFacilityMeasurementTools = new List<ValueObjects.ListItem>();
            if (currentFacility != null)
                currentFacilityMeasurementTools = Query<ValueObjects.ListItem>("[EPONS].[FindMeasurementToolsByFacilityId]", new
                {
                    facilityId = currentFacility.Id
                });

            user.Titles = Query<ValueObjects.ListItem>("[EPONS].[ListTitles]", null);
            user.ProfessionalBodies = Query<ValueObjects.ListItem>("[EPONS].[ListProfessionalBodies]", null);

            user.Facilitites = userFacilities;
            user.CurrentFacility = currentFacility;
            user.Permissions = userFacilityPermissions == null ? new List<ValueObjects.ListItem>() : userFacilityPermissions;
            user.CurrentFacilityMeasurementTools = currentFacilityMeasurementTools;
            user.MeasurementToolScores = measurementToolScores;
            return user;
        }

        public Entities.User FindByEmailAddress(string emailAddress)
        {
            Entities.User user = QueryOne<Entities.User>("[EPONS].[FindUserByEmailAddress]", new
            {
                emailAddress = emailAddress
            });

           
            return user;
        }

        public void SetFacility(string username, Guid facilityId)
        {
            Execute("[EPONS].[SetUserFacility]", new
            {
                username = username,
                facilityId = facilityId
            });
        }
    }
}
