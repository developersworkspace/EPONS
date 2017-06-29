using SADFM.Data;
using SADFM.Web.Filters;
using SADFM.Web.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using System.Windows.Forms;
using System.Data;
using System.Text;
using System.IO;
using ExcelLibrary.SpreadSheet;
using SelectPdf;
using SADFM.Infrastructure.Services;
using SADFM.Application.Services;
using SADFM.Infrastructure.Factories;
using SADFM.Application.Factories;
using RestSharp;
using EPONS.Teddy.Client.Configuration;
using System.Configuration;
using OpenServices.Web.Attributes;

namespace SADFM.Web.Controllers
{
    [Log]
    public class ReportController : Controller
    {
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private IReportService reportService { get; set; }
        private IFacilityService facilityService { get; set; }
        private IExcelFactory excelFactory { get; set; }
        private IPDFFactory pdfFactory { get; set; }
        private IImageFactory imageFactory { get; set; }

        public ReportController()
        {
            this.reportService = new ReportService();
            this.excelFactory = new ExcelFactory();
            this.facilityService = new FacilityService();
            this.pdfFactory = new PDFFactory();
            this.imageFactory = new ImageFactory();
        }

        //
        // GET: /Report/
        [Secured]
        public ActionResult Index()
        {
            return View();
        }


        [HttpPost]
        public ActionResult ScalesForProvider(Guid id)
        {
            return Json(DataAccess.Provider.GetById(id).Scales.Select(x => x.GUID.ToString()).ToList());
        }

        public ActionResult DownloadAPOMReportFile(string id, string graph)
        {

            Web.Models.APOMReportViewModel model = new Models.APOMReportViewModel();
            model.ScaleItems = new Dictionary<string, Dictionary<string, string>>();
            model.GraphData = new Dictionary<string, int>();

            Data.Models.Visit visit = DataAccess.Patient.GetVisitById(Guid.ParseExact(id, "N"));

            var scaleValues = visit.ScalesValuesIds.Select(x => DataAccess.ListItem.GetById(SADFM.Data.Models.BaseModel.DecryptId(x))).ToList();
            scaleValues = scaleValues.Where(x => x.FullListName.StartsWith("Scale/APOM")).ToList();

            var list1 = DataAccess.ListItem.GetList("Scale/APOM");

            foreach (var i in list1)
            {

                model.ScaleItems.Add(i.Name, new Dictionary<string, string>());

                var list2 = DataAccess.ListItem.GetListByParentId(i.GetId());

                var score = scaleValues.SingleOrDefault(x => list2.Count(y => y.GetId() == x.GetId()) > 0);

                model.GraphData.Add(i.Name, Convert.ToInt32(score.Value));



                foreach (var j in list2.Where(x => x.Value == null))
                {
                    var list3 = DataAccess.ListItem.GetListByParentId(j.GetId());

                    var item = scaleValues.SingleOrDefault(x => list3.Count(y => y.GetId() == x.GetId()) > 0);

                    if (item == null || item.Value == "0")
                        continue;

                    model.ScaleItems[i.Name].Add(j.Name, item.Description);
                }
            }

            model.VisitDate = visit.VisitDate;
            model.Patient = visit.getPatient();
            model.Graph = graph;



            string result = getHtmlForAPOMReport(model);

            string tempFile = Path.GetTempFileName();

            HtmlToPdf converter = new HtmlToPdf();


            PdfDocument doc = converter.ConvertHtmlString(result);
            doc.Save(tempFile);
            doc.Close();
            return File(tempFile, "application/pdf", "PatientProgressReport.pdf");
        }

        public ActionResult APOMReport(string Visit)
        {
            Web.Models.APOMReportViewModel model = new Models.APOMReportViewModel();
            model.ScaleItems = new Dictionary<string, Dictionary<string, string>>();
            model.GraphData = new Dictionary<string, int>();

            Data.Models.Visit visit = DataAccess.Patient.GetVisitById(Guid.ParseExact(Visit, "N"));

            var scaleValues = visit.ScalesValuesIds.Select(x => DataAccess.ListItem.GetById(SADFM.Data.Models.BaseModel.DecryptId(x))).ToList();
            scaleValues = scaleValues.Where(x => x.FullListName.StartsWith("Scale/APOM")).ToList();

            var list1 = DataAccess.ListItem.GetList("Scale/APOM");

            foreach (var i in list1)
            {

                model.ScaleItems.Add(i.Name, new Dictionary<string, string>());

                var list2 = DataAccess.ListItem.GetListByParentId(i.GetId());

                var score = scaleValues.SingleOrDefault(x => list2.Count(y => y.GetId() == x.GetId()) > 0);

                model.GraphData.Add(i.Name, Convert.ToInt32(score.Value));



                foreach (var j in list2.Where(x => x.Value == null))
                {
                    var list3 = DataAccess.ListItem.GetListByParentId(j.GetId());

                    var item = scaleValues.SingleOrDefault(x => list3.Count(y => y.GetId() == x.GetId()) > 0);

                    if (item == null || item.Value == "0")
                        continue;

                    model.ScaleItems[i.Name].Add(j.Name, item.Description);
                }
            }

            model.VisitDate = visit.VisitDate;
            model.Patient = visit.getPatient();
            model.VisitId = visit.VisitId;

            return View("APOMReport", model);
        }

        private string getHtmlForAPOMReport(Web.Models.APOMReportViewModel model)
        {

            string result = Shared.Utilities.RenderRazorViewToString(this, "APOMReportFile", model);

            return result;
        }

        [Secured]
        public ActionResult Audit()
        {
            return View();

        }

        [Secured]
        [HttpGet]
        public ActionResult FacilityPerformanceReport()
        {
            return View(new ViewModels.FacilityPerformanceReport()
            {
                ProviderId = UserHelper.SelectedClientId
            });
        }

        [Secured]
        [HttpGet]
        public ActionResult FacilityDashboardReport()
        {
            return View(new ViewModels.FacilityDashboardReport()
            {
                FacilityId = UserHelper.SelectedClientId,
                Facilities = this.facilityService.List()
            });
        }

