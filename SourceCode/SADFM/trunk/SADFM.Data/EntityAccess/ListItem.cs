using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Linq.Dynamic;
using SADFM.Data.Models;
using SADFM.Base;

namespace SADFM.Data.EntityAccess
{
    public class ListItem : EntityAccessBase
    {
        internal ListItem(ConnectionStringSettings connection)
            : base(connection) { }

        public Dictionary<string, Dictionary<string, string>> GetLabels()
        {
            return Execute(cx =>
            {

                Dictionary<string, Dictionary<string, string>> result = new Dictionary<string, Dictionary<string, string>>();

                cx.ListItems.Single(li => li.Parent == null && li.Name == "Language").Children.ToList().ForEach(li =>
                {
                    Dictionary<string, string> labels = new Dictionary<string, string>();
                    cx.ListItemLabels.Where(lil => lil.LanguageId == li.ListItemId).ToList().ForEach(lil =>
                    {
                        labels.Add(lil.ListItem.Name, lil.Label);
                    });


                    result.Add(li.Code, labels);

                });


                return result;

            });
        }

        public Dictionary<Guid, List<ScaleScore>> GetScaleSubScores(Guid id)
        {
            return Execute(cx =>
            {

                var data = cx.ListItems.SingleOrDefault(x => x.ListItemId == id);


                var scores = data.Children.ToList().Select(x => new ScaleScore(x)).ToList();

                var subScores = new Dictionary<Guid, List<ScaleScore>>();
                foreach (var sc in data.Children)
                    subScores.Add(sc.ListItemId, sc.Children.Where(z => z.Children.Count > 0).ToList().Select(li => new ScaleScore(li)).ToList());

                return subScores;
            });
        }

        public List<Models.ListItem> GetMaintenanceList(string search, int start, int length, string sortColumn, bool ascending, out int count, out int filteredCount)
        {
            NLogHelper.WriteEvent(NLog.LogLevel.Info, "Listitem - MaintenaceList -->> started");

            int resultCount = 0, resultFilteredCount = 0;
            List<Models.ListItem> result = Execute(cx =>
            {
                search = search.ToLower();
                sortColumn = string.Format("{0} {1}", sortColumn, ascending ? "ASC" : "DESC");
                IQueryable<Data.ListItem> res1 = cx.ListItems.Where(li => li.ParentId.HasValue);
                resultCount = res1.Count();
                if (!string.IsNullOrEmpty(search))
                    res1 = res1.Where(li => li.Parent.Name.ToLower().Contains(search) || li.Name.ToLower().Contains(search) || li.Description.ToLower().Contains(search) || li.Code.ToLower().Contains(search));
                resultFilteredCount = res1.Count();

                NLogHelper.WriteEvent(NLog.LogLevel.Info, "Listitem - MaintenaceList -->> filtered result count completed.");

                IQueryable<Data.ListItem> res2;
                if (sortColumn == "ListName ASC")
                    res2 = res1.OrderBy(li => li.Parent.Name).ThenBy(li => li.Name);
                else if (sortColumn == "ListName DESC")
                    res2 = res1.OrderByDescending(li => li.Parent.Name).ThenBy(li => li.Name);
                else
                    res2 = res1.OrderBy(sortColumn);

                var x = res2.Skip(start).Take(length);

                NLogHelper.WriteEvent(NLog.LogLevel.Info, "Listitem - MaintenaceList -->> skip and take completed.");

                try
                {
                    return res2.Skip(start).Take(length).ToList().Select(li => new Models.ListItem(li)).ToList();
                }
                finally
                {
                    NLogHelper.WriteEvent(NLog.LogLevel.Info, "Listitem - MaintenaceList -->> ended");
                }
            });
            count = resultCount;
            filteredCount = resultFilteredCount;
            return result;
        }

        public List<Models.Label> GetLabelList()
        {
            return Execute(cx =>
            {
                return cx.ListItemLabels.ToList().Select(lil => (Models.Label)lil).ToList();
            });
        }


        public List<Models.ListItem> GetImpairmentClass()
        {
            return Execute(cx =>
              {
                  return cx.ListItems.SingleOrDefault(x => x.Name == "ImpairmentClass" && x.ParentId == null).Children.SelectMany(x => x.Children).OrderBy(x => x.Parent.SortOrder).ThenBy(x => x.SortOrder).Select(x => new Models.ListItem(x, true)).ToList();

              });


        }


        public List<Models.ListItem> GetList(string listName, string orderBy = "Name", System.Linq.Expressions.Expression<Func<Data.ListItem, bool>> filter = null, int limit = -1, bool deep = true)
        {
            Guid parentId = Execute(cx =>
            {

                Data.ListItem parent = null;
                foreach (string parentName in listName.Split(',', ' ', '/', '\\'))
                    if (parent == null)
                        parent = cx.ListItems.Single(li => li.Parent == parent && li.Name == parentName);
                    else
                        parent = parent.Children.Single(li => li.Name == parentName);

                return parent.ListItemId;
            });

            return GetListByParentId(parentId, orderBy, filter, limit, deep);

        }

        public List<SADFM.Data.Models.ListItem> GetChildren(Guid? parentId)
        {
            return Execute(cx =>
           {
               var children = cx.ListItems.Where(x => x.ParentId == parentId);
               var list = children.ToList().Select(x => new SADFM.Data.Models.ListItem
               {
                   GUID = x.ListItemId,
                   ID = BaseModel.EncryptId(x.ListItemId),
                   Name = x.Name,
                   Code = x.Code
               }).ToList();
               return list;
           });
        }

