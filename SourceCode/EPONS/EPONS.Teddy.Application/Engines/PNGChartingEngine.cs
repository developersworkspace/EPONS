using EPONS.Teddy.Application.Enums;
using EPONS.Teddy.Application.Models;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Engines
{
    class PNGChartingEngine
    {
        #region Fields

        private readonly Color _pathLineColor = Color.LightGray;

        #endregion

        #region Public Methods

        public Bitmap RadarChart(int width, int height, RadarChart radarChart, double maxValueRange = -1)
        {


            int numberOfPoints = radarChart.DataLabels.Count;
            maxValueRange = maxValueRange == -1 ? radarChart.DataSets.SelectMany(x => x.Data).Max() + 1 : maxValueRange;
            int labelWidth = 150;
            double chartRadius = ((double)width - ((double)labelWidth * (double)2)) / (double)2;


            Color baseColor = Color.Gray;
            Color labelColor = Color.Black;
            Color backgroundColor = Color.White;
            Font labelFont = new Font("arial", 12);

            int pointSize = 8;
            double angle = (double)360 / (double)(numberOfPoints);
            double distancePerValue = (double)chartRadius / (double)maxValueRange;
            Point centerOfChart = FindCenterOfChart(width, height);

            Bitmap bitmap = new Bitmap(width, height);
            Graphics graphics = Graphics.FromImage(bitmap);
            graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;



            graphics.FillRectangle(new SolidBrush(backgroundColor), 0, 0, width, height);

            //Adds Radar Lines and Labels
            for (int point = 0; point < numberOfPoints; point++)
            {
                Point destinationPoint = GetDestinationPoint(centerOfChart.X, centerOfChart.Y, (int)chartRadius, angle * (double)point);
                graphics.DrawLine(new Pen(baseColor, 3), centerOfChart.X, centerOfChart.Y, destinationPoint.X, destinationPoint.Y);

                Location location = LocationOfPoint(centerOfChart, destinationPoint);
                SizeF sizeOfLabel = SizeOfString(radarChart.DataLabels[point], labelWidth, labelFont, graphics);

                Point labelPoint = new Point(destinationPoint.X - (int)sizeOfLabel.Width, destinationPoint.Y - (int)sizeOfLabel.Height);

                switch (location)
                {
                    case Location.BottomRight:
                        labelPoint = new Point(destinationPoint.X, destinationPoint.Y);
                        break;
                    case Location.CenterRight:
                        labelPoint = new Point(destinationPoint.X, destinationPoint.Y);
                        break;
                    case Location.BottomCenter:
                        labelPoint = new Point(destinationPoint.X - ((int)sizeOfLabel.Width / 2), destinationPoint.Y);
                        break;
                    case Location.TopCenter:
                        labelPoint = new Point(destinationPoint.X - ((int)sizeOfLabel.Width / 2), destinationPoint.Y);
                        break;
                    case Location.BottomLeft:
                        labelPoint = new Point(destinationPoint.X - (int)sizeOfLabel.Width, destinationPoint.Y);
                        break;
                    case Location.TopLeft:
                        labelPoint = new Point(destinationPoint.X - (int)sizeOfLabel.Width, destinationPoint.Y - (int)sizeOfLabel.Height);
                        break;
                    case Location.TopRight:
                        labelPoint = new Point(destinationPoint.X, destinationPoint.Y - (int)sizeOfLabel.Height);
                        break;
                }
                graphics.DrawString(radarChart.DataLabels[point], labelFont, new SolidBrush(labelColor), new RectangleF(labelPoint.X, labelPoint.Y, sizeOfLabel.Width, sizeOfLabel.Height));
            }

            //Adds rings
            for (int i = 0; i < maxValueRange; i++)
            {
                double[] data = new double[numberOfPoints + 1].Select(x => (double)i + 1).ToArray();
                DrawDataSet(graphics, new Dataset()
                {
                    Color = Color.Transparent,
                    Data = data

                }, numberOfPoints, pointSize, distancePerValue, angle, centerOfChart);
            }

            //Adds numberic labels to axis
            for (int i = 1; i < maxValueRange; i++)
            {
                Point destinationPoint = GetDestinationPoint(centerOfChart.X, centerOfChart.Y, (int)(distancePerValue * i), angle * 0);
                graphics.DrawString(i.ToString(), labelFont, new SolidBrush(labelColor), destinationPoint);
            }

            //Add data
            foreach (var dataSet in radarChart.DataSets)
            {
                DrawDataSet(graphics, dataSet, numberOfPoints, pointSize, distancePerValue, angle, centerOfChart);
            }
            
            var chart = TrimBackground(bitmap);
            chart.RotateFlip(RotateFlipType.Rotate270FlipNone);
            var legend = DrawLegend(radarChart.DataSets);

            return JoinBitmap(legend, chart);
        }


        public Bitmap LineChart(int width, int height, LineChart lineChart, double maxValueRange = -1)
        {

            maxValueRange = maxValueRange == -1 ? lineChart.DataSets.Where(x => x.Data.Count() > 0).Count() == 0 ? 1 : lineChart.DataSets.Where(x => x.Data.Count() > 0).SelectMany(x => x.Data).Max() + 1 : maxValueRange;

            Color baseColor = Color.Gray;
            Color labelColor = Color.Black;
            Color backgroundColor = Color.White;
            Font labelFont = new Font("arial", 12);
            int xPadding = 50;
            int yPadding = 50;
            int pointSize = 8;


            Bitmap bitmap = new Bitmap(width, height);
            Graphics graphics = Graphics.FromImage(bitmap);
            graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;

            yPadding = lineChart.DataLabels.Count == 0 ? 100 : lineChart.DataLabels.Max(x => (int)SizeOfString(x, 300, labelFont, graphics).Width) + 20;
            double heightPerValue = (double)(height - (yPadding * 2)) / (double)maxValueRange;
            double widthPerValue = (double)(width - (xPadding * 2)) / (double)(lineChart.DataLabels.Count == 1 ? 1 : lineChart.DataLabels.Count - 1);

            //Fill background
            graphics.FillRectangle(new SolidBrush(backgroundColor), 0, 0, width, height);

            // Draw Y Axis
            graphics.DrawLine(new Pen(baseColor), xPadding, yPadding, xPadding, height - yPadding);

            // Draw X Axis
            graphics.DrawLine(new Pen(baseColor), xPadding, height - yPadding, width - xPadding, height - yPadding);


            //Draw X Labels
            for (int i = 0; i < lineChart.DataLabels.Count; i++)
            {
                GraphicsState state = graphics.Save();
                graphics.ResetTransform();
                graphics.RotateTransform(90);
                graphics.TranslateTransform((int)((double)xPadding + 11 + ((double)widthPerValue * (double)i)), height - yPadding, MatrixOrder.Append);

                graphics.DrawString(lineChart.DataLabels[i], labelFont, new SolidBrush(labelColor), new RectangleF(0, 0, 300, 400));

                graphics.Restore(state);
            }

            //Draw Y Labels
            for (int i = 1; i < maxValueRange; i++)
            {
                graphics.DrawString(i.ToString(), labelFont, new SolidBrush(labelColor), xPadding - 25, (int)(((double)height - (double)yPadding - 11) - ((double)i * (double)heightPerValue)));
            }


            for (int i = 0; i < lineChart.DataSets.Count; i++)
            {
                var dataSet = lineChart.DataSets[i];
                Point? previousPoint = (Point?)null;

                for (int j = 0; j < dataSet.Data.Count(); j++)
                {
                    if (previousPoint.HasValue)
                    {
                        Point nextPoint = new Point((int)((double)widthPerValue * (double)j), (int)((double)heightPerValue * (double)dataSet.Data[j]));

                        graphics.DrawLine(new Pen(dataSet.Color), previousPoint.Value.X + xPadding, height - (yPadding * 2) - previousPoint.Value.Y + yPadding, nextPoint.X + xPadding, height - (yPadding * 2) - nextPoint.Y + yPadding);

                    }

                    previousPoint = new Point((int)((double)widthPerValue * (double)j), (int)((double)heightPerValue * (double)dataSet.Data[j]));

                    graphics.FillEllipse(new SolidBrush(dataSet.Color), (previousPoint.Value.X + xPadding) - (pointSize / 2), (height - (yPadding * 2) - previousPoint.Value.Y + yPadding) - (pointSize / 2), pointSize, pointSize);

                }
            }

            var chart = TrimBackground(bitmap);
            var legend = DrawLegend(lineChart.DataSets);

            return JoinBitmap(legend, chart);

        }

        #endregion

        #region Private Methods

        private Bitmap TrimBackground(Bitmap bmp)
        {
            int w = bmp.Width;
            int h = bmp.Height;

            Func<int, bool> allWhiteRow = row =>
            {
                for (int i = 0; i < w; ++i)
                    if (bmp.GetPixel(i, row).R != 255)
                        return false;
                return true;
            };

            Func<int, bool> allWhiteColumn = col =>
            {
                for (int i = 0; i < h; ++i)
                    if (bmp.GetPixel(col, i).R != 255)
                        return false;
                return true;
            };

            int topmost = 0;
            for (int row = 0; row < h; ++row)
            {
                if (allWhiteRow(row))
                    topmost = row;
                else break;
            }

            int bottommost = 0;
            for (int row = h - 1; row >= 0; --row)
            {
                if (allWhiteRow(row))
                    bottommost = row;
                else break;
            }

            int leftmost = 0, rightmost = 0;
            for (int col = 0; col < w; ++col)
            {
                if (allWhiteColumn(col))
                    leftmost = col;
                else
                    break;
            }

            for (int col = w - 1; col >= 0; --col)
            {
                if (allWhiteColumn(col))
                    rightmost = col;
                else
                    break;
            }

            if (rightmost == 0) rightmost = w; // As reached left
            if (bottommost == 0) bottommost = h; // As reached top.

            int croppedWidth = rightmost - leftmost;
            int croppedHeight = bottommost - topmost;

            if (croppedWidth == 0) // No border on left or right
            {
                leftmost = 0;
                croppedWidth = w;
            }

            if (croppedHeight == 0) // No border on top or bottom
            {
                topmost = 0;
                croppedHeight = h;
            }

            try
            {
                var target = new Bitmap(croppedWidth, croppedHeight);
                using (Graphics g = Graphics.FromImage(target))
                {
                    g.DrawImage(bmp,
                      new RectangleF(0, 0, croppedWidth, croppedHeight),
                      new RectangleF(leftmost, topmost, croppedWidth, croppedHeight),
                      GraphicsUnit.Pixel);
                }
                return target;
            }
            catch (Exception ex)
            {
                throw new Exception(
                  string.Format("Values are topmost={0} btm={1} left={2} right={3} croppedWidth={4} croppedHeight={5}", topmost, bottommost, leftmost, rightmost, croppedWidth, croppedHeight),
                  ex);
            }
        }
        private Bitmap JoinBitmap(Bitmap a, Bitmap b)
        {

            Color baseColor = Color.Gray;
            Color labelColor = Color.Black;
            Color backgroundColor = Color.White;
            Font labelFont = new Font("arial", 12);

            int width = Math.Max(a.Width, b.Width);
            int height = a.Height + b.Height;

            Bitmap result = new Bitmap(width, height);
            Graphics graphics = Graphics.FromImage(result);

            graphics.FillRectangle(new SolidBrush(backgroundColor), 0, 0, result.Width, result.Height);

            graphics.DrawImage(a, 0, 0);
            graphics.DrawImage(b, 0, a.Height);

            return result;

        }

        private Bitmap DrawLegend(List<Dataset> dataSets)
        {
            Bitmap bmp = new Bitmap(800, 800);
            Graphics graphics = Graphics.FromImage(bmp);

            Color baseColor = Color.Gray;
            Color labelColor = Color.Black;
            Color backgroundColor = Color.White;
            Font labelFont = new Font("arial", 12);

            graphics.FillRectangle(new SolidBrush(backgroundColor), 0, 0, bmp.Width, bmp.Height);

            for (int i = 0; i < dataSets.Count; i++)
            {
                var dataSet = dataSets[i];

                graphics.FillRectangle(new SolidBrush(dataSet.Color), 10, 25 * i, 17, 17);
                graphics.DrawString(dataSet.Label, labelFont, new SolidBrush(labelColor), 30, 25 * i);
            }

            return TrimBackground(bmp);
        }

        private void DrawDataSet(Graphics graphics, Dataset dataSet, int numberOfPoints, int pointSize, double distancePerValue, double angle, Point centerOfChart)
        {
            Point? startingPoint = (Point?)null;
            Point? previousPoint = (Point?)null;
            List<Point> points = new List<Point>();

            for (int point = 0; point < numberOfPoints; point++)
            {
                double value = dataSet.Data[point];

                Point destinationPoint = GetDestinationPoint(centerOfChart.X, centerOfChart.Y, (int)(distancePerValue * value), angle * point);

                points.Add(destinationPoint);

                if (dataSet.Color != Color.Transparent)
                {
                    graphics.FillEllipse(new SolidBrush(dataSet.Color), destinationPoint.X - (pointSize / 2), destinationPoint.Y - (pointSize / 2), pointSize, pointSize);
                }

                if (!startingPoint.HasValue)
                    startingPoint = destinationPoint;

                if (previousPoint.HasValue)
                {
                    graphics.DrawLine(new Pen(dataSet.Color == Color.Transparent ? _pathLineColor : dataSet.Color, 3), previousPoint.Value.X, previousPoint.Value.Y, destinationPoint.X, destinationPoint.Y);
                }

                previousPoint = destinationPoint;
            }

            graphics.DrawLine(new Pen(dataSet.Color == Color.Transparent ? _pathLineColor : dataSet.Color, 3), previousPoint.Value.X, previousPoint.Value.Y, startingPoint.Value.X, startingPoint.Value.Y);
            if (dataSet.Color != Color.Transparent)
            {
                graphics.FillPolygon(new SolidBrush(Color.FromArgb(100, dataSet.Color.R, dataSet.Color.G, dataSet.Color.B)), points.ToArray());
            }
        }

        protected Location LocationOfPoint(Point center, Point point)
        {
            if (point.X < center.X)
            {
                //Left
                if (point.Y < center.Y)
                {
                    //Top
                    return Location.TopLeft;
                }
                else if (point.Y > center.Y)
                {
                    //Bottom
                    return Location.BottomLeft;
                }
                else if (point.Y == center.Y)
                {
                    //Center
                    return Location.CenterLeft;
                }
            }
            else if (point.X > center.X)
            {
                //Right
                if (point.Y < center.Y)
                {
                    //Bottom
                    return Location.TopRight;
                }
                else if (point.Y > center.Y)
                {
                    //Top
                    return Location.BottomRight;
                }
                else if (point.Y == center.Y)
                {
                    //Center
                    return Location.CenterRight;
                }
            }
            else if (point.X == center.X)
            {
                //Center
                if (point.Y < center.Y)
                {
                    //Top
                    return Location.TopCenter;
                }
                else if (point.Y > center.Y)
                {
                    //Bottom
                    return Location.BottomCenter;
                }
                else if (point.Y == center.Y)
                {
                    //Center
                    return Location.Center;
                }
            }

            throw new Exception();
        }


        protected SizeF SizeOfString(string str, int maxWidth, Font font, Graphics g)
        {

            SizeF stringSize = g.MeasureString(str, font, maxWidth);

            return stringSize;
        }

        protected Point GetDestinationPoint(int x, int y, int distance, double angle)
        {
            double dY = (Math.Sin(angle / (180 / Math.PI)) * distance) + y;
            double dX = (Math.Cos(angle / (180 / Math.PI)) * distance) + x;
            return new Point((int)dX, (int)dY);

        }


        protected Point FindCenterOfChart(int width, int height)
        {
            return new Point(width / 2, height / 2);
        }

        #endregion
    }
}
