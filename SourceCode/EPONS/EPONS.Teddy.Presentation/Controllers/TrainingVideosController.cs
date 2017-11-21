using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class TrainingVideosController : BaseController
    {
        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult Index(string name)
        {
            var baseObject = GetBaseObject();

            return View(baseObject);
        }
    }
}