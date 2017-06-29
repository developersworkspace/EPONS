
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class HomeController : Controller
    {

        #region Action Methods

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult Index()
        {
            return RedirectToAction("List", "Patient");
        }


        #endregion
    }
}