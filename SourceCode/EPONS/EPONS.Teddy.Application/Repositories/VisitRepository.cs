using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EPONS.Teddy.Application.Entities;
using static Dapper.SqlMapper;
using EPONS.Teddy.Application.Repositories.Models;

namespace EPONS.Teddy.Application.Repositories
{
    public class VisitRepository : Repository
    {
        public VisitRepository(IDbConnection connection) : base(connection)
        {
        }


        public IList<Entities.Visit> FindVisits(Guid patientId, DateTime startDate, DateTime endDate)
        {
            return Query<Entities.Visit>("[EPONS].[FindVisitsByPatientIdAndDateRange]", new
            {
                patientId = patientId,
                startDate = startDate,
                endDate = endDate
            });
        }

        internal IList<EntityViews.MeasurementTool> FindMeasurementToolsForVisit(Guid patientId)
        {
            var data = Query<MeasurementToolResult>("[EPONS].[FindMeasurementToolsForVisitByPatientId]", new
            {
                patientId = patientId 
            });

            var result = data.GroupBy(x => new
            {
                Id = x.Id,
                Name = x.Name
            }).Select(x => new EntityViews.MeasurementTool()
            {
                Id = x.Key.Id,
                Name = x.Key.Name,
                ScoreItems = x.GroupBy(y => new
                {
                    ScoreItemId = y.ScoreItemId,
                    ScoreItem = y.ScoreItem,
                    ScoreItemDescription = y.ScoreItemDescription,
                    ScoreItemSortOrder = y.ScoreItemSortOrder
                })
                .OrderBy(y => y.Key.ScoreItemSortOrder)
                .Select(y => new ValueObjects.ScoreItem()
                {
                    Id = y.Key.ScoreItemId,
                    Name = y.Key.ScoreItem,
                    Description = y.Key.ScoreItemDescription,
                    SubScoreItems = y.Where(a => a.SubScoreItemId.HasValue).GroupBy(a => new
                    {
                        SubScoreItemId = a.SubScoreItemId.Value,
                        SubScoreItem = a.SubScoreItem,
                        subscoreItemDescription = a.SubScoreItemDescription,
                        SubScoreItemSortOrder = a.SubScoreItemSortOrder
                    })
                    .OrderBy(a => a.Key.SubScoreItemSortOrder)
                    .Select(a => new ValueObjects.ScoreItem()
                    {
                        Id = a.Key.SubScoreItemId,
                        Name = a.Key.SubScoreItem,
                        ScoreValues = a.GroupBy(b => new
                        {
                            SubScoreValueId = b.SubScoreValueId.Value,
                            SubScoreValue = b.SubScoreValue,
                            subScoreValueDescription = b.SubScoreValueDescription

                        }).
                        Select(b => new ValueObjects.ScoreValue()
                        {
                            Id = b.Key.SubScoreValueId,
                            Value = b.Key.SubScoreValue,
                            Description = b.Key.subScoreValueDescription
                        }).ToList()
                    }).ToList(),
                    ScoreValues = y.GroupBy(z => new
                    {
                        ScoreValueId = z.ScoreValueId,
                        ScoreValue = z.ScoreValue,
                        ScoreValueDescription = z.ScoreValueDescription
                    })
                    .Select(z => new ValueObjects.ScoreValue()
                    {
                        Id = z.Key.ScoreValueId,
                        Value = z.Key.ScoreValue,
                        Description = z.Key.ScoreValueDescription
                    }).ToList()
                }).ToList()
            }).ToList();

            return result;
        }

        internal IList<Guid> FindVisitScoresByVisitId(Guid visitId)
        {
           return Query<dynamic>("[EPONS].[FindVisitScoresByVisitId]", new
            {
                visitId = visitId
            }).Select(x => (Guid)x.Id).ToList();
        }

