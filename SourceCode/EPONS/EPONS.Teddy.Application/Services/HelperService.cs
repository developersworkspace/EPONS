using EPONS.Teddy.Application.Models;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;

namespace EPONS.Teddy.Application.Services
{
    class HelperService
    {
        #region Public Methods


        public LineChart GetVitalSignsChart(IList<Entities.Visit> visits)
        {
            var timestamps = visits.Select(x => new DateTime(x.Timestamp.Year, x.Timestamp.Month, x.Timestamp.Day, x.Timestamp.Hour, x.Timestamp.Minute, x.Timestamp.Second)).Distinct().ToList();
            var dataLabels = timestamps.Select(x => x.ToString("yyyy-MM-dd HH:mm")).ToList();
            var dataSets = new List<Dataset>();

            //Heart Rate
            dataSets.Add(new Dataset()
            {
                Color = Color.Red,
                Data = timestamps.Select(x => visits.Where(y => y.HeartRate.HasValue).Last(y => y.Timestamp.ToString("yyyy-MM-dd HH:mm") == x.ToString("yyyy-MM-dd HH:mm")).HeartRate.Value).ToArray(),
                Label = "Heart Rate"
            });

            //Temperature
            dataSets.Add(new Dataset()
            {
                Color = Color.Black,
                Data = timestamps.Select(x => visits.Where(y => y.Temperature.HasValue).Last(y => y.Timestamp.ToString("yyyy-MM-dd HH:mm") == x.ToString("yyyy-MM-dd HH:mm")).Temperature.Value).ToArray(),
                Label = "Temperature"
            });

            //Blood Pressure Diastolic
            dataSets.Add(new Dataset()
            {
                Color = Color.Blue,
                Data = timestamps.Select(x => visits.Where(y => y.BloodPressureDiastolic.HasValue).Last(y => y.Timestamp.ToString("yyyy-MM-dd HH:mm") == x.ToString("yyyy-MM-dd HH:mm")).BloodPressureDiastolic.Value).ToArray(),
                Label = "Blood Pressure Diastolic"
            });

            //Blood Pressure Systolic
            dataSets.Add(new Dataset()
            {
                Color = Color.Brown,
                Data = timestamps.Select(x => visits.Where(y => y.BloodPressureSystolic.HasValue).Last(y => y.Timestamp.ToString("yyyy-MM-dd HH:mm") == x.ToString("yyyy-MM-dd HH:mm")).BloodPressureSystolic.Value).ToArray(),
                Label = "Blood Pressure Systolic"
            });

            //Glucose
            dataSets.Add(new Dataset()
            {
                Color = Color.Green,
                Data = timestamps.Select(x => visits.Where(y => y.Glucose.HasValue).Last(y => y.Timestamp.ToString("yyyy-MM-dd HH:mm") == x.ToString("yyyy-MM-dd HH:mm")).Glucose.Value).ToArray(),
                Label = "Glucose"
            });

            //Pulse Oximetry
            dataSets.Add(new Dataset()
            {
                Color = Color.Orange,
                Data = timestamps.Select(x => visits.Where(y => y.PulseOximetry.HasValue).Last(y => y.Timestamp.ToString("yyyy-MM-dd HH:mm") == x.ToString("yyyy-MM-dd HH:mm")).PulseOximetry.Value).ToArray(),
                Label = "Pulse Oximetry"
            });

            //Respiratory Rate
            dataSets.Add(new Dataset()
            {
                Color = Color.Purple,
                Data = timestamps.Select(x => visits.Where(y => y.RespiratoryRate.HasValue).Last(y => y.Timestamp.ToString("yyyy-MM-dd HH:mm") == x.ToString("yyyy-MM-dd HH:mm")).RespiratoryRate.Value).ToArray(),
                Label = "Respiratory Rate"
            });


            return new LineChart()
            {
                DataLabels = visits.Select(x => x.Timestamp.ToString("yyyy-MM-dd HH:mm")).Distinct().ToList(),
                DataSets = dataSets,
                Title = "Vital Signs"
            };
        }

        public RadarChart ToRadarChart(List<EntityViews.CompletedMeasurementTool> measurementTools)
        {
            measurementTools.OrderBy(x => x.ScoreItems);

            Color[] colors = new Color[]
            {
                Color.Green,
                Color.Blue,
                Color.Red,
            };

            return new RadarChart()
            {
                DataLabels = measurementTools.First().ScoreItems.Select(x => x.Key).ToList(),

                DataSets = measurementTools.Select((x, index) => new Dataset()
                {
                    Color = colors[index],
                    Data = x.ScoreItems.Select(y => (double)y.Value).ToArray(),
                    Label = GetChartLabel(x)

                }).ToList(),
                Title = measurementTools.First().Name
            };

        }

