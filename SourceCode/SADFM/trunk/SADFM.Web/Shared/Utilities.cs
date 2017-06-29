using SADFM.Data;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Configuration;
using System.Diagnostics;
using System.Net;
using System.Net.Mail;
using System.Threading;
using System.Collections;
using System.Windows.Forms;
using System.IO;
using System.Text;
using System.Data;
using System.Drawing;
using System.Web.Mvc;
using System.Drawing.Imaging;

namespace SADFM.Web.Shared
{
    public class Utilities
    {

        public class DataTableResult
        {
            public int draw { get; set; }
            public int recordsTotal { get; set; }
            public int recordsFiltered { get; set; }
            public List<Dictionary<string, object>> data { get; set; }
            public object extraData { get; set; }
        }

        public class DataTableRequest
        {
            public int draw { get; private set; }
            public int orderColumn { get; private set; }
            public bool orderAscending { get; private set; }
            public string search { get; private set; }
            public int start { get; private set; }
            public int length { get; private set; }
            public int OverrideCount { get; set; }
            public bool OverrideSearch { get; set; }
            public int OverrideFilteredCount { get; set; }


            internal static DataTableRequest Parse(System.Collections.Specialized.NameValueCollection form)
            {
                int ordercol;
                bool orderasc;
                if (form["order[0][column]"] == null)
                {
                    ordercol = -1;
                    orderasc = true;
                }
                else
                {
                    ordercol = int.Parse(form["order[0][column]"]);
                    orderasc = !(form["order[0][dir]"] == "desc");
                }
                return new DataTableRequest
                {
                    draw = form["draw"] != null ? int.Parse(form["draw"]) : 0,
                    orderColumn = ordercol,
                    orderAscending = orderasc,
                    search = form["search[value]"] != null ? form["search[value]"].ToLower() : "",
                    start = form["start"] != null ? int.Parse(form["start"]) : 0,
                    length = form["length"] != null ? int.Parse(form["length"]) : 10000,
                    OverrideCount = 0,
                    OverrideFilteredCount = 0,
                    OverrideSearch = false
                };
            }
        }


        public static string RenderRazorViewToString(Controller controller, string viewName, object model)
        {

            controller.ViewData.Model = model;
            using (var sw = new StringWriter())
            {
                var viewResult = ViewEngines.Engines.FindPartialView(controller.ControllerContext, viewName);
                var viewContext = new ViewContext(controller.ControllerContext, viewResult.View, controller.ViewData, controller.TempData, sw);
                viewResult.View.Render(viewContext, sw);
                viewResult.ViewEngine.ReleaseView(controller.ControllerContext, viewResult.View);
                return sw.GetStringBuilder().ToString();
            }
        }

        public static DataRow RowToRow(DataRow drOld, DataRow drNew)
        {

            foreach (DataColumn dc in drOld.Table.Columns)
            {
                drNew[dc.ColumnName] = drOld[dc.ColumnName];
            }

            return drNew;
        }

        public static string SaveDataGridViewToCSV(System.Data.DataTable dtDataTablesList)
        {



            StringBuilder sb = new StringBuilder();

            int iColCount = dtDataTablesList.Columns.Count;

            for (int i = 0; i < iColCount; i++)
            {

                sb.Append(string.Format("\"{0}\"", dtDataTablesList.Columns[i]));
                if (i < iColCount - 1)
                {
                    sb.Append(";");
                }
            }
            sb.Append(Environment.NewLine);


            foreach (System.Data.DataRow dr in dtDataTablesList.Rows)
            {
                for (int i = 0; i < iColCount; i++)
                {
                    if (!Convert.IsDBNull(dr[i]))
                    {
                        sb.Append(string.Format("\"{0}\"", dr[i].ToString()));
                    }
                    if (i < iColCount - 1)
                    {
                        sb.Append(";");
                    }
                }
                sb.Append(Environment.NewLine);
            }


            return sb.ToString();
        }

        public static Bitmap ChangeDPI(Bitmap bitmap, int dpi)
        {
            Bitmap result = new Bitmap(bitmap.Width, bitmap.Height);
            result.SetResolution(dpi, dpi);

            Graphics g = Graphics.FromImage(result);
            g.DrawImage(bitmap, new Point(bitmap.Width, bitmap.Height));

            return result;

        }

        public static string ImageToBase64(ref Image image)
        {
            try
            {
                MemoryStream ms = new MemoryStream();

                image.Save(ms, ImageFormat.Png);
                byte[] imageBytes = ms.ToArray();
                ms.Close();
                ms.Dispose();
                ms = null;
                return Convert.ToBase64String(imageBytes);
            }catch(Exception) {
                return string.Empty;
            }
        }


 

        public static Image Base64ToImage(string base64String)
        {

            byte[] imageBytes = Convert.FromBase64String(base64String);
            MemoryStream ms = new MemoryStream(imageBytes, 0,
              imageBytes.Length);
            ms.Write(imageBytes, 0, imageBytes.Length);
            Image image = Image.FromStream(ms, true);

            ms.Close();
            ms.Dispose();

            return image;
        }

        public static string Version { get; private set; }
        static Utilities()
        {
            Version = typeof(Utilities).Assembly.GetName().Version.ToString();
        }
        public static bool ConfirmSecurity(string security)
        {
            return security == DataAccess.Security;
        }

        internal static DataTableResult DataTableJson<T>(NameValueCollection request, List<T> list, Func<string, object, object> formatter, params Expression<Func<T, object>>[] col)
        {
            return DataTableJson<T>(DataTableRequest.Parse(request), list, formatter, col);
        }