        [Secured]
        [HttpPost]
        public ActionResult FacilityDashboardReport(ViewModels.FacilityDashboardReport model)
        {

            var result = this.reportService.FacilityDashboardReport(model.FacilityId.Value, model.StartDate.Value, model.EndDate.Value);

            result.AverageLOS = Double.IsNaN(result.AverageLOS) ? 0 : (int)result.AverageLOS;
            result.AverageLOSMoreThanAMonth = Double.IsNaN(result.AverageLOS) ? 0 : (int)result.AverageLOS;
            result.AverageLOSWeek1 = Double.IsNaN(result.AverageLOSWeek1) ? 0 : (int)result.AverageLOSWeek1;
            result.AverageLOSWeek2 = Double.IsNaN(result.AverageLOSWeek2) ? 0 : (int)result.AverageLOSWeek2;
            result.AverageLOSWeek3 = Double.IsNaN(result.AverageLOSWeek3) ? 0 : (int)result.AverageLOSWeek3;
            result.AverageLOSWeek4 = Double.IsNaN(result.AverageLOSWeek4) ? 0 : (int)result.AverageLOSWeek4;
            result.AverageAge = Double.IsNaN(result.AverageAge) ? 0 : (int)result.AverageAge;

            result.Path = Request.Url.Host + (Request.Url.Port == 80 ? "" : ":" + Request.Url.Port.ToString());

            result.FacilityImage = this.imageFactory.Save(result.FacilityImage);

            string filePath = this.pdfFactory.Create("FacilityDashboardReport", result);

            return File(filePath, "application/pdf", "FacilityDashboardReport.pdf");
        }

        [Secured]
        [HttpGet]
        public ActionResult FacilityVolumeReport()
        {
            return View(new ViewModels.FacilityVolumeReport()
            {
                FacilityId = UserHelper.SelectedClientId,
                Facilities = this.facilityService.List()
            });
        }

        [Secured]
        [HttpPost]
        public ActionResult FacilityVolumeReport(ViewModels.FacilityVolumeReport model)
        {

            DataTable dataTable = this.reportService.FacilityVolumeReport(model.FacilityId.HasValue ? model.FacilityId.Value : UserHelper.SelectedClientId.Value, model.StartDate.Value, model.EndDate.Value);

            string html = this.excelFactory.Create(dataTable);

            string tempPath = Path.GetTempFileName();
            System.IO.File.WriteAllText(tempPath, html);

            return File(tempPath, "application/vnd.ms-excel", "FacilityVolumeReport.xls");

        }

        [Secured]
        [HttpPost]
        public ActionResult FacilityPerformanceReport(ViewModels.FacilityPerformanceReport model)
        {


            //if (model.MedicalSchemes != null && model.MedicalSchemes.Count(x => x == Guid.Empty) != 0)
            //    model.MedicalSchemes = null;

            //DataTable dataTable = this.reportService.FacilityPerformanceReport(model.ScaleId, model.StartDate.Value, model.EndDate.Value, model.MedicalSchemes, model.ProviderId.HasValue ? model.ProviderId.Value : UserHelper.SelectedClientId.Value);


            //string html = this.excelFactory.Create(dataTable);

            //string tempPath = Path.GetTempFileName();
            //System.IO.File.WriteAllText(tempPath, html);


            //return File(tempPath, "application/vnd.ms-excel", "FacilityPerformanceReport.xls");




            if (model.MedicalSchemes != null && model.MedicalSchemes.Count(x => x == Guid.Empty) != 0)
                model.MedicalSchemes = null;


            SADFMSection config = ConfigurationManager.GetSection("SADFM") as SADFMSection;

            IRestClient client = new RestClient(config.ApiEndpoint);
            IRestRequest request = new RestRequest("/report/facilityperformancereport", Method.POST);
            client.Timeout = int.MaxValue;
            client.ReadWriteTimeout = int.MaxValue;
            request.Timeout = int.MaxValue;
            request.ReadWriteTimeout = int.MaxValue;

            request.AddHeader("Content-Type", "application/json");
            request.AddHeader("x-key", config.ApiKey);
            request.AddJsonBody(new
            {
                MeasurementToolId = model.ScaleId,
                StartDate = model.StartDate,
                EndDate = model.EndDate,
                MedicalSchemeIds = model.MedicalSchemes,
                FacilityId = model.ProviderId.HasValue ? model.ProviderId.Value : UserHelper.SelectedClientId.Value,
                Username = this.User.Identity.Name
            });

            IRestResponse response = client.Execute(request);

            return File(response.RawBytes, "application/octet-stream", "FacilityPerformanceReport.pdf");
        }


        [Secured]
        public ActionResult PatientProgressReport(Guid id)
        {
            return View();
        }

        public FileResult DownloadFile(string id)
        {
            return File(Server.MapPath(string.Format("\\App_Data\\uploads\\{0}", id)), "image/jpg");
        }

        [Secured]
        [HttpPost]
        public ActionResult DownloadPatientProgressReportFile(Guid id, DateTime StartDate, DateTime EndDate, Data.Models.PatientProgressReportScale[] Scales, bool GroupedNotes, bool save = false, Guid? reportId = null)
        {

            string result = getHtmlForPatientProgressReport(id, StartDate, EndDate, Scales, GroupedNotes);

            string tempFile = Path.GetTempFileName();

            HtmlToPdf converter = new HtmlToPdf();

            if (save)
            {
                System.IO.File.WriteAllText(Server.MapPath(string.Format("\\App_Data\\patientprogressreports\\{0}.html", reportId.Value.ToString("N"))), result);

                PdfDocument doc = converter.ConvertHtmlString(result);
                doc.Save(Server.MapPath(string.Format("\\App_Data\\patientprogressreports\\{0}.pdf", reportId.Value.ToString("N"))));
                doc.Close();

                return RedirectToAction("Details", "Patient", new { Patient = id.ToString("N") });
            }
            else
            {

                PdfDocument doc = converter.ConvertHtmlString(result);
                doc.Save(tempFile);
                doc.Close();
                return File(tempFile, "application/pdf", "PatientProgressReport.pdf");
            }
        }

