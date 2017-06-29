using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;
using RazorEngine.Templating;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Engines
{
    public class PDFTemplatingEngine 
    {
        #region Public Methods

        public string Generate(string path, object model)
        {
            string template = File.ReadAllText(path);

            string result = RazorEngine.Engine.Razor.RunCompile(template, Guid.NewGuid().ToString(), null, model);

            result = result.Replace("<br>", "<br />");

            return GenerateFromHtml(result);
        }

        public string GenerateFromHtml(string html)
        {

            string tempPath = Path.GetTempFileName();

            var stream = new FileStream(tempPath, FileMode.Create);

            // create an iTextSharp Document which is an abstraction of a PDF but **NOT** a PDF  
            var document = new Document();
            document.SetPageSize(iTextSharp.text.PageSize.A4.Rotate());

            // create a writer that's bound to our PDF abstraction and our stream  
            var writer = PdfWriter.GetInstance(document, stream);

            // open the document for writing  
            document.Open();

            // read html data to StringReader  
            var stringReader = new StringReader(html);


            var xmlWorker = XMLWorkerHelper.GetInstance();

            xmlWorker.ParseXHtml(writer, document, stringReader);

            // close document  
            document.Close();
            stream.Close();

            return tempPath;
        }

        #endregion

    }
}
