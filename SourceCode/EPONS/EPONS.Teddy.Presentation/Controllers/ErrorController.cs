using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class ErrorController : Controller
    {

        #region Action Methods

        public ActionResult NoFunctionalityAvailable()
        {
            return View();
        }

        public ActionResult FriendlyError()
        {
            return View();
        }
        #endregion

    }
}