        private string getHtmlForPatientProgressReport(Guid id, DateTime StartDate, DateTime EndDate, Data.Models.PatientProgressReportScale[] Scales, bool GroupedNotes)
        {
            var model = DataAccess.Patient.GetPatientProgressReport(id, StartDate, EndDate, UserHelper.SelectedClientId);

            model.Scales = Scales;
            model.GroupedNotes = GroupedNotes;

            model.ReportImage = System.IO.File.ReadAllBytes(Server.MapPath("/Content/images/report_logo.png"));



            if (model.ReportImage != null)
            {
                Guid reportImageId = Guid.NewGuid();

                string reportImageFile = Server.MapPath(string.Format("\\App_Data\\uploads\\{0}.jpg", reportImageId.ToString("N")));

                System.IO.File.WriteAllBytes(reportImageFile, model.ReportImage);
                model.ReportImageUri = reportImageId.ToString("N");
            }

            if (Scales != null)
            {
                foreach (var scale in Scales)
                {

                    Guid tempId = Guid.NewGuid();

                    string file = Server.MapPath(string.Format("\\App_Data\\uploads\\{0}.jpg", tempId.ToString("N")));

                    System.IO.File.WriteAllBytes(file, Convert.FromBase64String(scale.Base64.Substring(scale.Base64.IndexOf(";base64,") + 8)));
                    scale.Uri = tempId.ToString("N");
                }
            }




            if (model.ProviderImage == null)
                model.ProviderImage = System.IO.File.ReadAllBytes(Server.MapPath("/Content/images/noprovider.png"));


            if (model.ProviderImage != null)
            {
                Guid providerImageId = Guid.NewGuid();

                string providerImageFile = Server.MapPath(string.Format("\\App_Data\\uploads\\{0}.jpg", providerImageId.ToString("N")));

                System.IO.File.WriteAllBytes(providerImageFile, model.ProviderImage);
                model.ProviderImageUri = providerImageId.ToString("N");
            }



            if (model.ProfileImage == null)
                model.ProfileImage = System.IO.File.ReadAllBytes(Server.MapPath("/Content/images/nopatient.png"));

            if (model.ProfileImage != null)
            {
                Guid profileImageId = Guid.NewGuid();

                string profileImageFile = Server.MapPath(string.Format("\\App_Data\\uploads\\{0}.jpg", profileImageId.ToString("N")));

                System.IO.File.WriteAllBytes(profileImageFile, model.ProfileImage);
                model.ProfileImageUri = profileImageId.ToString("N");
            }

            string result = Shared.Utilities.RenderRazorViewToString(this, "DownloadPatientProgressReportFile", model);

            return result;
        }

        public ActionResult ViewGraph()
        {
            return View();
        }

        [HttpPost]
        public JsonResult GraphData(string PatientId, string ScaleID, string GraphType, long[] SelectedDates)
        {
            DateTime utcStart = new DateTime(1970, 1, 1);
            Guid patientId = Guid.ParseExact(PatientId, "N");
            Guid scaleId = Data.Models.BaseModel.DecryptId(ScaleID);

            var scale = DataAccess.ListItem.GetById(scaleId);
            if (scale.Name.Equals("VitalSigns"))
            {

                List<Data.Models.Visit> visits = DataAccess.Patient.GetLast50(patientId);

                List<Models.LineChart> chartData = new List<Models.LineChart>();

                chartData.Add(new Models.LineChart()
                {
                    Data = visits.Where(x => x.Temperature.HasValue).ToDictionary(x => (long)(x.VisitDate - utcStart).TotalMilliseconds, x => x.Temperature.Value),
                    name = "Temperature"
                });

                chartData.Add(new Models.LineChart()
                {
                    Data = visits.Where(x => x.BloodPressureDiastolic.HasValue).ToDictionary(x => (long)(x.VisitDate - utcStart).TotalMilliseconds, x => Convert.ToDouble(x.BloodPressureDiastolic.Value)),
                    name = "Blood Pressure Diastolic"
                });

                chartData.Add(new Models.LineChart()
                {
                    Data = visits.Where(x => x.BloodPressureSystolic.HasValue).ToDictionary(x => (long)(x.VisitDate - utcStart).TotalMilliseconds, x => Convert.ToDouble(x.BloodPressureSystolic.Value)),
                    name = "Blood Pressure Systolic"
                });

                chartData.Add(new Models.LineChart()
                {
                    Data = visits.Where(x => x.HeartRate.HasValue).ToDictionary(x => (long)(x.VisitDate - utcStart).TotalMilliseconds, x => Convert.ToDouble(x.HeartRate.Value)),
                    name = "Heart Rate"
                });

                chartData.Add(new Models.LineChart()
                {
                    Data = visits.Where(x => x.PulseOximetry.HasValue).ToDictionary(x => (long)(x.VisitDate - utcStart).TotalMilliseconds, x => Convert.ToDouble(x.PulseOximetry.Value)),
                    name = "Pulse Oximetry"
                });

                chartData.Add(new Models.LineChart()
                {
                    Data = visits.Where(x => x.Glucose.HasValue).ToDictionary(x => (long)(x.VisitDate - utcStart).TotalMilliseconds, x => Convert.ToDouble(x.Glucose.Value * 10)),
                    name = "Glucose * 10"
                });

                chartData.Add(new Models.LineChart()
                {
                    Data = visits.Where(x => x.RespiratoryRate.HasValue).ToDictionary(x => (long)(x.VisitDate - utcStart).TotalMilliseconds, x => Convert.ToDouble(x.RespiratoryRate.Value)),
                    name = "Respiratory Rate"
                });

                return Json(new
                {
                    Data = chartData,
                    Format = "yyyy-MM-dd HH:mm"
                });
            }
            switch (GraphType)
            {
                case "AllVisitsLine":
                case "CondensedVisitsLine":
                    {
                        Dictionary<Guid, List<Data.Models.Visit>> rx;
                        if (GraphType == "AllVisitsLine")
                            rx = DataAccess.Patient.GetAllVisits(patientId, scaleId);
                        else
                            rx = DataAccess.Patient.GetCompletedScales(patientId, scaleId);
                        List<Models.LineChart> chartData = new List<Models.LineChart>();

                        foreach (var scaleItem in DataAccess.ListItem.GetListByParentId(scaleId, "SortOrder"))
                        {
                            chartData.Add(new Models.LineChart
                            {
                                Id = scaleItem.GetId(),
                                name = scaleItem.Name,
                                Data = new Dictionary<long, double>()
                            });
                        }

                        DateTime minDate = DateTime.MaxValue, maxDate = DateTime.MinValue;
                        if (rx.ContainsKey(scaleId))
                            foreach (var visit in rx[scaleId])
                                foreach (var visitScore in visit.ScaleValues)
                                {
                                    if (visit.VisitDate < minDate)
                                        minDate = visit.VisitDate;
                                    if (visit.VisitDate > maxDate)
                                        maxDate = visit.VisitDate;
                                    chartData.Single(lc => lc.Id == visitScore.ItemId).Data.Add(
                                        (long)((visit.VisitDate - utcStart).TotalMilliseconds),
                                        visitScore.Value);
                                }

                        return Json(new
                        {
                            Data = chartData,
                            Format = (maxDate - minDate).TotalDays <= 3 ? "yyyy-MM-dd HH:mm" : "yyyy-MM-dd"
                        });
                    }
                case "PolarDates":
                    {
                        Dictionary<Guid, List<Data.Models.Visit>> rx = DataAccess.Patient.GetCompletedScales(patientId, scaleId);
                        return Json(rx[scaleId].Select(v => v.VisitDate).OrderBy(v => v).Select(d => new { ticks = d.Ticks, display = d.ToString("dd MMM yyyy HH:mm") }));
                    }
                case "Polar":
                    {
                        List<Data.Models.ListItem> items = DataAccess.ListItem.GetListByParentId(scaleId, "SortOrder").OrderBy(x => x.SortOrder).ToList();

                        if (SelectedDates == null)
                        {
                            Dictionary<Guid, List<Data.Models.Visit>> rx_dates = DataAccess.Patient.GetCompletedScales(patientId, scaleId);
                            var dates = rx_dates[scaleId].Select(v => v.VisitDate).OrderBy(v => v).Select(d => new { ticks = d.Ticks, display = d.ToString("dd MMM yyyy HH:mm") });

                            if (dates.Count() == 0)
                            {
                                return Json(new
                                {
                                    labels = items.Select(li => li.Name),
                                    Data = new object[0]
                                });
                            }
                            else if (dates.Count() == 1)
                            {
                                SelectedDates = new long[] {
                                    dates.ElementAt(0).ticks
                                };
                            }
                            else if (dates.Count() == 2)
                            {
                                SelectedDates = new long[] {
                                    dates.ElementAt(0).ticks,
                                    dates.ElementAt(1).ticks,
                                };
                            }
                            else if (dates.Count() == 3)
                            {
                                SelectedDates = new long[] {
                                    dates.ElementAt(0).ticks,
                                    dates.ElementAt(1).ticks,
                                    dates.ElementAt(2).ticks
                                };
                            }
                            else
                            {
                                SelectedDates = new long[] {
                                    dates.ElementAt(0).ticks,
                                    dates.ElementAt(dates.Count() / 2).ticks,
                                    dates.ElementAt(dates.Count() - 1).ticks
                                };
                            }
                        }

                        List<Data.Models.Visit> rx = DataAccess.Patient.GetCompletedScales(patientId, scaleId)[scaleId].Where(v => SelectedDates.Contains(v.VisitDate.Ticks)).OrderBy(v => v.VisitDate).ToList();

                        return Json(new
                        {
                            labels = items.Select(li => li.Name),
                            Data = rx.Select(v => new { title = v.VisitDate.ToString("dd MMM yyyy HH:mm"), points = items.Select(li => v.ScaleValues.Single(sis => sis.ItemId == li.GetId()).Value) }),
                            Format = ""
                        });
                    }
            }
            return Json(false);
        }

