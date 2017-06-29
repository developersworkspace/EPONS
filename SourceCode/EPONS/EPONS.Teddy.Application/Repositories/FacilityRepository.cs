using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EPONS.Teddy.Application.EntityViews;
using EPONS.Teddy.Application.ValueObjects;

namespace EPONS.Teddy.Application.Repositories
{
    public class FacilityRepository : Repository
    {
        public FacilityRepository(IDbConnection connection) : base(connection)
        {

        }

        internal List<Facility> List()
        {
            return Query<Facility>("[EPONS].[ListFacilities]", null);
        }

        internal byte[] FindAvatar(Guid facilityId)
        {
            var data = Query<dynamic>("[EPONS].[FindFacilityAvatarById]", new
            {
                facilityId = facilityId
            });

            return data.FirstOrDefault() == null ? null : data.FirstOrDefault().Avatar;
        }
        internal void SaveFacility(Entities.Facility model)
        {
            Execute("[EPONS].[CreateFacility]", new
            {
                name = model.Name,
                monthlyRate = model.MonthlyRate,
                avatar = (byte[])null,
                isFunder = model.IsFunder,
                admissionTypeId = model.AdmissionTypeId
            });
        }

        internal List<ListItem> FindMeasurementToolsById(Guid facilityId)
        {
           return Query<ValueObjects.ListItem>("[EPONS].[FindMeasurementToolsByFacilityId]", new
           {
               facilityId = facilityId
           });
        }

        internal void CreateFacilityMeasurementTool(Guid facilityId, Guid measurementToolId)
        {
            Execute("[EPONS].[CreateFacilityMeasurementTool]", new
            {
                facilityId = facilityId,
                measurementToolId = measurementToolId
            });
        }

        internal void DeleteMeasurementTool(Guid facilityId, Guid measurementToolId)
        {
            Execute("[EPONS].[DeleteFacilityMeasurementTool]", new
            {
                facilityId = facilityId,
                measurementToolId = measurementToolId
            });
        }

        internal void UpdateFacilityAvatar(Guid facilityId, byte[] bytes)
        {
            Execute("[EPONS].[UpdateFacilityAvatar]", new
            {
                facilityId = facilityId,
                bytes = bytes
            });
        }

        internal void UpdateFacility(Entities.Facility model)
        {
            Execute("[EPONS].[UpdateFacility]", new
            {
                facilityId = model.Id,
                name = model.Name,
                monthlyRate = model.MonthlyRate,
                admissionTypeId = model.AdmissionTypeId
            });
        }

        internal Entities.Facility FindById(Guid facilityId)
        {
            Entities.Facility facility = QueryOne<Entities.Facility>("[EPONS].[FindFacilityById]", new
            {
                facilityId = facilityId
            });

            facility.AdmissionTypes = Query<ValueObjects.ListItem>("[EPONS].[ListAdmissionTypes]", null);

            return facility;
        }

        
        
    }
}