        public Guid? GetParent(Guid? id)
        {
            return Execute(cx =>
            {
                var parent = cx.ListItems.Single(x => x.ListItemId == id);

                return parent.ParentId;
            });
        }

        public Guid? GetParentParent(Guid? id)
        {
            return Execute(cx =>
            {
                var parent = cx.ListItems.Single(x => x.ListItemId == cx.ListItems.FirstOrDefault(z => z.ListItemId == id).ParentId);
                return parent.ParentId;
            });
        }

        public List<Models.ListItem> GetListByParentId(Guid parentId, string orderBy = "Name", System.Linq.Expressions.Expression<Func<Data.ListItem, bool>> filter = null, int limit = -1, bool deep = true)
        {
            return Execute(cx =>
            {
                var parent = cx.ListItems.Single(li => li.ListItemId == parentId);

                IQueryable<Data.ListItem> result = cx.ListItems.Where(li => li.ParentId == parent.ListItemId);
                if (filter != null)
                    result = result.Where(filter);

                if (limit > -1)
                    result = result.Take(limit);

                var afterSearch = result.ToList();

                var res = afterSearch.Select(lil => new Models.ListItem(lil, deep)).ToList();

                if (!string.IsNullOrWhiteSpace(orderBy))
                    res = res.OrderBy(orderBy).ToList();
                return res;
            });
        }
        public Models.UpdateResult SaveLabel(Models.Label label)
        {
            return Execute(cx =>
            {
                try
                {
                    cx.Database.ExecuteSqlCommand("SetLabel @p0, @p1, @p2",
                        new SqlParameter { ParameterName = "p0", Value = label.Language },
                        new SqlParameter { ParameterName = "p1", Value = label.LabelName },
                        new SqlParameter { ParameterName = "p2", Value = label.Value }
                        );
                    return new Models.UpdateResult(true);
                }
                catch (Exception ex)
                {
                    return new Models.UpdateResult("Error updating label: {0}", ex.Message);
                }
            });
        }

        public string GetListItemDescriptionByName(Guid listitemid)
        {
            return Execute(cx =>
            {
                var tmp = cx.ListItemLabels.SingleOrDefault(a => a.ListItemId.Equals(listitemid));
                if (tmp == null)
                    return null;
                return tmp.Label;
            });
        }

        public Guid GetListItemIdByName(string name)
        {
            return Execute(cx =>
            {
                var tmp = cx.ListItems.SingleOrDefault(x => x.Name.Equals(name));
                if (tmp == null)
                {
                    return Guid.Empty;
                }
                return tmp.ListItemId;
            });
        }


        internal Models.ListItem GetListItem(params string[] names)
        {
            Guid? parentId = null;
            return Execute(context =>
            {
                Data.ListItem li = null;
                foreach (string name in names)
                {
                    li = context.ListItems.Single(lix => lix.ParentId == parentId && lix.Name == name);
                    if (li == null)
                        return null;
                    parentId = li.ListItemId;
                }
                return new Models.ListItem(li);
            });
        }

        public Models.UpdateResult SaveListItem(Models.ListItem model)
        {
            return Execute(context =>
            {


                Guid lastUpdateAccountId = context.Accounts.Single(a => a.Username == model.LastUpdateUsername).AccountId;
                Data.ListItem listItem;
                if (!string.IsNullOrEmpty(model.ID))
                {
                    Guid listItemId = BaseModel.DecryptId(model.ID);
                    listItem = context.ListItems.Single(li => li.ListItemId == listItemId);

                    if (listItem.LastUpdateTimestamp.Ticks != model.Age)
                        return new UpdateResult(UpdateResult.ResultType.DataChanged);
                }
                else
                {
                    listItem = new Data.ListItem
                    {
                        ParentId = BaseModel.DecryptNullableId(model.ParentID),
                        StatusId = GetListItem("Status", "Active").GUID
                    };
                    context.ListItems.Add(listItem);
                }

                if (!string.IsNullOrWhiteSpace(model.Name))
                    listItem.Name = model.Name;

                listItem.Description = model.Description;
                listItem.SortOrder = model.SortOrder;
                listItem.Code = model.Code;
                listItem.Value = model.Value;

                WriteAudit(context, lastUpdateAccountId);

                listItem.LastUpdateAccountId = lastUpdateAccountId;
                listItem.LastUpdateTimestamp = DateTime.Now;

                context.SaveChanges();

                return new UpdateResult(true);
            });
        }

        public bool SetAsInActive(Guid listItemId)
        {
            return Execute(context =>
            {
                var item = context.ListItems.SingleOrDefault(x => x.ListItemId == listItemId);

                item.StatusId = GetListItem("Status", "Inactive").GUID;


                context.SaveChanges();

                return true;
            });
        }



        public Models.ListItem GetById(Guid listItemId, bool deep = false)
        {
            return Execute(context =>
            {
                return new Models.ListItem(context.ListItems.Single(li => li.ListItemId == listItemId), addParent: deep);
            });
        }

        public List<Models.ScoreDefinition> GetScaleLabels()
        {
            return Execute(context =>
            {
                return context.ScoreDefinitions.ToList().Select(sd => new Models.ScoreDefinition
                {
                    ScoreDefinitionId = sd.ScoreDefinitionId,
                    FunderExplaination = sd.FunderExplaination == null ? null : sd.FunderExplaination.Description,
                    ProviderExplaination = sd.ProviderExplaination == null ? null : sd.ProviderExplaination.Description,
                    ScaleValueId = sd.ScaleValueId
                }).ToList();
            });
        }
    }
}
