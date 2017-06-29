using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Repositories.Models
{
    class MeasurementToolResult
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public Guid ScoreItemId { get; set; }
        public string ScoreItem { get; set; }
        public string ScoreItemDescription { get; set; }
        public int ScoreItemSortOrder { get; set; }
        public Guid ScoreValueId { get; set; }
        public int ScoreValue { get; set; }
        public string ScoreValueDescription { get; set; }
        public Guid? SubScoreItemId { get; set; }
        public string SubScoreItem { get; set; }
        public string SubScoreItemDescription { get; set; }
        public int SubScoreItemSortOrder { get; set; }
        public Guid? SubScoreValueId { get; set; }
        public int SubScoreValue { get; set; }
        public string SubScoreValueDescription { get; set; }
    }
}
