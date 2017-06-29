using EPONS.Teddy.Application.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EPONS.Teddy.Application.Entities;

namespace EPONS.Teddy.Application.Services
{
    public class SurveyService
    {
        private SurveyRepository _surveyRepository;

        public SurveyService(IDbConnection connection)
        {
            _surveyRepository = new SurveyRepository(connection);
        }

        public Survey Get(Guid surveyId)
        {
            return _surveyRepository.FindSurveyById(surveyId);
        }

        public void Create(Guid patientId, Guid userId, Guid[] surveyOptions)
        {
            Guid batchId = Guid.NewGuid();

            foreach (var surveyOptionId in surveyOptions)
            {
                _surveyRepository.CreateSurveyQuestionResult(patientId, userId, surveyOptionId, batchId);
            }
        }
    }
}
