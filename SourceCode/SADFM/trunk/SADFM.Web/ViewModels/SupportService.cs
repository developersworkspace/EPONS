using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SADFM.Web.ViewModels
{
    public class SupportService
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public int? SortOrder { get; set; }
        public Guid Id { get; set; }
    }
}