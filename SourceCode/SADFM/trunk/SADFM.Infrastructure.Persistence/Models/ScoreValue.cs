namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ScoreValue")]
    public partial class ScoreValue
    {
        public Guid ScoreValueId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        [Required]
        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string ToolTip { get; set; }

        public int SortOrder { get; set; }

        public int Value { get; set; }

        public Guid ScoreItemId { get; set; }

        public virtual ScoreItem ScoreItem { get; set; }
    }
}