        internal IList<EntityViews.MeasurementTool> FindMeasurementToolsByVisitId(Guid visitId)
        {
            var data = Query<MeasurementToolResult>("[EPONS].[FindMeasurementToolsByVisitId]", new
            {
                visitId = visitId
            });

            var result = data.GroupBy(x => new
            {
                Id = x.Id,
                Name = x.Name,
    
        
            }).Select(x => new EntityViews.MeasurementTool()
            {
                Id = x.Key.Id,
                Name = x.Key.Name,

                ScoreItems = x.GroupBy(y => new
                {
                    ScoreItemId = y.ScoreItemId,
                    ScoreItem = y.ScoreItem,
                    ScoreItemDescription = y.ScoreItemDescription,
                    ScoreItemSortOrder = y.ScoreItemSortOrder
                })
                .OrderBy(y => y.Key.ScoreItemSortOrder)
                .Select(y => new ValueObjects.ScoreItem()
                {
                    Id = y.Key.ScoreItemId,
                    Name = y.Key.ScoreItem,
                    Description = y.Key.ScoreItemDescription,
                    SubScoreItems = y.Where(a => a.SubScoreItemId.HasValue).GroupBy(a => new
                    {
                        SubScoreItemId = a.SubScoreItemId.Value,
                        SubScoreItem = a.SubScoreItem,
                        SubScoreItemDescription = a.SubScoreItemDescription,
                        SubScoreItemSortOrder = a.SubScoreItemSortOrder
                    })
                    .OrderBy(a => a.Key.SubScoreItemSortOrder)
                    .Select(a => new ValueObjects.ScoreItem()
                    {
                        Id = a.Key.SubScoreItemId,
                        Name = a.Key.SubScoreItem,
                        Description = a.Key.SubScoreItemDescription,
                        ScoreValues = a.GroupBy(b => new
                        {
                            SubScoreValueId = b.SubScoreValueId.Value,
                            SubScoreValue = b.SubScoreValue,
                            SubScoreValueDescription = b.SubScoreValueDescription
                        }).
                        Select(b => new ValueObjects.ScoreValue()
                        {
                            Id = b.Key.SubScoreValueId,
                            Value = b.Key.SubScoreValue,
                            Description = b.Key.SubScoreValueDescription
                        }).ToList()
                    }).ToList(),
                    ScoreValues = y.GroupBy(z => new
                    {
                        ScoreValueId = z.ScoreValueId,
                        ScoreValue = z.ScoreValue,
                        ScoreValueDescription = z.ScoreValueDescription
                    })
                    .Select(z => new ValueObjects.ScoreValue()
                    {
                        Id = z.Key.ScoreValueId,
                        Value = z.Key.ScoreValue,
                        Description = z.Key.ScoreValueDescription
                    }).ToList()
                }).ToList()
            }).ToList();

            return result;
        }

        internal Visit FindById(Guid visitId)
        {
            return QueryOne<Visit>("[EPONS].[FindVisitById]", new
            {
                visitId = visitId
            });
        }

         internal void SaveVisitScore(Guid visitId, Guid scoreId)
        {
            Execute("[EPONS].[CreateVisitScore]", new
            {
              visitId = visitId,
              scoreId = scoreId
            });
        }

        internal Guid SaveVisit(string username, Visit model, EntityViews.EpisodeOfCare currentEpisodeOfCare)
        {
            
                      
            var data = Query<dynamic>("[EPONS].[CreateVisit]", new
            {
                patientId = model.PatientId,
                timestamp = model.Timestamp,
                dailyNotes = model.DailyNotes,
                username = username,
                temperature = model.Temperature,
                heartRate = model.HeartRate,
                bloodPressureSystolic = model.BloodPressureSystolic,
                bloodPressureDiastolic = model.BloodPressureDiastolic,
                respiratoryRate = model.RespiratoryRate,
                pulseOximetry = model.PulseOximetry,
                glucose = model.Glucose,
                progressNotes = model.ProgressNotes,
                isPrivate = model.IsPrivate,
                impairmentGroupId = model.ImpairmentGroupId,
                episodeOfCareId = currentEpisodeOfCare.EpisodeOfCareId,
                DurationofVisit = model.DurationOfVisit
            });

            return data.ElementAt(0).Id;
        }

        public IList<EntityViews.Visit> FindVisits(Guid patientId)
        {
            GridReader gridReader = QueryMultiple("[EPONS].[FindVisitsByPatientId]", new
            {
                patientId = patientId
            });

            IEnumerable<EntityViews.Visit> visits = gridReader.Read<EntityViews.Visit>();
            IEnumerable<dynamic> measurementTools = gridReader.Read<dynamic>();

            foreach (var visit in visits)
            {
                visit.MeasurementTools = string.Join(", ", measurementTools.Where(x => x.Id == visit.Id).Select(x => x.MeasurementTool));
            }

            return visits.OrderByDescending(x => x.Timestamp).ToList();
        }
    }
   
}
