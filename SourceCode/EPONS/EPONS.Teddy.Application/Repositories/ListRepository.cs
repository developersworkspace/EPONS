using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EPONS.Teddy.Application.ValueObjects;

namespace EPONS.Teddy.Application.Repositories
{
    public class ListRepository : Repository
    {
        public ListRepository(IDbConnection connection) : base(connection)
        {

        }

        public IList<ValueObjects.ListItem> GetMeasurementTools()
        {
            return Query<ValueObjects.ListItem>("[EPONS].[ListMeasurementTools]", null);
        }

        public IList<ValueObjects.ListItem> GetPermissions()
        {
            return Query<ValueObjects.ListItem>("[EPONS].[ListPermissions]", null);
        }

        public IList<ValueObjects.ListItem> GetAdmissionTypes()
        {
            return Query<ValueObjects.ListItem>("[EPONS].[ListAdmissionTypes]", null);
        }

        public IList<ValueObjects.ListItem> GetDischargeTypes()
        {
            return Query<ValueObjects.ListItem>("[EPONS].[ListDischargeTypes]", null);
        }

        public IList<ListItem> GetFacilities()
        {
            return Query<ValueObjects.ListItem>("[EPONS].[ListFacilities]", null);
        }

        public IList<ListItem> GetFrequencies()
        {
            return Query<ValueObjects.ListItem>("[EPONS].[ListFrequencies]", null);
        }

        public IList<ListItem> GetCities(Guid provinceId)
        {
            return Query<ListItem>("[EPONS].[ListCities]", new
            {
                provinceId = provinceId
            });
        }

        public List<ListItem> GetProvince(Guid countryId)
        {
            return Query<ListItem>("[EPONS].[ListProvinces]", new
            {
                countryId = countryId
            });
        }

        public IList<ListItem> GetICD10Codes(string query)
        {
            return Query<ListItem>("[EPONS].[ListICD10Codes]", new
            {
                query = query
            });
        }


        public IList<ListItem> GetICD10CodesByCodes(string query)
        {
            return Query<ListItem>("[EPONS].[ListICD10CodesByCode]", new
            {
                query = query
            });
        }
        public IList<ListItem> GetImpairmentGroups()
        {
            return Query<ListItem>("[EPONS].[ListImpairmentGroups]", null);
        }

        public IList<ListItem> GetFacilityUsers(Guid facilityId)
        {
            return Query<ListItem>("[EPONS].[ListFacilityUsersByFacilityId]", new
            {
                facilityId = facilityId
            });
        }
    }
}
