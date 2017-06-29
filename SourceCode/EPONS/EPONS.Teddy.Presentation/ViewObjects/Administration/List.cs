using System.Collections.Generic;

namespace EPONS.Teddy.Presentation.ViewObjects.Administration
{
    public class List : Base
    {
        public List<Application.EntityViews.User> Users { get; set; }
        public Pagination Pagination { get; set; }
        public int PageSize { get; set; }

        public List() : base()
        {

        }

        public List(Base baseModel) : base(baseModel)
        {

        }
    }
}