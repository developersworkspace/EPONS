namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ScoreItem")]
    public partial class ScoreItem
    {
        private ScoreItem() { }

        public ScoreItem(string name, string description, int sortOrder)
        {
            this.Name = name;
            this.Description = description;
            this.SortOrder = sortOrder;
        }

        public ScoreItem AddSubItems(ScoreItem subItem)
        {

            if (this.SubScoreItems == null)
                this.SubScoreItems = new List<ScoreItem>();

            this.SubScoreItems.Add(subItem);

            return this;
        }

        public ScoreItem AddValues(ScoreValue value)
        {
            if (this.ScoreValues == null)
                this.ScoreValues = new List<ScoreValue>();

            this.ScoreValues.Add(value);

            return this;
        }

        public Guid ScoreItemId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        [Required]
        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string ToolTip { get; set; }

        public int SortOrder { get; set; }

        public Guid? CareplanId { get; set; }

        public Guid? ParentScoreItemId { get; set; }

        public virtual Careplan Careplan { get; set; }

        public virtual ICollection<ScoreItem> SubScoreItems { get; set; }

        public virtual ScoreItem ParentScoreItem { get; set; }

        public virtual ICollection<ScoreValue> ScoreValues { get; set; }
    }
}
