using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Web.Shared
{
        public static class ControllerHelper
        {
            #region Json
            public static int MaxJsonLength { get; set; }

            static ControllerHelper()
            {
                MaxJsonLength = 2147483644;
            }

            public static System.Web.Mvc.JsonResult LargeJson(this System.Web.Mvc.Controller controlador, object data)
            {
                return new System.Web.Mvc.JsonResult()
                {
                    Data = data,
                    MaxJsonLength = MaxJsonLength,
                };
            }
            public static System.Web.Mvc.JsonResult LargeJson(this System.Web.Mvc.Controller controlador, object data, System.Web.Mvc.JsonRequestBehavior behavior)
            {
                return new System.Web.Mvc.JsonResult()
                {
                    Data = data,
                    JsonRequestBehavior = behavior,
                    MaxJsonLength = MaxJsonLength
                };
            }
            //TODO: You can add more overloads, the controller class has 6 overloads
            #endregion
        }
    
}
