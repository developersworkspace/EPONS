using OpenServices.Web.Attributes;
using SADFM.Data;
using SADFM.Web.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SADFM.Web.Controllers
{
    public class DatatablesController : Controller
    {
        [Log]
        public ActionResult SupportServices()
        {
            var data = DataAccess.ListItem.GetList("SupportServices", deep: false).Where(x => x.Status == "Active").OrderBy(x => x.SortOrder);

           
            return Json(
                Utilities.DataTableJson(
                Utilities.DataTableRequest.Parse(Request.Form),
                 data.Select(x => new { Name = x.Name, Description = x.Description, SortOrder = x.SortOrder, Id = x.GetId() }).ToList(),
                null,
                x => x.Name, x => x.Description, x => x.SortOrder, x => x.Id));
        }
    }
}