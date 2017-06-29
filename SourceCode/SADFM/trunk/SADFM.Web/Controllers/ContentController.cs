using OpenServices.Web.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SADFM.Web.Controllers
{
    [Log]
    public class ContentController : Controller
    {
        // GET: Content
        public FileResult ProviderImage(string id)
        {
            string image = SADFM.Data.DataAccess.Provider.GetById(Guid.ParseExact(id, "N")).ProfileImage;
            if (image.Contains("base64,"))
            {
                image = image.Substring(image.IndexOf("base64,") + 7);

            }
            return File(Convert.FromBase64String(image), "image/png", "ImgProvider.png");
        }
    }
}