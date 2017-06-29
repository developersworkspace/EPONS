using EPONS.Teddy.Application.Engines;
using EPONS.Teddy.Application.Repositories;
using EPONS.Teddy.Application.Services;
using EPONS.Teddy.Presentation.ViewObjects.Report;
using System;
using System.Web.Mvc;

namespace EPONS.Teddy.Presentation.Controllers
{
    public class ReportController : BaseController
    {

        private PDFTemplatingEngine _pdfTemplatingEngine = new PDFTemplatingEngine();
        private ReportService _reportService;
        private ListRepository _listRepository;

        public ReportController()
        {
            _reportService = new ReportService(GetConnection());
            _listRepository = new ListRepository(GetConnection());
        }

        #region Action Methods

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult ProgressReport(Guid patientId)
        {
            var baseObject = GetBaseObject();

            return View(new ViewObjects.Report.ProgressReport(baseObject)
            {
                StartDate = DateTime.Now.AddMonths(-1),
                EndDate = DateTime.Now,
                PatientId = patientId,
                IncludeRadarChart = true
            });
        }


        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]
        public ActionResult ProgressReport(ViewObjects.Report.ProgressReport model)
        {
            var baseObject = GetBaseObject();

            string patientName;

            var progressReport = _reportService.ProgressReport(model.PatientId, baseObject.User.CurrentFacility.Id, model.StartDate, model.EndDate, model.IncludeRadarChart, model.IncludeLineChart, out patientName);

            string path = _pdfTemplatingEngine.Generate(string.Format(@"{0}\Resources\PDFTemplates\ProgressReport.html", AppDomain.CurrentDomain.BaseDirectory), progressReport);
            string filename = string.Format("ProgressReport_{0} ({1} to {2}).pdf", patientName, model.StartDate.ToString("yyyy-MM-dd"), model.EndDate.ToString("yyyy-MM-dd"));

            return File(path, "application/pdf", string.Format("ProgressReport_{0} ({1} to {2}).pdf", patientName, model.StartDate.ToString("yyyy-MM-dd"), model.EndDate.ToString("yyyy-MM-dd")));
        }
        public ActionResult ProgressReportPreview(ViewObjects.Report.ProgressReport model)
        {
            var baseObject = GetBaseObject();

            string patientName;

            var progressReportPreview = _reportService.ProgressReport(model.PatientId, baseObject.User.CurrentFacility.Id, model.StartDate, model.EndDate, model.IncludeRadarChart, model.IncludeLineChart, out patientName);

            string path = _pdfTemplatingEngine.Generate(string.Format(@"{0}\Resources\PDFTemplates\ProgressReport.html", AppDomain.CurrentDomain.BaseDirectory), progressReportPreview);
            string filename = string.Format("ProgressReport_{0} ({1} to {2}).pdf", patientName, model.StartDate.ToString("yyyy-MM-dd"), model.EndDate.ToString("yyyy-MM-dd"));

            Response.AddHeader("Content-Disposition", "inline; filename=" + filename);
            

            return File(path, "application/pdf");
        }


        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult FacilityPerformanceReport()
        {
            var baseObject = GetBaseObject();

            return View(new FacilityPerformanceReport(baseObject)
            {
                EndDate = DateTime.Now,
                StartDate = DateTime.Now.AddMonths(-3),
                Facilities = new SelectList(_listRepository.GetFacilities(), "Id", "Name"),
                MeasurementTools = new SelectList(_listRepository.GetMeasurementTools(), "Id", "Name")
            });
        }

        [HttpPost]
        [Authorize(Order = 4)]
        [ValidateAntiForgeryToken(Order = 5)]
        public ActionResult FacilityPerformanceReport(FacilityPerformanceReport model)
        {
            string facilityName;

            return File(_reportService.FacilityPerformanceReportStream(model.MeasurementToolId, model.StartDate, model.EndDate, model.FacilityId, null, out facilityName), "application/otect-stream", "FacilityPerformanceReport.pdf");
        }


        #endregion
    }
}