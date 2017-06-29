using SADFM.Infrastructure.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Infrastructure.Services
{
    public interface IReportService
    {
        DataTable FacilityVolumeReport(Guid facilityId, DateTime startDate, DateTime endDate);
        List<SADFM.Infrastructure.Models.PatientSummary> GetPatientSummaryReport(Guid scaleId, DateTime startDate, DateTime endDate, Guid? facilityId = null);
        DataTable FacilityPerformanceReport(Guid scaleId, DateTime startDate, DateTime endDate, Guid[] medicalSchemes, Guid facilityId);
        FacilityDashboardReport FacilityDashboardReport(Guid facilityId, DateTime startDate, DateTime endDate);
    }
}
