namespace SADFM.Infrastructure.Persistence.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Title")]
    public partial class Title
    {
        private Title() { }

        public Title(string name)
        {
            this.Name = name;
        }

        public Guid TitleId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        public virtual ICollection<Account> Accounts { get; set; }

        public virtual ICollection<Patient> Patients { get; set; }
    }
}