        [Secured]
        public ActionResult DownloadPatientProgressReport(Guid id, DateTime StartDate, DateTime EndDate, bool GroupedNotes, bool save = false, Guid? reportId = null)
        {
            SADFMSection config = ConfigurationManager.GetSection("SADFM") as SADFMSection;

            EPONS.Teddy.Client.ReportService reportService = new EPONS.Teddy.Client.ReportService(config.ApiEndpoint, config.ApiKey);

            string filename;
            byte[] bytes = reportService.PatientProgressReport(id, UserHelper.SelectedClientId.Value, StartDate, EndDate, out filename);

            return File(bytes, "application/octet-stream", filename);
         
        }

        [Secured]
        public ActionResult Billing()
        {
            return View();

        }

        [Secured]
        public ActionResult PatientSummaryReport()
        {
            return View();
        }

        [HttpGet]
        [Secured]
        public FileResult DownloadPatientSummaryReport(Guid[] ScaleIds, DateTime StartDate, DateTime EndDate)
        {
            Workbook workbook = new Workbook();

            foreach (var scaleId in ScaleIds)
            {

                string scaleName = Data.DataAccess.ListItem.GetById(scaleId).Name;

                var patientSummary = this.reportService.GetPatientSummaryReport(scaleId, StartDate, EndDate, UserHelper.SelectedClientId);


                Worksheet worksheet = new Worksheet(scaleName);

                if (patientSummary.Count == 0)
                {
                    workbook.Worksheets.Add(worksheet);
                    continue;
                }


                int scaleSize = patientSummary.Count == 0 ? 0 : patientSummary.Select(x => x.FirstScore == null ? 0 : x.FirstScore.Count).Max();

                var tmp1 = patientSummary.Count == 0 ? null : patientSummary.Select(x => x.FirstScore == null ? null : x.FirstScore).Where(x => x != null);
                var tmp2 = tmp1 == null ? null : tmp1.FirstOrDefault();

                List<string> scaleHeaders = tmp2 == null ? new List<string>() : tmp2.OrderBy(x => x.SortOrder).Select(x => x.ItemName).ToList();

                Dictionary<string, string> Columns = new Dictionary<string, string>();

                if (scaleName == "Beta")
                {


                    worksheet.Cells[0, 0] = new Cell("name");
                    worksheet.Cells[0, 1] = new Cell("surname");
                    worksheet.Cells[0, 2] = new Cell("gender");
                    worksheet.Cells[0, 3] = new Cell("birthdate");
                    worksheet.Cells[0, 4] = new Cell("case_id");
                    worksheet.Cells[0, 5] = new Cell("hospital_name");
                    worksheet.Cells[0, 6] = new Cell("patient_type");
                    worksheet.Cells[0, 7] = new Cell("medical_schema_id");
                    worksheet.Cells[0, 8] = new Cell("medical_schema_no");
                    worksheet.Cells[0, 9] = new Cell("Impairment_group");
                    worksheet.Cells[0, 10] = new Cell("hospital_admission_date");
                    worksheet.Cells[0, 11] = new Cell("hospital_discharge_date");
                    worksheet.Cells[0, 12] = new Cell("score_date");
                    worksheet.Cells[0, 13] = new Cell("Score_Type");

                    worksheet.Cells[0, 14 + scaleSize] = new Cell("score_date");
                    worksheet.Cells[0, 15 + scaleSize] = new Cell("Score_Type");


                    worksheet.Cells[0, 16 + scaleSize + scaleSize] = new Cell("Admision_Total");
                    worksheet.Cells[0, 17 + scaleSize + scaleSize] = new Cell("Discharge_Total");
                    worksheet.Cells[0, 18 + scaleSize + scaleSize] = new Cell("LOS");
                    worksheet.Cells[0, 19 + scaleSize + scaleSize] = new Cell("Functional_Gain");
                    worksheet.Cells[0, 20 + scaleSize + scaleSize] = new Cell("Functional_Gain_Per_Day");

                }
                else
                {
                    worksheet.Cells[0, 0] = new Cell("Firstname");
                    worksheet.Cells[0, 1] = new Cell("Lastname");
                    worksheet.Cells[0, 2] = new Cell("Gender");
                    worksheet.Cells[0, 3] = new Cell("Birth Date");
                    worksheet.Cells[0, 4] = new Cell("Case Id");
                    worksheet.Cells[0, 5] = new Cell("Providers");
                    worksheet.Cells[0, 6] = new Cell("Providers Service Types");
                    worksheet.Cells[0, 7] = new Cell("Medical Scheme");
                    worksheet.Cells[0, 8] = new Cell("Medical Scheme Number");
                    worksheet.Cells[0, 9] = new Cell("Impairment Group");
                    worksheet.Cells[0, 10] = new Cell("Admission Date");
                    worksheet.Cells[0, 11] = new Cell("Discharge Date");
                    worksheet.Cells[0, 12] = new Cell("First Score Date");
                    worksheet.Cells[0, 13] = new Cell("Score Type");

                    worksheet.Cells[0, 14 + scaleSize] = new Cell("Last Score Date");
                    worksheet.Cells[0, 15 + scaleSize] = new Cell("Score Type");


                    worksheet.Cells[0, 16 + scaleSize + scaleSize] = new Cell("Admission Total");
                    worksheet.Cells[0, 17 + scaleSize + scaleSize] = new Cell("Discharge Total");
                    worksheet.Cells[0, 18 + scaleSize + scaleSize] = new Cell("LOS");
                    worksheet.Cells[0, 19 + scaleSize + scaleSize] = new Cell("Functional Gain");
                    worksheet.Cells[0, 20 + scaleSize + scaleSize] = new Cell("Functional Gain per Day");
                }
                for (int j = 0; j < scaleSize; j++)
                {
                    worksheet.Cells[0, 14 + j] = new Cell(scaleHeaders[j]);
                }

                for (int j = 0; j < scaleSize; j++)
                {
                    worksheet.Cells[0, 16 + scaleSize + j] = new Cell(scaleHeaders[j]);
                }

                for (int i = 0; i < patientSummary.Count; i++)
                {
                    var entry = patientSummary[i];

                    if (entry.FirstScore != null)
                        entry.FirstScore = entry.FirstScore.OrderBy(x => x.SortOrder).ToList();

                    if (entry.LastScore != null)
                        entry.LastScore = entry.LastScore.OrderBy(x => x.SortOrder).ToList();

                    worksheet.Cells[i + 1, 0] = new Cell(entry.Firstname);
                    worksheet.Cells[i + 1, 1] = new Cell(entry.Lastname);
                    worksheet.Cells[i + 1, 2] = new Cell(entry.Gender);
                    worksheet.Cells[i + 1, 3] = new Cell(entry.BirthDate, @"YYYY\-MM\-DD");
                    worksheet.Cells[i + 1, 4] = new Cell(entry.CaseId.ToString());
                    worksheet.Cells[i + 1, 5] = new Cell(string.Join(", ", entry.Providers));
                    worksheet.Cells[i + 1, 6] = new Cell(string.Join(", ", entry.ProvidersServiceType));
                    worksheet.Cells[i + 1, 7] = new Cell(entry.MedicalScheme);
                    worksheet.Cells[i + 1, 8] = new Cell(entry.MedicalSchemeNumber);
                    worksheet.Cells[i + 1, 9] = new Cell(entry.ImpairmentGroup);
                    worksheet.Cells[i + 1, 10] = new Cell(entry.AdmissionDate, @"YYYY\-MM\-DD");
                    worksheet.Cells[i + 1, 11] = new Cell(entry.DischargeDate, @"YYYY\-MM\-DD");
                    worksheet.Cells[i + 1, 12] = new Cell(entry.FirstDate, @"YYYY\-MM\-DD");
                    worksheet.Cells[i + 1, 13] = new Cell("Admission");


                    if (entry.FirstScore != null)
                        for (int j = 0; j < scaleSize; j++)
                        {
                            worksheet.Cells[i + 1, 14 + j] = new Cell(entry.FirstScore[j].Value);
                        }



                    worksheet.Cells[i + 1, 14 + scaleSize] = new Cell(entry.LastDate, @"YYYY\-MM\-DD");
                    worksheet.Cells[i + 1, 15 + scaleSize] = new Cell("Discharge");

                    if (entry.LastScore != null)
                        for (int j = 0; j < scaleSize; j++)
                        {
                            worksheet.Cells[i + 1, 16 + scaleSize + j] = new Cell(entry.LastScore[j].Value);
                        }

                    if (entry.FirstScore != null && entry.LastScore != null)
                    {
                        worksheet.Cells[i + 1, 16 + scaleSize + scaleSize] = new Cell(entry.FirstScore.Select(x => x.Value).Sum());
                        worksheet.Cells[i + 1, 17 + scaleSize + scaleSize] = new Cell(entry.LastScore.Select(x => x.Value).Sum());
                        worksheet.Cells[i + 1, 18 + scaleSize + scaleSize] = new Cell(entry.LOS);
                        worksheet.Cells[i + 1, 19 + scaleSize + scaleSize] = new Cell(entry.LastScore.Select(x => x.Value).Sum() - entry.FirstScore.Select(x => x.Value).Sum());
                        worksheet.Cells[i + 1, 20 + scaleSize + scaleSize] = new Cell(Math.Round((double)(entry.LastScore.Select(x => x.Value).Sum() - entry.FirstScore.Select(x => x.Value).Sum()) / (double)entry.LOS, 4));

                    }

                }

                workbook.Worksheets.Add(worksheet);
            }

            Guid fileId = Guid.NewGuid();

            workbook.Save(Server.MapPath(string.Format("/App_Data/{0}.xls", fileId.ToString("N"))));


            return File(Server.MapPath(string.Format("/App_Data/{0}.xls", fileId.ToString("N"))), "application/xls", "PatientSummaryReport.xls");
        }

