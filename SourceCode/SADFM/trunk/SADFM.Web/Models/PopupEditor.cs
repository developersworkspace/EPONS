using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SADFM.Web.Models
{
    public class PopupEditor : List<SADFM.Web.Models.PopupEditor.EditorField>
    {

        public enum EditorType
        {
            Text,
            DropdownBox,
            Area
        }

        public class EditorField
        {
            public string FieldLabel { get; set; }
            public string FieldId { get; set; }
            public string Placeholder { get; set; }
            public EditorType Type { get; set; }
            public string HelpText { get; set; }
            public MvcHtmlString FieldHtml { get; set; }

        }

        public void AddDropdown<T>(string label, string id, string helpText, List<T> list, Func<T, string> value, Func<T, string> text)
        {
            this.Add(new EditorField
            {
                FieldLabel = label,
                HelpText = helpText,
                FieldHtml = SADFM.Web.Shared.HtmlHelper.DropdownBox(list, id, value, text),
                Type = EditorType.DropdownBox
            });
        }

        public void AddText(string label, string id, string placeholder, string helpText)
        {
            this.Add(new EditorField
            {
                FieldLabel = label,
                Type = EditorType.Text,
                FieldHtml = new MvcHtmlString(string.Format("<input type=\"text\" placeholder=\"{0}\" class=\"form-control\" id=\"{0}\">", placeholder, id))
            });
        }
    }
}