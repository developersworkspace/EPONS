using EPONS.Teddy.Application.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using EPONS.Teddy.Application.EntityViews;

namespace EPONS.Teddy.Application.Services
{
    public class VisitService
    {
        private VisitRepository _visitRepository;
        private PatientRepository _patientRepository;

        public VisitService(IDbConnection connection)
        {
            _visitRepository = new VisitRepository(connection);
            _patientRepository = new PatientRepository(connection);
        }

        public IList<EntityViews.MeasurementTool> GetMeasurementToolsForVisit(Guid patientId)
        {
            var result = _visitRepository.FindMeasurementToolsForVisit(patientId);

            return result;
        }

        public IList<EntityViews.Visit> ListVisits(Guid patientId)
        {
            return _visitRepository.FindVisits(patientId);
        }

        public void Create(string username, Entities.Visit model, Guid[] scoreValues)
        {

            var currentEpsisodeOfCare = _patientRepository.FindCurrentEpisodeOfCare(model.PatientId);
            
            Guid visitId = _visitRepository.SaveVisit(username, model, currentEpsisodeOfCare);

            foreach (var id in scoreValues) {
                _visitRepository.SaveVisitScore(visitId, id);
            }
        }

        public Entities.Visit Get(Guid visitId)
        {
            return _visitRepository.FindById(visitId);
        }

        public IList<MeasurementTool> GetMeasurementToolsOfVisit(Guid visitId)
        {
            return _visitRepository.FindMeasurementToolsByVisitId(visitId);
        }

        public IList<Guid> GetVisitScoreValues(Guid visitId)
        {
            return _visitRepository.FindVisitScoresByVisitId(visitId);
        }
    }
}
