using SADFM.Data;
using SADFM.Web.Filters;
using SADFM.Web.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace SADFM.Web.Controllers.api
{
    [Secured]
    public class FunderController : ApiController
    {
        public void Post(Data.Models.ListItem model)
        {
            model.LastUpdateUsername = UserHelper.Username;
            model.ListName = "Funders";
            model.Description = model.Name;
            model.Value = model.Value;
            model.ParentID = Data.Models.BaseModel.EncryptId(DataAccess.ListItem.GetChildren(null).Where(x => x.Name == "Funders").First().GetId());

            DataAccess.ListItem.SaveListItem(model);
        }

    }
}