        internal static DataTableResult DataTableJson<T>(DataTableRequest request, List<T> list, Func<string, object, object> formatter, params Expression<Func<T, object>>[] col)
        {


            string[] column = new string[col.Length];
            Func<T, object>[] func = new Func<T, object>[col.Length];

            for (int i = 0; i < col.Length; i++)
            {
                func[i] = col[i].Compile();
                column[i] = GetExpressionName(col[i].Body, i + 1);
            }

            int recordsTotal, recordsFiltered;
            if (!request.OverrideSearch)
            {
                recordsTotal = list.Count;

                // Apply filter
                if (!string.IsNullOrEmpty(request.search))
                    for (int i = list.Count - 1; i >= 0; i--)
                    {
                        bool match = false;
                        for (int j = 0; j < col.Length; j++)
                        {
                            var obj = func[j](list[i]);
                            if (obj != null)
                                if (obj.ToString().ToLower().Contains(request.search))
                                {
                                    match = true;
                                    break;
                                }
                        }
                        if (!match)
                            list.RemoveAt(i);
                    }
                recordsFiltered = list.Count;

                if (request.orderColumn != -1)
                {

                    //Order
                    if (request.orderAscending)
                        list = list.OrderBy(func[request.orderColumn]).ToList();
                    else
                        list = list.OrderByDescending(func[request.orderColumn]).ToList();

                }
                //Skip and take
                list = list.Skip(request.start).ToList();

                if (request.length > -1)
                    list = list.Take(request.length).ToList();

            }
            else
            {
                recordsTotal = request.OverrideCount;
                recordsFiltered = request.OverrideFilteredCount;
            }


            return new DataTableResult
            {
                recordsTotal = recordsTotal,
                recordsFiltered = recordsFiltered,
                draw = request.draw,
                data = list.Select(l =>
                {
                    Dictionary<string, object> rx = new Dictionary<string, object>();
                    for (int i = 0; i < col.Length; i++)
                    {
                        object tmp = func[i](l);
                        if (tmp is IEnumerable && !(tmp is string))
                            rx.Add(column[i], tmp);
                        else
                        {
                            if (formatter != null)
                                tmp = formatter(column[i], tmp);
                            if (tmp == null)
                                tmp = string.Empty;
                            if (tmp is DateTime)
                                rx.Add(column[i], ((DateTime)tmp).ToString("yyyy-MM-dd HH:mm"));
                            else
                                rx.Add(column[i], tmp.ToString());
                        }
                    }
                    return rx;
                }).ToList()
            };

        }


        private static string GetExpressionName(Expression expression, int columnNo)
        {
            if (expression is MemberExpression)
                return ((MemberExpression)expression).Member.Name;
            else if (expression is UnaryExpression)
                return GetExpressionName(((UnaryExpression)expression).Operand, columnNo);
            else return string.Concat("Column", columnNo);
        }

        public static void SendMail(string fromAddress, string fromName, List<string> emailAddresses, string emailSubject, string emailBody, List<string> attachments = null, MailPriority priority = MailPriority.Normal, List<string> ccAddresses = null, string bccAddresses = "", List<LinkedResource> linkedResources = null, Action onSuccess = null, Action<Exception> onError = null)
        {

            var ts = new Thread(() =>
            {

                MailMessage msg = new MailMessage();

                msg.From = new MailAddress(fromAddress, fromName);
                foreach (string email in emailAddresses)
                    msg.To.Add(email);
                if (ccAddresses != null)
                    foreach (string email in ccAddresses)
                        msg.CC.Add(email);
                if (!string.IsNullOrEmpty(bccAddresses))
                    msg.Bcc.Add(bccAddresses);

                msg.Priority = priority;
                msg.Subject = emailSubject;
                msg.Body = emailBody;
                msg.IsBodyHtml = true;

                if (linkedResources != null)
                {
                    AlternateView htmlView = AlternateView.CreateAlternateViewFromString(emailBody, null, "text/html");
                    linkedResources.ForEach(lr => htmlView.LinkedResources.Add(lr));
                    msg.AlternateViews.Add(htmlView);
                }

                if (attachments != null)
                    foreach (string attachment in attachments)
                        msg.Attachments.Add(new Attachment(attachment));

                System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();

                client.Host = Constants.EmailHost;
                //client.Port = MailSettings.Port;
                //client.EnableSsl = MailSettings.EnableSsl;

                // Credentials
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential(Constants.EmailUsername, Constants.EmailPassword);

                client.DeliveryMethod = SmtpDeliveryMethod.Network;

                client.SendCompleted += (sender, e) =>
                {

                    if (e.Error == null)
                    {

                        SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "Email successfully sent to {0}", string.Join(",", emailAddresses));

                        if (onSuccess != null)
                        {
                            onSuccess();

                        }

                        return;
                    }
                    else
                    {

                        SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "Email failed. [{0}]", string.Join(",", emailAddresses));

                        if (onError != null)
                        {

                            onError(e.Error);
                        }

                    }


                    client.Dispose();
                    msg.Dispose();
                };

                // Use SendAsync to send the message asynchronously
                try
                {
                    client.SendAsync(msg, null);
                }
                catch (Exception ex)
                {
                    SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "Email failed. [{0}]", string.Join(",", emailAddresses));

                    if (onError != null)
                        onError(ex);
                }
            });

            ts.Start();

        }



        internal static void LogEvent(EventLogEntryType type, string format, params object[] args)
        {
            System.Diagnostics.EventLog.WriteEntry("SADFM.Web", string.Format(format, args), type);
        }
        internal static void LogError(string format, params object[] args)
        {
            LogEvent(EventLogEntryType.Error, format, args);
        }
        internal static void LogWarning(string format, params object[] args)
        {
            LogEvent(EventLogEntryType.Warning, format, args);
        }
        internal static void LogInfo(string format, params object[] args)
        {
            LogEvent(EventLogEntryType.Information, format, args);
        }
    }
}