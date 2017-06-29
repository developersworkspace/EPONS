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
    }
}
