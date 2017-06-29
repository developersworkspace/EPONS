using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class SupportService
    {

        public string Note { get; set; }
        public string Name { get; set; }
        public Guid SupportServiceId { get; set; }

        public SupportService(Data.PatientSupportService data)
        {
            Note = data.Note;
            SupportServiceId = data.SupportServiceId;
            Name = data.ListItem.Description;
        }

        public SupportService()
        {
        }
    }
}
