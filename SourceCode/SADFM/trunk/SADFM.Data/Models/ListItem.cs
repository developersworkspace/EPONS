using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class ListItem : BaseModel
    {
        public ListItem() : this(null, 0) { }
        public ListItem(object Id = null, long Age = 0) : base(Id, Age) { }

        public string FullListName { get; set; }
        public string ListName { get; set; }
        public string ListDescription { get; set; }
        public string Name { get; set; }
        public string ParentID { get; set; }
        public string Description { get; set; }
        public string Code { get; set; }
        public string Value { get; set; }
        public int? SortOrder { get; set; }
        public DateTime LastUpdateTimestamp { get; set; }
        public string LastUpdateAccount { get; set; }
        public List<ListItem> Children { get; set; }
        public string ListValue { get; set; }
        public ListItem Parent { get; set; }
        public string Status { get; set; }

        public ListItem(Data.ListItem data, bool addChildren = true, bool addParent = false)
            : this(data.ListItemId, data.LastUpdateTimestamp.Ticks)
        {
            string fullListName = null;
            Data.ListItem list = data.Parent;
            while (list != null)
            {
                fullListName = string.Concat(list.Name, string.IsNullOrEmpty(fullListName) ? string.Empty : string.Concat("/", fullListName));
                list = list.Parent;
            }
            FullListName = fullListName;
            ListName = data.Parent == null ? null : data.Parent.Name;
            ListValue = data.Parent == null ? null : data.Parent.Value;
            ListDescription = data.Parent == null ? null : data.Parent.Description;
            Name = data.Name;
            Description = data.Description;
            Code = data.Code;
            Value = data.Value;
            Status = data.Status.Name;
            SortOrder = data.SortOrder;
            LastUpdateTimestamp = data.LastUpdateTimestamp;
            LastUpdateAccount = string.Format("{0} {1}", data.LastUpdateAccount.FirstName, data.LastUpdateAccount.LastName);
            ParentId = data.ParentId;

            if (addParent && data.Parent != null) {
                this.Parent = new ListItem(data.Parent, addParent: true);
            }

            if (addChildren)
                Children = data.Children.Select(l => new ListItem(l)).ToList();
        }

        private Guid? ParentId { get; set; }
        public Guid? GetParentId()
        {
            return ParentId;
        }
    }
}
