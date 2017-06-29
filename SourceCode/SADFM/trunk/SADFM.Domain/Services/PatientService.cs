using SADFM.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Domain.Services
{
    public class PatientService
    {

        #region Fields

        private readonly string _endpoint;

        #endregion

        #region Constructors

        public PatientService(string endpoint)
        {
            _endpoint = endpoint;
        }

        #endregion

        #region Public Methods

        public List<Patient> List(string username, out int totalRecords, int pageNumber = 1, int pageSize = 10, string query = null, string columnName = "Firstname", bool sortDirectionIsAsc = true)
        {
            totalRecords = 0;
            return null;
        }

        #endregion
    }
}
