using SADFM.Infrastructure.Factories;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace SADFM.Application.Factories
{
    public class ImageFactory : IImageFactory
    {
        public string Save(string datUri)
        {
            var tempPath = Path.GetTempFileName();

            var base64Data = Regex.Match(datUri, @"data:image/(?<type>.+?),(?<data>.+)").Groups["data"].Value;
            var binData = Convert.FromBase64String(base64Data);

            File.WriteAllBytes(tempPath, binData);

            return tempPath;
        }
    }
}
