using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EPONS.Teddy.Application.EntityViews;
using EPONS.Teddy.Application.Repositories;
using EPONS.Teddy.Application.ValueObjects;
using EPONS.Teddy.Application.Exceptions;
using StatsdClient;

namespace EPONS.Teddy.Application.Services
{
    public class FacilityService
    {
        private FacilityRepository _facilityRepository;

        public FacilityService(IDbConnection connection)
        {
            _facilityRepository = new FacilityRepository(connection);
        }

        public List<Facility> List()
        {
            using (Metrics.StartTimer($"FacilityService-List"))
            {
                return _facilityRepository.List();
            }
        }


        public void Create(Entities.Facility model)
        {
            using (Metrics.StartTimer($"FacilityService-Create"))
            {
                _facilityRepository.SaveFacility(model);
            }
        }

        public Entities.Facility Get(Guid facilityId)
        {
            using (Metrics.StartTimer($"FacilityService-Get"))
            {
                return _facilityRepository.FindById(facilityId);
            }
        }
        public byte[] Avatar(Guid facilityId)
        {
            using (Metrics.StartTimer($"FacilityService-Avatar"))
            {
                return _facilityRepository.FindAvatar(facilityId);
            }
        }

        public List<ListItem> ListMeasurementTools(Guid facilityId)
        {
            using (Metrics.StartTimer($"FacilityService-ListMeasurementTools"))
            {
                return _facilityRepository.FindMeasurementToolsById(facilityId);
            }
        }

        public void AddMeasurementTool(Guid facilityId, Guid measurementToolId)
        {
            using (Metrics.StartTimer($"FacilityService-AddMeasurementTool"))
            {
                var measurementTools = _facilityRepository.FindMeasurementToolsById(facilityId);

                if (measurementTools.Count(x => x.Id == measurementToolId) > 0)
                    throw new BusinessRuleException("Facility already has this measurement tool assigned");

                _facilityRepository.CreateFacilityMeasurementTool(facilityId, measurementToolId);
            }
        }

        public void RemoveMeasurementTool(Guid facilityId, Guid measurementToolId)
        {
            using (Metrics.StartTimer($"FacilityService-RemoveMeasurementTool"))
            {
                _facilityRepository.DeleteMeasurementTool(facilityId, measurementToolId);
            }
        }

        public void Save(Entities.Facility model)
        {
            using (Metrics.StartTimer($"FacilityService-Save"))
            {
                _facilityRepository.UpdateFacility(model);
            }
        }

        public void SaveAvatar(Guid facilityId, byte[] bytes)
        {
            using (Metrics.StartTimer($"FacilityService-SaveAvatar"))
            {
                _facilityRepository.UpdateFacilityAvatar(facilityId, bytes);
            }
        }
    }
}
