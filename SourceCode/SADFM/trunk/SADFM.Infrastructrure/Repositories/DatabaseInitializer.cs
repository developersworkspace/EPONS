using SADFM.Infrastructure.Persistence;
using SADFM.Infrastructure.Persistence.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Infrastructure.Repositories
{
    public class DatabaseInitializer : CreateDatabaseIfNotExists<SADFMContext>
    {
        protected override void Seed(SADFMContext context)
        {

            Status statusActive = new Status("Active");

            //Statuses
            context.Status.Add(statusActive);
            context.Status.Add(new Status("Inactive"));


            //Accounts
            context.Accounts.Add(new Account("yoda", "Z0r8@_THE_Gr33k", "info@returntrue.co.za", "Return", "True", statusActive));


            //Titles



            //AdmissionTypes



            //DischargeTypes


            //Countries



            //Cities


            //Provinces



            //ICD10 Codes



            //Languages



            //Genders


            context.SaveChanges();

            base.Seed(context);
        }
    }
}
