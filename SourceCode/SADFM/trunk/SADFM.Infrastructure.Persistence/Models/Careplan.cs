namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Careplan")]
    public partial class Careplan
    {
        private Careplan() { }

        public Careplan(string name, int sortOrder)
        {
            this.Name = name;
            this.SortOrder = sortOrder;
        }

        public Careplan AddItems(ScoreItem item)
        {
            if (this.ScoreItems == null)
                this.ScoreItems = new List<ScoreItem>();

            this.ScoreItems.Add(item);

            return this;
        }

        public Guid CareplanId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        [Required]
        public int SortOrder { get; set; }

        public virtual ICollection<PatientCarePlan> PatientCarePlans { get; set; }

        public virtual ICollection<ScoreItem> ScoreItems { get; set; }
    }
}