        [HttpPost]
        [Secured]
        public FileResult DownloadPatientReport(Models.PatientReport pr)
        {
            if (pr.SelectedDatesString != null)
            {
                pr.SelectedDates = pr.SelectedDatesString.Split('|').Select(x => Convert.ToInt64(x)).ToArray();

            }

            Guid reportImageId = Guid.NewGuid();

            string reportImageFile = Server.MapPath(string.Format("\\App_Data\\uploads\\{0}.jpg", reportImageId.ToString("N")));

            System.IO.File.WriteAllBytes(reportImageFile, Convert.FromBase64String(pr.Graph.Substring(pr.Graph.IndexOf("base64,") + 7)));
            pr.Graph = reportImageId.ToString("N");


            string result = Shared.Utilities.RenderRazorViewToString(this, "PatientReport", pr);


            string tempFile = Path.GetTempFileName();

            HtmlToPdf converter = new HtmlToPdf();

            PdfDocument doc = converter.ConvertHtmlString(result);
            doc.Save(tempFile);
            doc.Close();



            return File(tempFile, "application/pdf", "PatientReport.pdf");

        }



        [Secured]
        public ActionResult PatientReport(Models.PatientReport pr)
        {

            return View(pr);

        }


        [Secured]
        public ActionResult CaseReport()
        {
            return View();
        }

