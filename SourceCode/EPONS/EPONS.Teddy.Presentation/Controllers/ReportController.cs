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
        public ActionResult ProgressReportRedesigned(Guid patientId, DateTime startDate, DateTime endDate, bool includeRadarChart, bool includeLineChart)
        {
            var baseObject = GetBaseObject();

            return View(new ViewObjects.Report.ProgressReport(baseObject)
            {
                PatientId = patientId,
                StartDate = startDate,
                EndDate = endDate,
                IncludeLineChart = includeLineChart,
                IncludeRadarChart = includeRadarChart
            });
        }

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

        [HttpGet]
        [Authorize(Order = 4)]
        public ActionResult FacilityPerformanceReport()
        {
            var baseObject = GetBaseObject();

            return View(new FacilityPerformanceReport(baseObject)
            {
                EndDate = DateTime.Now,
                StartDate = DateTime.Now.AddMonths(-3),
                FacilityId = baseObject.GetCurrentFacilityId().HasValue? baseObject.GetCurrentFacilityId().Value : new Guid(),
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