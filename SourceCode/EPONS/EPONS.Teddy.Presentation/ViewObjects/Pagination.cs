using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EPONS.Teddy.Presentation.ViewObjects
{
    public class Pagination
    {
        public int NumberOfPages { get; set; }
        public int PageNumber { get; set; }
        public int MaxNumberOfPagesOnPagination = 2;
    }
}