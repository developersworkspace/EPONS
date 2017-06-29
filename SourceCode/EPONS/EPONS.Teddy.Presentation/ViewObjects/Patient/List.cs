using System.Collections.Generic;

namespace EPONS.Teddy.Presentation.ViewObjects.Patient
{
    public class List : Base
    {
        public IList<Application.EntityViews.Patient> Patients { get; set; }
        public Pagination Pagination { get; set; }
        public int PageSize { get; set; }
        public string ListType { get; set; }

        public List(Base baseModel) : base(baseModel)
        {

        }

        public List() : base()
        {

        }
    }
}