using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using SADFM.Infrastructure.Repositories;
using SADFM.Application.Services;
using SADFM.Application.Repositories;
using SADFM.Infrastructure.Persistence;

namespace SADFM.Infrastructure.Test
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void DatabaseInitailization()
        {

            SADFMContext context = new SADFMContext();


            context.SaveChanges();
        }

        [TestMethod]
        public void FacilityVolumeReport()
        {
            ReportRepository reportRepository = new ReportRepository();


            reportRepository.GetFacilityVolumeReport(Guid.Parse("B405ECC1-3613-4A14-8FED-EF533DFB20CC"),DateTime.UtcNow.AddYears(-1),DateTime.UtcNow.AddYears(1));
        }
    }
}
