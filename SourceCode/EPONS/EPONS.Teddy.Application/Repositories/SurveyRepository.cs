using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EPONS.Teddy.Application.Entities;

namespace EPONS.Teddy.Application.Repositories
{
    public class SurveyRepository : Repository
    {
        public SurveyRepository(IDbConnection connection) : base(connection)
        {

        }

        internal Survey FindSurveyById(Guid surveyId)
        {
            var data = Query<dynamic>("[EPONS].[FindSurveyById]", new
            {
                surveyId = surveyId
            });

            return data.GroupBy(x => new
            {
                Id = (Guid)x.Id,
                Name = (string)x.Name

            }).Select(x => new Survey()
            {
                Id = x.Key.Id,
                Name = x.Key.Name,
                Questions = x.GroupBy(y => new
                {
                    SurveyQuestionId = (Guid)y.SurveyQuestionId,
                    SurveyQuestionText = (string)y.SurveyQuestionText,
                    SurveyQuestionSortOrder = (int)y.SurveyQuestionSortOrder
                }).Select(y => new ValueObjects.SurveyQuestion()
                {
                    Id = y.Key.SurveyQuestionId,
                    Text = y.Key.SurveyQuestionText,
                    SortOrder = y.Key.SurveyQuestionSortOrder,
                    Options = y.GroupBy(z => new
                    {
                        SurveyQuestionOptionId = (Guid)z.SurveyQuestionOptionId,
                        SurveyQuestionOptionText = (string)z.SurveyQuestionOptionText,
                        SurveyQuestionOptionSortOrder = (int)z.SurveyQuestionOptionSortOrder
                    }).Select(z => new ValueObjects.SurveyQuestionOption()
                    {
                        Id = z.Key.SurveyQuestionOptionId,
                        SortOrder = z.Key.SurveyQuestionOptionSortOrder,
                        Text = z.Key.SurveyQuestionOptionText
                    }).OrderBy(z => z.SortOrder).ToList()
                }).OrderBy(y => y.SortOrder).ToList()
            }).First(); 
        }

        internal void CreateSurveyQuestionResult(Guid patientId, Guid userId, Guid surveyOptionId, Guid batchId)
        {
            Execute("[EPONS].[CreateSurveyQuestionResult]", new
            {
                userId = userId, 
                patientId = patientId,
                optionId = surveyOptionId,
                batchId = batchId
            });
        }
    }
}
