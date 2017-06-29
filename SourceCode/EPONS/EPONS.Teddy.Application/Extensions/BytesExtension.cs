using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Extensions
{
    public static class BytesExtension
    {
        public static Bitmap ToBitmap(this byte[] byteArray)
        {

            if (byteArray == null)
                return null;

            using (MemoryStream ms = new MemoryStream(byteArray))
            {
                Bitmap img = (Bitmap)Image.FromStream(ms);
                return img;
            }

        }

        public static string ToBase64Image(this byte[] bytes)
        {
            string path = string.Format("C:\\Temp\\EPONS\\{0}", Guid.NewGuid());

            MemoryStream ms = new MemoryStream(bytes);
            Image i = Image.FromStream(ms);
            i.Save(path, ImageFormat.Png);

            i.Dispose();
            ms.Dispose();

            return path;

        }
    }
}
