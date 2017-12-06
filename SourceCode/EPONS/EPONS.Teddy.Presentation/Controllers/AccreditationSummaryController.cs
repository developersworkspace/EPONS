using EPONS.Teddy.Application.Exceptions;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class AccreditationSummaryController : BaseController
    {

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult Index()
        {
            var baseObject = GetBaseObject();

            if (!baseObject.User.IsSuperAdmin)
                new BusinessRuleException("Access Denied");

            return View(baseObject);
        }
    }
}