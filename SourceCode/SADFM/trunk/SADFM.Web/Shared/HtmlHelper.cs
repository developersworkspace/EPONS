using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Xml.Linq;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;
using iTextSharp.tool.xml;
using iTextSharp.tool.xml.html;
using iTextSharp.tool.xml.pipeline.html;
using iTextSharp.tool.xml.pipeline.css;
using iTextSharp.tool.xml.pipeline.end;
using System.Text;
using iTextSharp.tool.xml.css;
using iTextSharp.tool.xml.parser;
using iTextSharp.text.html.simpleparser;



namespace SADFM.Web.Shared
{
    public static class HtmlHelper
    {

        public static MvcHtmlString DropdownBox<T>(List<T> list, string id, Func<T, string> value, Func<T, string> text, string @class = "form-control m-b", Func<T, string> grouping = null, string selected = null, string name = null, string dataPlaceholder = null, List<Func<T, KeyValuePair<string, string>>> optionParameters = null, Func<Data.Models.ListItem, object> orderChildrenBy = null, Func<T, string> subgroupText = null, bool multiple = false)
        {

            Func<T, Func<T, string>, XElement> AddElement = (listitem, textfunc) =>
            {
                XElement result = new XElement("option", new XAttribute("value", value(listitem)), textfunc(listitem));
                string val = value((T)(object)listitem);
                if (selected != null)
                    if (selected == val)
                        result.Add(new XAttribute("selected", "selected"));
                if (optionParameters != null)
                    foreach (var parm in optionParameters)
                    {
                        var kvp = parm(listitem);
                        result.Add(new XAttribute(kvp.Key, kvp.Value));
                    }
                return result;
            };

            var select = new XElement("select",
                        new XAttribute("id", id),
                        new XAttribute("class", @class));
            if (!string.IsNullOrWhiteSpace(name))
                select.Add(new XAttribute("name", name));
            else
                select.Add(new XAttribute("name", id));

            if (!string.IsNullOrWhiteSpace(dataPlaceholder))
                select.Add(new XAttribute("data-placeholder", dataPlaceholder));

            if (multiple)
                select.Add(new XAttribute("multiple", "true"));

            if (!string.IsNullOrWhiteSpace(dataPlaceholder))
                select.Add(new XElement("option"));

            if (grouping == null)
            {
                select.Add(list.Select(l => AddElement(l, text)));
                return new MvcHtmlString(select.ToString());
            }

            if (typeof(T) != typeof(Data.Models.ListItem))
                return new MvcHtmlString(string.Format("Invalid dropdown type: {0}", typeof(T).FullName));

            if (subgroupText == null)
                subgroupText = text;

            select.Add(list.Select(l =>
                    {
                        var tmp = new XElement("optgroup", new XAttribute("label", grouping(l)));
                        var grp = l as Data.Models.ListItem;


                        if (orderChildrenBy == null)
                            orderChildrenBy = c => text((T)(object)c);

                        grp.Children.OrderBy(orderChildrenBy).ToList()
                            .ForEach(c =>
                            {
                                /*string val = value((T)(object)c);
                                XElement option = new XElement("option", new XAttribute("value", val), text((T)(object)c));
                                if (selected != null)
                                    if (selected == val)
                                        option.Add(new XAttribute("selected", "selected"));*/
                                tmp.Add(AddElement((T)(object)c, subgroupText));
                            });
                        return tmp;
                    }));
            return new MvcHtmlString(select.ToString(SaveOptions.DisableFormatting));
        }


