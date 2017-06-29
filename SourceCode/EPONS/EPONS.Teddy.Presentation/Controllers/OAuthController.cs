using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class OAuthController : Controller
    {

        #region Action Methods

        //[HttpGet]
        //public ActionResult Google(string code, string state, string error)
        //{

        //    if (!string.IsNullOrWhiteSpace(error))
        //        return RedirectToAction("Invalid", "OAuth");


        //    string accessToken = _oauthService.AuthorizationGrant(code, state);

        //    User user = _oauthService.Validate(accessToken);

        //    if (user == null)
        //        return RedirectToAction("Invalid", "OAuth");

        //    FormsAuthentication.SetAuthCookie(user.Credentials.Username, true);

        //    _messagingService.Send(new Person()
        //    {
        //        Id = Guid.NewGuid()
        //    }, new Person()
        //    {
        //        Id = Constants.NotificationsMessageId
        //    }, new Message()
        //    {
        //        Body = string.Format("{0} has logged in.", user.DisplayName)
        //    });

        //    return RedirectToAction("", "");

        //}

        //public ActionResult Invalid()
        //{
        //    return View();
        //}
        #endregion
    }
}