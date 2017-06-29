using SADFM.Infrastructure.Factories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Application.Factories
{
    public class ExcelFactory : IExcelFactory
    {
        public string Create(DataTable dt)
        {
            bool includeHeaders = false;

            StringBuilder strHTMLBuilder = new StringBuilder();
            //strHTMLBuilder.Append("<html>");
            //strHTMLBuilder.Append("<body>");
            strHTMLBuilder.Append("<table>");

            if (includeHeaders)
            {
                strHTMLBuilder.Append("<tr>");
                foreach (DataColumn myColumn in dt.Columns)
                {
                    strHTMLBuilder.Append("<td>");
                    strHTMLBuilder.Append(myColumn.ColumnName);
                    strHTMLBuilder.Append("</td>");

                }
                strHTMLBuilder.Append("</tr>");
            }


            foreach (DataRow myRow in dt.Rows)
            {

                strHTMLBuilder.Append("<tr>");
                foreach (DataColumn myColumn in dt.Columns)
                {
                    strHTMLBuilder.Append("<td>");
                    strHTMLBuilder.Append(myRow[myColumn.ColumnName].ToString());
                    strHTMLBuilder.Append("</td>");

                }
                strHTMLBuilder.Append("</tr>");
            }

            //Close tags.  
            strHTMLBuilder.Append("</table>");
            //strHTMLBuilder.Append("</body>");
            //strHTMLBuilder.Append("</html>");

            string Htmltext = strHTMLBuilder.ToString();

            return Htmltext;

        }
    }
}
