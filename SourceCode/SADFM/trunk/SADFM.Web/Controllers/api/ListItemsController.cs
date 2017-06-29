using SADFM.Data;
using SADFM.Web.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace SADFM.Web.Controllers.api
{
    [Secured]
    public class ListItemsController : ApiController
    {
        /*
        // GET api/listitems
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/listitems/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/listitems
        public void Post([FromBody]string value)
        {
        }

        // PUT api/listitems/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/listitems/5
        public void Delete(int id)
        {
        }
        
*/
        public IEnumerable<Data.Models.ListItem> Get(string filter)
        {
            return DataAccess.ListItem.GetList(filter);
        }
    }
}
