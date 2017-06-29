using SADFM.Infrastructure.Repositories;
using SADFM.Infrastructure.Persistence;
using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.DatabaseMigrator
{
    class Program
    {
        static void Main(string[] args)
        {
            Stopwatch sw = new Stopwatch();

            SADFMEntities fromContext = new SADFMEntities();
            SADFMContext toContext = new SADFMContext();

            var icd10Codes = fromContext.ListItems.Where(x => x.Parent.Name == "ICD10").OrderBy(x => x.Code).Take(0);
            var facilities1 = fromContext.Providers;
            var facilities2 = fromContext.ListItems.Where(x => x.Parent.Name == "Funders");
            var careplans = fromContext.ListItems.Where(x => x.Parent.Name == "Scale");
            var impairmentGroups = fromContext.ListItems.Where(x => x.Parent.Name == "ImpairmentClass");
            var genders = fromContext.ListItems.Where(x => x.Parent.Name == "Gender");
            var roleGroups = fromContext.ListItems.Where(x => x.Parent.Name == "Role");
            var frequencies = fromContext.ListItems.Where(x => x.Parent.Name == "Frequency");
            var races = fromContext.ListItems.Where(x => x.Parent.Name == "Race");
            var countries = fromContext.ListItems.Where(x => x.Parent.Name == "Country");
            var languages = fromContext.ListItems.Where(x => x.Parent.Name == "Language");
            var medicalSchemes = fromContext.ListItems.Where(x => x.Parent.Name == "MedicalScheme");
            var titles = fromContext.ListItems.Where(x => x.Parent.Name == "Title");
            var admissionTypes = fromContext.ListItems.Where(x => x.Parent.Name == "AdmissionStatus");
            var patients = fromContext.Patients;
            var accounts = fromContext.Accounts;
            var professionalBodies = fromContext.ListItems.Where(x => x.Parent.Name == "ProfessionalBodies");
            var serviceTypeGroups = fromContext.ListItems.Where(x => x.Parent.Name == "ProviderUnit");

            var statusActive = toContext.Status.Single(x => x.Name == "Active");

            sw.Start();

            for (int i = 0; i < icd10Codes.Count(); i = i + 1000)
            {
                Console.WriteLine("Importing ICD10 Codes...");
                foreach (var item in icd10Codes.Skip(i).Take(1000))
                {
                    toContext.ICD10Code.Add(new Infrastructure.Persistence.Models.ICD10Code(item.Name, item.Description));
                }

                saveChanges(toContext);

                Console.WriteLine("ICD10 Codes successfully imported. {0} ms", sw.ElapsedMilliseconds);

            }

            Console.WriteLine("Importing Countries...");
            foreach (var item in countries)
            {

                var country = new Infrastructure.Persistence.Models.Country(item.Description);

                foreach (var childItem in item.Childs)
                {
                    var province = new Infrastructure.Persistence.Models.Province(childItem.Description);

                    foreach (var childChildItem in childItem.Childs)
                    {
                        province.AddCity(new Infrastructure.Persistence.Models.City(childChildItem.Description));
                    }

                    country.AddProvince(province);
                }

                toContext.Countries.Add(country);
            }

            saveChanges(toContext);

            Console.WriteLine("Countries successfully imported. {0} ms", sw.ElapsedMilliseconds);


            Console.WriteLine("Importing Service Type Groups...");
            foreach (var item in serviceTypeGroups)
            {

                var serviceTypeGroup = new Infrastructure.Persistence.Models.ServiceTypeGroup(item.Description, item.Code, item.Value);

                foreach (var childItem in item.Childs)
                {
                    serviceTypeGroup.AddServiceType(new Infrastructure.Persistence.Models.ServiceType(childItem.Name, item.Code));
                }

                toContext.ServiceTypeGroups.Add(serviceTypeGroup);
            }

            saveChanges(toContext);

            Console.WriteLine("Service Type Groups successfully imported. {0} ms", sw.ElapsedMilliseconds);

            Console.WriteLine("Importing Role Groups...");
            foreach (var item in roleGroups)
            {

                var roleGroup = new Infrastructure.Persistence.Models.RoleGroup(item.Description);

                foreach (var childItem in item.Childs)
                {
                    roleGroup.AddRoles(new Infrastructure.Persistence.Models.Role(childItem.Name));
                }

                toContext.RoleGroups.Add(roleGroup);
            }

            saveChanges(toContext);

            Console.WriteLine("Role Groups successfully imported. {0} ms", sw.ElapsedMilliseconds);


            Console.WriteLine("Importing Facilities...");
            foreach (var item in facilities1)
            {
                toContext.Facilities.Add(new Infrastructure.Persistence.Models.Facility(item.Name, (double)item.MonthlyRate.Value));
            }

            saveChanges(toContext);

            Console.WriteLine("Facilities successfully imported. {0} ms", sw.ElapsedMilliseconds);

            Console.WriteLine("Importing Facilities...");
            foreach (var item in facilities2)
            {
                toContext.Facilities.Add(new Infrastructure.Persistence.Models.Facility(item.Name, Convert.ToDouble(item.Value)).SetAsFunder());
            }

            saveChanges(toContext);

            Console.WriteLine("Facilities successfully imported. {0} ms", sw.ElapsedMilliseconds);


            Console.WriteLine("Importing Medical Schemes...");
            foreach (var item in medicalSchemes)
            {

                var medicalScheme = new Infrastructure.Persistence.Models.MedicalScheme(item.Name);

                foreach (var link in item.Funders)
                {
                    var facility = toContext.Facilities.SingleOrDefault(x => x.Name == link.Funder.Name);

                    medicalScheme.AddFacility(facility);
                }

                toContext.MedicalSchemes.Add(medicalScheme);
            }

            saveChanges(toContext);

            Console.WriteLine("Medical Schemes successfully imported. {0} ms", sw.ElapsedMilliseconds);

            Console.WriteLine("Importing Admission Types...");
            foreach (var item in admissionTypes)
            {
                toContext.AdmissionTypes.Add(new Infrastructure.Persistence.Models.AdmissionType(item.Name));
            }

            saveChanges(toContext);

            Console.WriteLine("Admission Types successfully imported. {0} ms", sw.ElapsedMilliseconds);


            Console.WriteLine("Importing Genders...");
            foreach (var item in genders)
            {
                toContext.Genders.Add(new Infrastructure.Persistence.Models.Gender(item.Name));
            }

            saveChanges(toContext);

            Console.WriteLine("Genders successfully imported. {0} ms", sw.ElapsedMilliseconds);


            Console.WriteLine("Importing Titles...");

            foreach (var item in titles)
            {
                toContext.Titles.Add(new Infrastructure.Persistence.Models.Title(item.Name));
            }

            saveChanges(toContext);

            Console.WriteLine("Titles successfully imported. {0} ms", sw.ElapsedMilliseconds);


            Console.WriteLine("Importing Races...");
            foreach (var item in races)
            {
                toContext.Races.Add(new Infrastructure.Persistence.Models.Race(item.Name));
            }

            saveChanges(toContext);

            Console.WriteLine("Races successfully imported. {0} ms", sw.ElapsedMilliseconds);


            Console.WriteLine("Importing Scales...");
            foreach (var item in careplans)
            {

                var careplan = new Infrastructure.Persistence.Models.Careplan(item.Name, item.SortOrder.HasValue ? item.SortOrder.Value : 100);

                foreach (var childItem in item.Childs)
                {
                    careplan.AddItems(new Infrastructure.Persistence.Models.ScoreItem(childItem.Name, childItem.Description, childItem.SortOrder.Value));
                }

                toContext.Careplans.Add(careplan);
            }

            saveChanges(toContext);

            Console.WriteLine("Scales successfully imported. {0} ms", sw.ElapsedMilliseconds);


            Console.WriteLine("Importing Professional Body...");
            foreach (var item in professionalBodies)
            {
                toContext.ProfessionalBodies.Add(new Infrastructure.Persistence.Models.ProfessionalBody(item.Name));
            }

            saveChanges(toContext);

            Console.WriteLine("Professional Body successfully imported. {0} ms", sw.ElapsedMilliseconds);

            Console.WriteLine("Importing Accounts...");
            foreach (var item in accounts)
            {
                Infrastructure.Persistence.Models.Account account = new Infrastructure.Persistence.Models.Account(item.Username, item.Password, item.EmailAddress, item.FirstName, item.LastName, statusActive);

                if (item.Title != null)
                {
                    Infrastructure.Persistence.Models.Title title = toContext.Titles.SingleOrDefault(x => x.Name == item.Title.Name);

                    account.UpdateTitle(title);
                }

                if (item.ProfessionalBody != null)
                {
                    Infrastructure.Persistence.Models.ProfessionalBody professionalBody = toContext.ProfessionalBodies.SingleOrDefault(x => x.Name == item.ProfessionalBody.Name);

                    account.UpdateProfessionalBody(professionalBody, item.RegistrationNumber, item.PracticeNumber);
                }

                toContext.Accounts.Add(account);
            }

            saveChanges(toContext);

            Console.WriteLine("Accounts successfully imported. {0} ms", sw.ElapsedMilliseconds);


            Console.WriteLine("Importing Patients...");
            foreach (var item in patients)
            {
                var account = toContext.Accounts.SingleOrDefault(x => x.Username == item.Account.Username);
                var title = toContext.Titles.SingleOrDefault(x => x.Name == item.Title.Name);
                var race = toContext.Races.SingleOrDefault(x => x.Name == item.Race.Name);
                var gender = toContext.Genders.SingleOrDefault(x => x.Name == item.Gender.Name);
                var medicalScheme = toContext.MedicalSchemes.SingleOrDefault(x => x.Name == item.MedicalScheme.Name);
                var country = toContext.Countries.SingleOrDefault(x => x.Name == item.Country.Name);
                var province = toContext.Provinces.SingleOrDefault(x => x.Name == item.Province.Name && x.CountryId == country.CountryId);
                var city = toContext.Cities.SingleOrDefault(x => x.Name == item.City.Name && x.ProvinceId == province.ProvinceId);
                var residentialEnviromentType = toContext.ResidentialEnviromentTypes.SingleOrDefault(x => x.Name == item.ResidentialEnviromentType.Name);
                var admissionType = toContext.AdmissionTypes.SingleOrDefault(x => x.Name == item.AdmitFrom.Name);

                var patient = new Infrastructure.Persistence.Models.Patient(account, item.IDNumber, title, item.FirstName, item.LastName, item.BirthDate.Value, gender, race);

                patient.UpdateAddres(account, country, province, city, item.Street, item.PostalCode, residentialEnviromentType);
                patient.UpdateMedicalScheme(account, medicalScheme, item.MedicalSchemeMembershipNumber);
                patient.UpdatNextOfKin(account, item.NextOfKinName, item.NextOfKinContact, item.NextOfKinEmail, item.NextOfKinRelationship);
                patient.UpdateAdmissionType(account, admissionType);

                foreach (var patientScale in item.PatientScales)
                {

                    var careplan = toContext.Careplans.SingleOrDefault(x => x.Name == patientScale.Scale.Name);
                    var frequency = toContext.Frequencies.SingleOrDefault(x => x.Name == patientScale.Frequency.Name);
                    var facility = toContext.Facilities.SingleOrDefault(x => x.Name == patientScale.Provider.Name);

                    patient.AddCareplan(careplan, frequency, facility);
                }

                foreach (var cse in item.Cases)
                {
                    var cAccount = toContext.Accounts.SingleOrDefault(x => x.Username == cse.Account.Username);
                    var cIcd10 = toContext.ICD10Code.SingleOrDefault(x => x.Code == cse.ICD10Code.Code);
                    var cAdmissionStatus = toContext.AdmissionStatus.SingleOrDefault(x => x.Name == cse.AdmissionStatus.Name);
                    var c = new Infrastructure.Persistence.Models.Case(cAccount, cIcd10, cse.StartDate, cse.EndDate, cAdmissionStatus);

                    patient.AddCase(c);
                }

                foreach (var pProvider in item.PatientProviders)
                {
                    var facility = toContext.Facilities.SingleOrDefault(x => x.Name == pProvider.Provider.Name);
                    var cse = toContext.Cases.First();
                    var teamMember = toContext.Accounts.SingleOrDefault(x => x.Username == pProvider.Account.Username);

                    patient.AddFacility(facility, cse, teamMember);
                }


                toContext.Patients.Add(patient);

            }

            saveChanges(toContext);

            Console.WriteLine("Patients successfully imported. {0} ms", sw.ElapsedMilliseconds);


            sw.Stop();
            Console.ReadLine();

        }

        static void saveChanges(SADFMContext toContext)
        {
            try
            {
                toContext.SaveChanges();
            }
            catch (DbEntityValidationException e)
            {
                Console.WriteLine(e.Message);
            }
            catch (DbUpdateException e)
            {
                Console.WriteLine(e.Message);
            }
        }
    }
}
