using SADFM.Infrastructure.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Infrastructure.Repositories
{
    public interface IReportRepository
    {

        List<PatientSummary> GetFacilityDashboardReport(Guid? facilityId, DateTime startDate, DateTime endDate);
        List<FacilityVolumeReport> GetFacilityVolumeReport(Guid facilityId, DateTime startDate, DateTime endDate);
        List<Models.PatientSummary> GetPatientSummaryReport(Guid? facilityId, DateTime startDate, DateTime endDate, Guid? scaleId);
        Dictionary<Guid, GroupedPatientSummary> GetPatientSummaryReportCollapsed(Guid scaleId, DateTime startDate, DateTime endDate, Guid ProviderId, List<Guid> medicalSchemeIds);
        Dictionary<Guid, List<Data.Models.Visit>> GetCompletedScalesWithParameters(Guid patientId, DateTime startDate, DateTime endDate, Guid? scaleId = null);
    }
}
