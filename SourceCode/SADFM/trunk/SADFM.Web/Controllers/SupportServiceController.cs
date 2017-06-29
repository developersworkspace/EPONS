using OpenServices.Web.Attributes;
using SADFM.Data;
using SADFM.Data.Models;
using SADFM.Web.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SADFM.Web.Controllers
{
    [Log]
    public class SupportServiceController : Controller
    {
        [HttpPost]
        public ActionResult Edit(ViewModels.SupportService model)
        {

            if (model.Id == Guid.Empty)
            {

                var parentId = DataAccess.ListItem.GetListItemIdByName("SupportServices");

                DataAccess.ListItem.SaveListItem(new Data.Models.ListItem()
                {
                    Name = model.Name,
                    Description = model.Description,
                    SortOrder = model.SortOrder,
                    LastUpdateUsername = this.User.Identity.Name,
                    ParentID = BaseModel.EncryptId(parentId)
                });
            }
            else
            {

                var item = DataAccess.ListItem.GetById(model.Id);

                item.Name = model.Name;
                item.Description = model.Description;
                item.SortOrder = model.SortOrder;
                item.LastUpdateUsername = this.User.Identity.Name;

                DataAccess.ListItem.SaveListItem(item);
            }
            return RedirectToAction("SupportServices", "Administration");
        }

        [HttpGet]
        public ActionResult Delete(ViewModels.SupportService model)
        {
            var item = DataAccess.ListItem.GetById(model.Id);

            DataAccess.ListItem.SetAsInActive(model.Id);

            return RedirectToAction("SupportServices", "Administration");
        }

        [HttpGet]
        public JsonResult Get(Guid id)
        {
            var item = DataAccess.ListItem.GetById(id);

            return Json(new
            {
                Name = item.Name,
                Description = item.Description,
                SortOrder = item.SortOrder,
                Id = id

            }, JsonRequestBehavior.AllowGet);
        }


    }
}