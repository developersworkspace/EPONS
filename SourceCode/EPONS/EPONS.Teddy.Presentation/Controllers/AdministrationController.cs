using EPONS.Teddy.Application.Exceptions;
using EPONS.Teddy.Application.Services;
using System;
using System.Collections.Generic;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class AdministrationController : BaseController
    {
        private UserService _userService;

        public AdministrationController()
        {
            _userService = new UserService(GetConnection());
        }

        #region Action Methods

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult List(int pageNumber = 1, int pageSize = 10, string query = null, string columnName = "Username", bool sortDirectionIsAsc = true)
        {
            var baseObject = GetBaseObject();

            if (!baseObject.User.IsSuperAdmin)
                new BusinessRuleException("Access Denied");

            int totalRecords = 0;

            List<Application.EntityViews.User> users = _userService.List(pageNumber, pageSize, query, out totalRecords);

            return View(new ViewObjects.Administration.List(baseObject)
            {
                Users = users,
                Pagination = new ViewObjects.Pagination()
                {
                    PageNumber = pageNumber,
                    NumberOfPages = (int)Math.Ceiling((decimal)totalRecords / (decimal)pageSize)
                },
                PageSize = pageSize
            });
        }
        #endregion

    }
}