        public class CustomImageTagProcessor : iTextSharp.tool.xml.html.Image
        {
            public override IList<IElement> End(IWorkerContext ctx, Tag tag, IList<IElement> currentContent)
            {
                IDictionary<string, string> attributes = tag.Attributes;
                string src;
                if (!attributes.TryGetValue(HTML.Attribute.SRC, out src))
                    return new List<IElement>(1);

                if (string.IsNullOrEmpty(src))
                    return new List<IElement>(1);

                if (src.StartsWith("data:image/", StringComparison.InvariantCultureIgnoreCase))
                {
                    // data:[<MIME-type>][;charset=<encoding>][;base64],<data>
                    var base64Data = src.Substring(src.IndexOf(",") + 1);
                    var imagedata = Convert.FromBase64String(base64Data);
                    string tmpImage = Path.GetTempFileName();
                    File.Move(tmpImage, tmpImage += ".png");
                    File.WriteAllBytes(tmpImage, imagedata);
                    var image = iTextSharp.text.Image.GetInstance(tmpImage);// (imagedata);
                    System.Diagnostics.Debug.WriteLine(tmpImage);

                    var list = new List<IElement>();
                    var htmlPipelineContext = GetHtmlPipelineContext(ctx);
                    list.Add(GetCssAppliers().Apply(new Chunk((iTextSharp.text.Image)GetCssAppliers().Apply(image, tag, htmlPipelineContext), 0, 0, true), tag, htmlPipelineContext));
                    //list.Add(image);
                    return list;
                }
                else
                {
                    return base.End(ctx, tag, currentContent);
                }
            }
        }



        public static byte[] ConvertHTMLToPDF(string HTMLCode)
        {
            string tempPath = Path.GetTempFileName();
            System.IO.StringWriter stringWrite = new StringWriter();
            System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);

            StringReader reader = new StringReader(HTMLCode);


            Document doc = new Document(PageSize.A4);
            HTMLWorker parser = new HTMLWorker(doc);
            PdfWriter.GetInstance(doc, new FileStream(tempPath,

            FileMode.Create));
            doc.Open();

          
            var interfaceProps = new Dictionary<string, Object>();
            

            foreach (IElement element in HTMLWorker.ParseToList(
            new StringReader(HTMLCode), null))
            {
                doc.Add(element);
            }
            doc.Close();

            return System.IO.File.ReadAllBytes(tempPath);

        }



        public static byte[] HTMLToPdf(string htmlContent)
        {

            System.IO.MemoryStream ms = new System.IO.MemoryStream();
            StringWriter sw = new StringWriter(new StringBuilder(htmlContent));
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, ms);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();

            byte[] Result = ms.ToArray();

            return Result;
    

            HtmlAgilityPack.HtmlDocument hd = new HtmlAgilityPack.HtmlDocument();

            hd.OptionWriteEmptyNodes = true; //autoclose hr, br etc
            hd.OptionOutputAsXml = true; //MJW extension to preserve case of server tags
            hd.LoadHtml(htmlContent);

#if(DEBUG)
            string tmpFile = Path.GetTempFileName();
            System.IO.File.WriteAllText(tmpFile, hd.DocumentNode.OuterHtml);
            System.Diagnostics.Debug.WriteLine(tmpFile);
#endif




            using (System.IO.MemoryStream stream = new System.IO.MemoryStream())
            using (TextReader reader = new StringReader(hd.DocumentNode.OuterHtml))
            using (Document document = new Document(PageSize.A4, 30, 30, 30, 30))
            using (PdfWriter writer = PdfWriter.GetInstance(document, stream))
            using (var srHtml = new StringReader(hd.DocumentNode.OuterHtml))
            {

                CssFilesImpl cssFiles = new CssFilesImpl();
                cssFiles.Add(XMLWorkerHelper.GetInstance().GetDefaultCSS());
                var cssResolver = new StyleAttrCSSResolver(cssFiles);
                cssResolver.AddCss(@"code { padding: 2px 4px; }", "utf-8", true);
                var tagProcessors = (DefaultTagProcessorFactory)Tags.GetHtmlTagProcessorFactory();
                tagProcessors.RemoveProcessor(HTML.Tag.IMG); // remove the default processor
                tagProcessors.AddProcessor(HTML.Tag.IMG, new CustomImageTagProcessor()); // use our new processor
                var charset = Encoding.UTF8;
                var hpc = new HtmlPipelineContext(new CssAppliersImpl(new XMLWorkerFontProvider()));
                hpc.SetAcceptUnknown(true).AutoBookmark(true).SetTagFactory(tagProcessors); // inject the tagProcessors
                var htmlPipeline = new HtmlPipeline(hpc, new PdfWriterPipeline(document, writer));
                var pipeline = new CssResolverPipeline(cssResolver, htmlPipeline);
                var worker = new XMLWorker(pipeline, true);
                var xmlParser = new XMLParser(true, worker, charset);

              
              
                document.Open();
                xmlParser.Parse(reader);
                document.Close();
 
                return stream.ToArray();
            }


        }



    }
}