        [Secured]
        public FileResult DownloadCaseReport(DateTime StartDate, DateTime EndDate)
        {


            List<Data.Models.Case> allCases = DataAccess.Patient.GetAllCases(StartDate, EndDate, UserHelper.SelectedClientId);

            DataGridView dataGridView = new DataGridView();


            DataTable table = new DataTable();

            dataGridView.DataSource = table;

            table.Columns.Add("Unique Patient Key");
            table.Columns.Add("Patient Name");
            table.Columns.Add("Patient Surname");
            table.Columns.Add("Unique Case Key");
            table.Columns.Add("Start Date");
            table.Columns.Add("End Date");
            table.Columns.Add("ICD10 Code");
            table.Columns.Add("ICD10 Description");
            table.Columns.Add("ICD10");
            table.Columns.Add("IG Code");
            table.Columns.Add("IG Class");
            table.Columns.Add("IG Description");
            table.Columns.Add("Impairment Group");
            table.Columns.Add("Provider");

            foreach (Data.Models.Case currentCase in allCases)
            {

                Data.Models.Patient currentPatient = DataAccess.Patient.GetById(Data.Models.BaseModel.DecryptId(currentCase.PatientId));

                DataRow row = table.NewRow();
                row["Unique Patient Key"] = Data.Models.BaseModel.DecryptId(currentCase.PatientId).ToString("N");
                row["Patient Name"] = currentPatient.FirstName;
                row["Patient Surname"] = currentPatient.LastName;
                row["Unique Case Key"] = currentCase.GetId().ToString("N");
                row["Start Date"] = currentCase.StartDate.ToString("yyyy-MM-dd");
                row["End Date"] = currentCase.EndDate.HasValue ? currentCase.EndDate.Value.ToString("yyyy-MM-dd") : "";
                row["ICD10 Code"] = currentCase.ICD10;
                row["ICD10 Description"] = currentCase.ICD10Description;
                row["ICD10"] = currentCase.ICD10 + " - " + currentCase.ICD10Description;

                if (currentCase.ImpairmentGroupId != null)
                {

                    Data.Models.ListItem impairmentGroup = DataAccess.ListItem.GetById(Data.Models.BaseModel.DecryptId(currentCase.ImpairmentGroupId));
                    Data.Models.ListItem impairmentClass = DataAccess.ListItem.GetById(impairmentGroup.GetParentId().Value);

                    row["IG Code"] = string.Format("{0}.{1}", impairmentClass.Value, impairmentGroup.Value);
                    row["IG Class"] = impairmentClass.Name;
                    row["IG Description"] = impairmentGroup.Name;
                    row["Impairment Group"] = string.Format("{0}.{1} {2} - {3}", impairmentClass.Value, impairmentGroup.Value, impairmentClass.Name, impairmentGroup.Name);

                }

                row["Provider"] = string.Join(",", currentCase.Providers.Select(x => x.Name).Distinct());
                table.Rows.Add(row);

            }

            string csv = Shared.Utilities.SaveDataGridViewToCSV(table);
            return File(Encoding.ASCII.GetBytes(csv), "text/csv", "CaseReport.csv");

        }

        [Secured]
        public ActionResult TrainingReport()
        {

            return View(Data.DataAccess.Account.GetTrainingReport(UserHelper.SelectedClientId));
        }

        [Secured]
        public FileResult DownloadTrainingReport()
        {


            DataGridView dataGridView = new DataGridView();
            DataTable table = new DataTable();

            dataGridView.DataSource = table;

            table.Columns.Add("Username");
            table.Columns.Add("Firstname");
            table.Columns.Add("Lastname");
            table.Columns.Add("Email Address");
            table.Columns.Add("Scale");
            table.Columns.Add("Grade");
            table.Columns.Add("Updated");

            List<Data.Models.TrainingReportItem> trainingReport = new List<Data.Models.TrainingReportItem>();

            List<ScalePermission> scalePermissions = DataAccess.Account.AllPermissions();

            List<Data.Models.ListItem> scales = DataAccess.ListItem.GetList("Scale");

            foreach (ScalePermission sp in scalePermissions)
            {

                Data.Models.Account account = DataAccess.Account.GetAccountByAccountId(sp.AccountId);

                if (account.Permissions.Where(x => x.GetClientId() == UserHelper.SelectedClientId).Count() > 0 || !UserHelper.SelectedClientId.HasValue)
                {
                    Data.Models.ListItem scaleItem = scales.FirstOrDefault(x => x.GetId() == sp.ScaleId);

                    DataRow row = table.NewRow();
                    row["Username"] = account.Username;
                    row["Firstname"] = account.FirstName;
                    row["Lastname"] = account.LastName;
                    row["Email Address"] = account.EmailAddress;
                    row["Scale"] = scaleItem != null ? scaleItem.Description : "";
                    row["Grade"] = sp.Grade.HasValue ? sp.Grade.Value : -1;
                    row["Updated"] = sp.LastUpdateTimestamp;

                    table.Rows.Add(row);

                }
            }


            string csv = Shared.Utilities.SaveDataGridViewToCSV(table);


            return File(Encoding.ASCII.GetBytes(csv), "text/csv", "TrainingReport.csv");
        }

