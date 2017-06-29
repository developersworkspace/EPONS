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
            return _facilityRepository.List();
        }


        public void Create(Entities.Facility model)
        {
            _facilityRepository.SaveFacility(model);
        }

        public Entities.Facility Get(Guid facilityId)
        {
            return _facilityRepository.FindById(facilityId);
        }
        public byte[] Avatar(Guid facilityId)
        {
            return _facilityRepository.FindAvatar(facilityId);
        }

        public List<ListItem> ListMeasurementTools(Guid facilityId)
        {
            return _facilityRepository.FindMeasurementToolsById(facilityId);
        }

        public void AddMeasurementTool(Guid facilityId, Guid measurementToolId)
        {
            var measurementTools = _facilityRepository.FindMeasurementToolsById(facilityId);

            if (measurementTools.Count(x => x.Id == measurementToolId) > 0)
                throw new BusinessRuleException("Facility already has this measurement tool assigned");
               
            _facilityRepository.CreateFacilityMeasurementTool(facilityId, measurementToolId);
        }

        public void RemoveMeasurementTool(Guid facilityId, Guid measurementToolId)
        {
            _facilityRepository.DeleteMeasurementTool(facilityId, measurementToolId);
        }

        public void Save(Entities.Facility model)
        {
            _facilityRepository.UpdateFacility(model);
        }

        public void SaveAvatar(Guid facilityId, byte[] bytes)
        {
            _facilityRepository.UpdateFacilityAvatar(facilityId, bytes);
        }
    }
}
