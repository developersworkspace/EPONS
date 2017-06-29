using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DotNet.Highcharts.Options;
using DotNet.Highcharts.Attributes;
using DotNet.Highcharts.Helpers;
using System.Data;


namespace SADFM.HighCharts_Test
{
    class Program
    {
        static void Main(string[] args)
        {
            DotNet.Highcharts.Highcharts chart = new DotNet.Highcharts.Highcharts("chart")
        .SetXAxis(new XAxis
        {
            Categories = new[] { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" }
        })
        .SetSeries(new Series
        {
            Data = new Data(new object[] { 29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4 })
        });

            string text = chart.ToHtmlString();
            System.IO.File.AppendAllText(@"C:\Users\Ben\Desktop\chart.html",text);

        }
    }
}
