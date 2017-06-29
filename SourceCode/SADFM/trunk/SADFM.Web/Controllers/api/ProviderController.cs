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
    public class ProviderController : ApiController
    {

        public object Get(string group)
        {
            switch (group)
            {
             
                case "Group":
                    return new
                    {
                        groups = DataAccess.Provider.GetAllProviders().Where(p => p.IsGroup),
                        units = DataAccess.ListItem.GetList("ProviderUnit", filter: li => li.Value == "Sub-Acute")
                    };
                case "Service":
                    return new
                    {
                        groups = new int[0],
                        units = DataAccess.ListItem.GetList("ProviderUnit", filter: li => li.Value == "Non-Acute")
                    };
                case  "All" :
                     return new
                    {
                        groups = DataAccess.Provider.GetAllProviders().Where(p => p.IsGroup),
                        units = DataAccess.ListItem.GetList("ProviderUnit", filter: li => li.Value == "Sub-Acute")
                    };
            }
            return null;
        }


    }
}
