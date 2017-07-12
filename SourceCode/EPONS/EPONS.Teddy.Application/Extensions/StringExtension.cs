using HtmlAgilityPack;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Extensions
{
    public static class StringExtension
    {
        public static string ToTitleCase(this string value)
        {

            TextInfo textInfo = new CultureInfo("en-US", false).TextInfo;
            return textInfo.ToTitleCase(value);

        }

        public static DateTime? FromIdNumberToDateTime(this string value)
        {
            try
            {
                if (value.Length != 13)
                    return null;

                string year = value.Substring(0, 2);
                string month = value.Substring(2, 2);
                string day = value.Substring(4, 2);

                int yearNumber = Convert.ToInt32(year);
                int monthNumber = Convert.ToInt32(month);
                int dayNumber = Convert.ToInt32(day);

                if (yearNumber < 10)
                    yearNumber += 2000;
                else
                    yearNumber += 1900;

                return new DateTime(yearNumber, monthNumber, dayNumber);
            }
            catch
            {
                return null;
            }

        }
        
        public static string RemoveFontTags(this string html)
        {
            var htmlDocument = new HtmlAgilityPack.HtmlDocument();
            htmlDocument.LoadHtml(html);
            foreach (var eachNode in htmlDocument.DocumentNode.SelectNodes("//*"))
            {
                // eachNode.Attributes.RemoveAll();
                
                if (eachNode.Name == "font")
                {
                    RemoveElementKeepText(eachNode);
                }
            }
            html = htmlDocument.DocumentNode.OuterHtml;
            return html;
        }

        private static void RemoveElementKeepText(HtmlNode node)
        {
            //node.ParentNode.RemoveChild(node, true);
            HtmlNode parent = node.ParentNode;
            HtmlNode prev = node.PreviousSibling;
            HtmlNode next = node.NextSibling;

            foreach (HtmlNode child in node.ChildNodes)
            {
                if (prev != null)
                    parent.InsertAfter(child, prev);
                else if (next != null)
                    parent.InsertBefore(child, next);
                else
                    parent.AppendChild(child);

            }
            node.Remove();
        }

    }
}