        [Secured]
        public JsonResult BillingList(DateTime endDate)
        {

            endDate = endDate.AddHours(12);

            List<Data.Models.FunderProvider> list = new List<Data.Models.FunderProvider>();

            List<Data.Models.Provider> providers = Data.DataAccess.Provider.GetAllProviders().Where(x => x.IsGroup == false).ToList();
            List<Data.Models.ListItem> scales = Data.DataAccess.ListItem.GetList("Scale");
            List<Data.Models.Audit> scaleAudit = Data.DataAccess.Audit.GetAllAudits().Where(x => x.TableName == "ProviderServiceTypeScale").ToList();



            foreach (Data.Models.Provider p in providers)
            {


                string GroupName = p.ParentID != null ? DataAccess.Provider.GetById(Data.Models.BaseModel.DecryptId(p.ParentID)).Name : "";

                List<Data.Models.Audit> providerScalesAdded = scaleAudit.Where(x => x.PrimaryKeyId == p.GetId() && x.OldValue == null && x.UpdateDate <= endDate.AddDays(1)).ToList();
                List<Data.Models.Audit> providerScalesDeleted = scaleAudit.Where(x => x.PrimaryKeyId == p.GetId() && x.NewValue == null).ToList();

                foreach (Data.Models.Audit audit in providerScalesDeleted)
                {

                    if (audit.UpdateDate <= endDate.AddMonths(-1))
                    {
                        Data.Models.Audit temp = providerScalesAdded.FirstOrDefault(x => x.NewValue == audit.OldValue && x.UpdateDate <= audit.UpdateDate);
                        if (temp != null)
                        {
                            providerScalesAdded.Remove(temp);
                        }

                    }
                }

                foreach (Data.Models.Audit audit in providerScalesAdded)
                {
                    list.Add(new Data.Models.FunderProvider()
                    {
                        ClientName = p.Name,
                        MonthEndDate = endDate.ToString("dd MMM yyyy"),
                        Scale = scales.FirstOrDefault(x => x.GetId() == new Guid(audit.NewValue)).Description,
                        ClientType = "Provider",
                        Group = GroupName,
                        BillingRate = p.MonthlyRate.ToString()
                    });
                }

            }

            foreach (Data.Models.ListItem li in DataAccess.ListItem.GetList("Funders").Where(x => x.LastUpdateTimestamp < endDate).ToList())
            {
                list.Add(new Data.Models.FunderProvider()
                {
                    ClientName = li.Name,
                    MonthEndDate = endDate.ToString("dd MMM yyyy"),
                    Scale = "",
                    ClientType = "Funder",
                    Group = "",
                    BillingRate = li.Value

                });
            }



            return Json(
           Utilities.DataTableJson(
           Utilities.DataTableRequest.Parse(Request.Form),
          list,
           null,
           x => x.MonthEndDate, x => x.ClientType, x => x.ClientName, x => x.Scale, x => x.Group, x => x.BillingRate));


        }

        [Secured]
        public FileResult DownloadBillingList(DateTime endDate)
        {

            endDate = endDate.AddHours(12);

            List<Data.Models.FunderProvider> list = new List<Data.Models.FunderProvider>();

            List<Data.Models.Provider> providers = Data.DataAccess.Provider.GetAllProviders().Where(x => x.IsGroup == false).ToList();
            List<Data.Models.ListItem> scales = Data.DataAccess.ListItem.GetList("Scale");
            List<Data.Models.Audit> scaleAudit = Data.DataAccess.Audit.GetAllAudits().Where(x => x.TableName == "ProviderServiceTypeScale").ToList();



            foreach (Data.Models.Provider p in providers)
            {


                string GroupName = p.ParentID != null ? DataAccess.Provider.GetById(Data.Models.BaseModel.DecryptId(p.ParentID)).Name : "";

                List<Data.Models.Audit> providerScalesAdded = scaleAudit.Where(x => x.PrimaryKeyId == p.GetId() && x.OldValue == null && x.UpdateDate <= endDate.AddDays(1)).ToList();
                List<Data.Models.Audit> providerScalesDeleted = scaleAudit.Where(x => x.PrimaryKeyId == p.GetId() && x.NewValue == null).ToList();

                foreach (Data.Models.Audit audit in providerScalesDeleted)
                {

                    if (audit.UpdateDate <= endDate.AddMonths(-1))
                    {
                        Data.Models.Audit temp = providerScalesAdded.FirstOrDefault(x => x.NewValue == audit.OldValue && x.UpdateDate <= audit.UpdateDate);
                        if (temp != null)
                        {
                            providerScalesAdded.Remove(temp);
                        }

                    }
                }

                foreach (Data.Models.Audit audit in providerScalesAdded)
                {
                    list.Add(new Data.Models.FunderProvider()
                    {
                        ClientName = p.Name,
                        MonthEndDate = endDate.ToString("dd MMM yyyy"),
                        Scale = scales.FirstOrDefault(x => x.GetId() == new Guid(audit.NewValue)).Description,
                        ClientType = "Provider",
                        Group = GroupName
                    });
                }

            }

            foreach (Data.Models.ListItem li in DataAccess.ListItem.GetList("Funders").Where(x => x.LastUpdateTimestamp < endDate).ToList())
            {
                list.Add(new Data.Models.FunderProvider()
                {
                    ClientName = li.Name,
                    MonthEndDate = endDate.ToString("dd MMM yyyy"),
                    Scale = "",
                    ClientType = "Funder",
                    Group = ""
                });
            }


            DataGridView dataGridView = new DataGridView();
            DataTable table = new DataTable();

            dataGridView.DataSource = table;

            table.Columns.Add("Month End Date");
            table.Columns.Add("Client name");
            table.Columns.Add("Group");
            table.Columns.Add("Scale");
            table.Columns.Add("Client type");



            foreach (Data.Models.FunderProvider fp in list)
            {

                DataRow row = table.NewRow();
                row["Month End Date"] = fp.MonthEndDate;
                row["Client name"] = fp.ClientName;
                row["Group"] = fp.Group;
                row["Scale"] = fp.Scale;
                row["Client type"] = fp.ClientType;
                table.Rows.Add(row);

            }


            string csv = Shared.Utilities.SaveDataGridViewToCSV(table);


            return File(Encoding.ASCII.GetBytes(csv), "text/csv", "BillingReport.csv");


        }

        [Secured]
        public ActionResult MassDataReport()
        {
            return View();
        }

