using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Repositories
{
    public class EpisodesofCareRepository : Repository
    {

        public EpisodesofCareRepository(IDbConnection connection) : base(connection)
        {
            
        }
        public List<EntityViews.EpisodesofCare> EpisodesofCare(Guid patientId, DateTime startDate, DateTime endDate)
        {

            //return new List<EntityViews.ReferringDoctors>();
            return Query<EntityViews.EpisodesofCare>("[EPONS].[PPREpisodeOfCareByPatientAndDates]", new
             {
                 patientId = patientId
             });
        }
  
    }

    public class DiagnosesRepository : Repository
    {

        public DiagnosesRepository(IDbConnection connection) : base(connection)
        {

        }
        public List<EntityViews.Diagnoses> Diagnoses(Guid patientId)
        {

            //return new List<EntityViews.ReferringDoctors>();
            return Query<EntityViews.Diagnoses>("[EPONS].[PPRDiagnosesByPatientID]", new
            {
                patientId = patientId
            });
        }

    }
    public class DoctorsRepository : Repository
    {

        public DoctorsRepository(IDbConnection connection) : base(connection)
        {

        }
        public List<EntityViews.ReferringDoctors> ReferringDoctors(Guid patientId, DateTime startDate, DateTime endDate)
        {

            //return new List<EntityViews.ReferringDoctors>();
            return Query<EntityViews.ReferringDoctors>("[EPONS].[PPRReferringDoctorsByPatientAndDates]", new
            {
                patientId = patientId,
                startDate = startDate,
                endDate = endDate
            });
        }
        public List<EntityViews.AttendingDoctors> AttendingDoctors(Guid patientId, DateTime startDate, DateTime endDate)
        {

            // return new List<EntityViews.AttendingDoctors>();
            return Query<EntityViews.AttendingDoctors>("[EPONS].[PPRAttendingDoctorsByPatientAndDates]", new
            {
                patientId = patientId,
                startDate = startDate,
                endDate = endDate
            });
        }
    }
}
