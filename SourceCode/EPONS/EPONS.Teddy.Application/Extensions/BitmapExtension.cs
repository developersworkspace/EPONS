using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Extensions
{
    public static class BitmapExtension
    {
        #region Public Methods
        public static string ToBase64(this Bitmap bmp)
        {

            if (bmp == null)
                return null;

            MemoryStream ms = new System.IO.MemoryStream();
            bmp.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
            byte[] byteImage = ms.ToArray();
            var SigBase64 = Convert.ToBase64String(byteImage);

            return SigBase64;

        }

       

        public static byte[] ToBytes(this Bitmap bmp)
        {

            if (bmp == null)
                return null;

            byte[] byteArray = new byte[0];
            using (MemoryStream stream = new MemoryStream())
            {
                bmp.Save(stream, System.Drawing.Imaging.ImageFormat.Png);
                stream.Close();

                byteArray = stream.ToArray();
            }
            return byteArray;
        }


        #endregion
    }
}