        [Secured]
        public FileResult DownloadMassDataReport(DateTime StartDate, DateTime EndDate)
        {
            log4net.Config.XmlConfigurator.Configure();

            log.Info("Start download mass data report - " + DateTime.Now);
            DataGridView dataGridView = new DataGridView();


            DataTable table = new DataTable();

            dataGridView.DataSource = table;

            table.Columns.Add("Patient Unique Key");
            table.Columns.Add("Visit ID");
            table.Columns.Add("Firstname");
            table.Columns.Add("Lastname");
            table.Columns.Add("Birth Date");
            table.Columns.Add("Gender");
            table.Columns.Add("Race");
            table.Columns.Add("ID/Passport");
            table.Columns.Add("Medical Scheme");
            table.Columns.Add("Medical Scheme Number");
            table.Columns.Add("Case");
            table.Columns.Add("Date");
            table.Columns.Add("Duration");

            List<Data.Models.Visit> allVisits = DataAccess.Patient.GetAllVisits(StartDate, EndDate, UserHelper.SelectedClientId);

            List<Guid> patientIds = allVisits.Select(x => x.PatientGUID).Distinct().ToList();


            Dictionary<Guid, List<Data.Models.Visit>> allPatientVisits = new Dictionary<Guid, List<Data.Models.Visit>>();

            List<Data.Models.ListItem> allScales = new List<Data.Models.ListItem>();

            foreach (Guid pId in patientIds)
            {
                log.Debug("Patient - " + pId.ToString());
                log.Info("GetCompletedScales - Started " + DateTime.Now);
                Dictionary<Guid, List<Data.Models.Visit>> patientVisits = DataAccess.Patient.GetCompletedScales(pId);
                log.Info("GetCompletedScales - Finished " + DateTime.Now);

                foreach (Guid key in patientVisits.Keys.Distinct())
                {

                    if (allScales.FirstOrDefault(x => x.GetId() == key) == null)
                    {
                        allScales.Add(DataAccess.ListItem.GetById(key));
                    }
                }

            }

            log.Info("scoreItems - Started " + DateTime.Now);
            Dictionary<Guid, Data.Models.ListItem> scoreItems = new Dictionary<Guid, Data.Models.ListItem>();

            foreach (Data.Models.ListItem li in allScales)
            {

                List<Data.Models.ListItem> scaleItems = DataAccess.ListItem.GetListByParentId(li.GetId());
                foreach (Data.Models.ListItem cli in scaleItems)
                {

                    scoreItems.Add(cli.GetId(), cli);

                    try
                    {
                        table.Columns.Add(string.Format("{0} - {1}", li.Description, cli.Name));
                    }
                    catch { }
                }



            }


            log.Info("scoreItems - Finished " + DateTime.Now);

            List<Data.Models.Patient> allPatients = patientIds.Select(x => DataAccess.Patient.GetById(x, lightWeight: true)).ToList();

            log.Info("GetAllPatients - Finished " + DateTime.Now);


            Dictionary<Guid, Data.Models.ListItem> valueItemsList = new Dictionary<Guid, Data.Models.ListItem>();
            Dictionary<Guid, Data.Models.ListItem> scoreItemsList = new Dictionary<Guid, Data.Models.ListItem>();
            Dictionary<Guid, Data.Models.ListItem> scaleItemsList = new Dictionary<Guid, Data.Models.ListItem>();

            log.Info("Values build up - Started - " + DateTime.Now);

            var values = allVisits.SelectMany(x => x.ScalesValuesIds).Distinct();
            foreach (var val in values)
            {

                Guid id = Data.Models.BaseModel.DecryptId(val);
                Data.Models.ListItem valueItem = DataAccess.ListItem.GetById(id);
                Data.Models.ListItem scoreItem = DataAccess.ListItem.GetById(valueItem.GetParentId().Value);
                Data.Models.ListItem scaleItem = allScales.FirstOrDefault(x => x.GetId() == scoreItem.GetParentId().Value);

                if (!valueItemsList.Keys.Contains(id))
                {
                    valueItemsList.Add(id, valueItem);
                }

                if (!scoreItemsList.Keys.Contains(id))
                {
                    scoreItemsList.Add(id, scoreItem);
                }

                if (!scaleItemsList.Keys.Contains(id))
                {
                    scaleItemsList.Add(id, scaleItem);
                }
            }

            log.Info("Values build up - Finished - " + DateTime.Now);


            foreach (Data.Models.Visit visit in allVisits.OrderBy(x => x.StartDate).ToList())
            {

                DataRow row = table.NewRow();
                Data.Models.Patient patient = allPatients.FirstOrDefault(x => visit.PatientGUID == x.GetId());
                row["Patient Unique Key"] = visit.PatientGUID.ToString("N");
                row["Visit ID"] = visit.VisitId.ToString("N");
                row["Firstname"] = patient.FirstName;
                row["Lastname"] = patient.LastName;
                row["Birth Date"] = patient.BirthDate.Value.ToString("dd MMM yyyy");
                row["Gender"] = patient.Gender;
                row["Race"] = patient.Race;
                row["ID/Passport"] = patient.IDNumber;
                row["Medical Scheme"] = patient.MedicalScheme;
                row["Medical Scheme Number"] = patient.MedicalSchemeNo;
                row["Case"] = visit.CaseName;
                row["Date"] = visit.StartDate;
                row["Duration"] = visit.DurationDisplay;

                log.Info("GetScaleValues - Started " + DateTime.Now);

                foreach (string score in visit.ScalesValuesIds)
                {
                    Guid id = Data.Models.BaseModel.DecryptId(score);
                    Data.Models.ListItem valueItem = valueItemsList[id];
                    Data.Models.ListItem scoreItem = scoreItemsList[id];
                    Data.Models.ListItem scaleItem = scaleItemsList[id];

                    string columnName = string.Format("{0} - {1}", scaleItem.Description, scoreItems.Values.FirstOrDefault(x => x.GetId() == scoreItem.GetId()).Name);
                    row[columnName] = valueItem.Value;
                }

                log.Info("GetScaleValues - Finished " + DateTime.Now);

                table.Rows.Add(row);
            }



            string csv = Shared.Utilities.SaveDataGridViewToCSV(table);

            log.Info("End download mass data report - " + DateTime.Now);
            return File(Encoding.ASCII.GetBytes(csv), "text/csv", "MassDataReport.csv");
        }


        [Secured]
        [HttpPost]
        public JsonResult AuditList(string StartDate, string EndDate, string[] Type, int StartIndex, int Length, string Search, int ColumnSort, string Direction)
        {

            int count, filteredCount;

            List<Data.Models.Audit> AuditList = null;

            if (StartDate.Equals("") || EndDate.Equals(""))
            {


                AuditList = DataAccess.Audit.GetAllAudits((DateTime?)null, (DateTime?)null, StartIndex, Length, Search, ColumnSort, Direction, out count, out filteredCount).Where(x => (x.PrimaryKeyId != Guid.Empty && Type.Contains("Update")) || (x.PrimaryKeyId == Guid.Empty && Type.Contains("Insert")) || Type.Contains("")).ToList();

            }
            else
            {

                AuditList = DataAccess.Audit.GetAllAudits(DateTime.ParseExact(StartDate, "yyyy-MM-dd", null), DateTime.ParseExact(EndDate, "yyyy-MM-dd", null).AddHours(24), StartIndex, Length, Search, ColumnSort, Direction, out count, out filteredCount).Where(x => (x.PrimaryKeyId != Guid.Empty && Type.Contains("Update")) || (x.PrimaryKeyId == Guid.Empty && Type.Contains("Insert")) || Type.Contains("")).ToList();

            }



            Utilities.DataTableRequest dataTableRequest = Utilities.DataTableRequest.Parse(Request.Form);

            dataTableRequest.OverrideSearch = true;
            dataTableRequest.OverrideCount = count;
            dataTableRequest.OverrideFilteredCount = filteredCount;

            return Json(
               Utilities.DataTableJson(
               dataTableRequest,
               AuditList,
               null,
               x => x.TableName, x => x.FieldName, x => x.OldValue, x => x.NewValue, x => x.UpdateDate, x => x.Account.DisplayName, x => x.PrimaryKeyId));

        }

    }
}