        public LineChart ToLineChart(List<EntityViews.CompletedMeasurementTool> measurementTools)
        {
            measurementTools = measurementTools.OrderBy(x => x.StartDate).ToList();

            Color[] colors = new Color[]
            {
                Color.Red,
                Color.Orange,
                Color.Yellow,
                Color.Green,
                Color.Blue,
                Color.Purple,
                Color.OrangeRed,
                Color.LightYellow,
                Color.LightGreen,
                Color.LightSteelBlue,
                Color.MediumPurple,
                Color.Pink,
                Color.Red,
                Color.Orange,
                Color.Yellow,
                Color.Green,
                Color.Blue,
                Color.Purple,
                Color.OrangeRed,
                Color.LightYellow,
                Color.LightGreen,
                Color.LightSteelBlue,
                Color.MediumPurple,
                Color.Pink,
                Color.Red,
                Color.Orange,
                Color.Yellow,
                Color.Green,
                Color.Blue,
                Color.Purple,
                Color.OrangeRed,
                Color.LightYellow,
                Color.LightGreen,
                Color.LightSteelBlue,
                Color.MediumPurple,
                Color.Pink,
                Color.Red,
                Color.Orange,
                Color.Yellow,
                Color.Green,
                Color.Blue,
                Color.Purple,
                Color.OrangeRed,
                Color.LightYellow,
                Color.LightGreen,
                Color.LightSteelBlue,
                Color.MediumPurple,
                Color.Pink,
                Color.Red,
                Color.Orange,
                Color.Yellow,
                Color.Green,
                Color.Blue,
                Color.Purple,
                Color.OrangeRed,
                Color.LightYellow,
                Color.LightGreen,
                Color.LightSteelBlue,
                Color.MediumPurple,
                Color.Pink,
                Color.Red,
                Color.Orange,
                Color.Yellow,
                Color.Green,
                Color.Blue,
                Color.Purple,
                Color.OrangeRed,
                Color.LightYellow,
                Color.LightGreen,
                Color.LightSteelBlue,
                Color.MediumPurple,
                Color.Pink,
                Color.Red,
                Color.Orange,
                Color.Yellow,
                Color.Green,
                Color.Blue,
                Color.Purple,
                Color.OrangeRed,
                Color.LightYellow,
                Color.LightGreen,
                Color.LightSteelBlue,
                Color.MediumPurple,
                Color.Pink,
                Color.Red,
                Color.Orange,
                Color.Yellow,
                Color.Green,
                Color.Blue,
                Color.Purple,
                Color.OrangeRed,
                Color.LightYellow,
                Color.LightGreen,
                Color.LightSteelBlue,
                Color.MediumPurple,
                Color.Pink,
                Color.Red,
                Color.Orange,
                Color.Yellow,
                Color.Green,
                Color.Blue,
                Color.Purple,
                Color.OrangeRed,
                Color.LightYellow,
                Color.LightGreen,
                Color.LightSteelBlue,
                Color.MediumPurple,
                Color.Pink,
            };

            int max = measurementTools.SelectMany(x => x.ScoreItems).Max(x => x.Value);
            return new LineChart()
            {
                DataLabels = measurementTools.Select(x => x.StartDate.ToString("yyyy-MM-dd")).ToList(),
                DataSets = measurementTools.SelectMany(x => x.ScoreItems.OrderBy(y => y.Key)).GroupBy(x => new
                {
                    Name = x.Key
                }).Select((x, index) => new Dataset()
                {
                    Color = colors[index],
                    Data = x.Select(y => (double)y.Value).ToArray(),
                    Label = x.Key.Name
                }).ToList()

            };

        }

        public string GetChartLabel(EntityViews.CompletedMeasurementTool x)
        {
            if (x.Name == "Beta")
                return string.Format("{0} ({1} hours per 24 hours)", x.StartDate.ToString("dd MMM yyyy"), CalulateBOCForBeta(x.ScoreItems.OrderBy(y => y.Key).Select(y => (double)y.Value).ToArray()));

            return x.StartDate.ToString("dd MMM yyyy");
        }

        public decimal CalulateBOCForBeta(double[] values)
        {
            double sum = values.Sum();

            double value = (126 - sum) * 3.38 / 60;

            return (decimal)(Math.Floor(value * 10) / 10);
        }

        #endregion
    }
}
