using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;
using RazorEngine.Templating;
using SADFM.Infrastructure.Factories;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Application.Factories
{
    public class PDFFactory : IPDFFactory
    {
        public string Create(string templateName, object obj)
        {
            string templatePath = string.Format("{0}\\..\\Resources\\PDFTemplates\\{1}.cshtml", AssemblyDirectory, templateName);

            string template = File.ReadAllText(templatePath);

            string result = RazorEngine.Engine.Razor.RunCompile(template, templateName + Guid.NewGuid(), null, obj);

            string tempPath = Path.GetTempFileName();

            using (var stream = new MemoryStream())
            {
                // create an iTextSharp Document which is an abstraction of a PDF but **NOT** a PDF  
                using (var document = new Document())
                {
                    // create a writer that's bound to our PDF abstraction and our stream  
                    using (var writer = PdfWriter.GetInstance(document, stream))
                    {
                        // open the document for writing  
                        document.Open();

                        // read html data to StringReader  
                        using (var html = new StringReader(result))
                        {
                            var xmlWorker = XMLWorkerHelper.GetInstance();

                            xmlWorker.ParseXHtml(writer, document, html);
                        }

                        // close document  
                        document.Close();
                    }
                }


                File.WriteAllBytes(tempPath, stream.ToArray());
            }

            return tempPath;

        }

        public static string AssemblyDirectory
        {
            get
            {
                string codeBase = Assembly.GetExecutingAssembly().CodeBase;
                UriBuilder uri = new UriBuilder(codeBase);
                string path = Uri.UnescapeDataString(uri.Path);
                return Path.GetDirectoryName(path);
            }
        }
    }
}
