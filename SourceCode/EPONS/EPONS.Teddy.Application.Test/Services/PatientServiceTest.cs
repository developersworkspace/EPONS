using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using EPONS.Teddy.Application.Services;
using System.Data;
using System.Data.SqlClient;
using EPONS.Teddy.Application.Entities;
using EPONS.Teddy.Application.Repositories;
using System.Linq;
using EPONS.Teddy.Application.Exceptions;
using System.Collections.Generic;
using System.Threading;

namespace EPONS.Teddy.Application.Test.Services
{
    [TestClass]
    public class PatientServiceTest
    {
        protected Bogus.DataSets.Name _nameDataSet = new Bogus.DataSets.Name();
        protected Bogus.DataSets.Date _dateDataSet = new Bogus.DataSets.Date();

        protected Random _random = new Random();

        [TestMethod]
        [ExpectedException(typeof(BusinessRuleException))]
        public void AllocateTeamMember_GivenNoReasonForAdmission_WherePatientHasNoTeamMembers()
        {
            // Arrange
            var connection = GetConnection();
            ListRepository listRepository = new ListRepository(connection);

            PatientService patientService = new PatientService(connection);

            Patient patient = new Patient()
            {
                Firstname = _nameDataSet.FirstName(),
                Lastname = _nameDataSet.LastName(),
                DateOfBirth = _dateDataSet.Past()
            };

            Guid patientId = patientService.Create(patient);
            Guid facilityId = listRepository.GetFacilities().First(x => x.Name == "Tijger Mental Health Clinic Loevenstein").Id;
            Guid userId = listRepository.GetFacilityUsers(facilityId).First().Id;

            TeamMember teamMember = new TeamMember()
            {
                FacilityId = facilityId,
                PatientId = patientId,
                UserIds = new Guid[] {
                    userId
                    }
            };

            // Act

            patientService.AllocateTeamMember(teamMember);

            // Assert

        }

        [TestMethod]
        [ExpectedException(typeof(BusinessRuleException))]
        public void AllocateTeamMember_GivenReasonForAdmissionAndNoAdmissionTypeId_WherePatientHasNoTeamMembers()
        {
            // Arrange
            var connection = GetConnection();
            ListRepository listRepository = new ListRepository(connection);

            PatientService patientService = new PatientService(connection);

            Patient patient = new Patient()
            {
                Firstname = _nameDataSet.FirstName(),
                Lastname = _nameDataSet.LastName(),
                DateOfBirth = _dateDataSet.Past()
            };

            Guid patientId = patientService.Create(patient);
            Guid facilityId = listRepository.GetFacilities().First(x => x.Name == "Tijger Mental Health Clinic Loevenstein").Id;
            Guid userId = listRepository.GetFacilityUsers(facilityId).First().Id;

            TeamMember teamMember = new TeamMember()
            {
                FacilityId = facilityId,
                PatientId = patientId,
                ReasonForAdmissionName = "G46.4 - Cerebellar stroke syndrome (I60-I67+)",
                ReasonForAdmissionTimestamp = _dateDataSet.Past(),
                UserIds = new Guid[] {
                    userId
                    }
            };

            // Act

            patientService.AllocateTeamMember(teamMember);

            // Assert

        }


        [TestMethod]
        public void AllocateTeamMember_WherePatientHasNoTeamMembers()
        {
            // Arrange
            var connection = GetConnection();
            ListRepository listRepository = new ListRepository(connection);

            PatientService patientService = new PatientService(connection);

            Patient patient = new Patient()
            {
                Firstname = _nameDataSet.FirstName(),
                Lastname = _nameDataSet.LastName(),
                DateOfBirth = _dateDataSet.Past()
            };

            Guid patientId = patientService.Create(patient);
            Guid facilityId = listRepository.GetFacilities().First(x => x.Name == "Tijger Mental Health Clinic Loevenstein").Id;
            Guid userId = listRepository.GetFacilityUsers(facilityId).First().Id;
            Guid admissionTypeId = listRepository.GetAdmissionTypes().First().Id;

            TeamMember teamMember = new TeamMember()
            {
                FacilityId = facilityId,
                PatientId = patientId,
                ReasonForAdmissionName = "G46.4 - Cerebellar stroke syndrome (I60-I67+)",
                ReasonForAdmissionTimestamp = _dateDataSet.Past(),
                AdmissionTypeId = admissionTypeId,
                UserIds = new Guid[] {
                    userId
                    }
            };

            // Act

            patientService.AllocateTeamMember(teamMember);

            // Assert

        }

        [TestMethod]
        [ExpectedException(typeof(BusinessRuleException))]
        public void DeallocateTeamMember_GivenNoDischargeTypeId_WhereDischaringLastTeamMember()
        {
            // Arrange
            var connection = GetConnection();
            ListRepository listRepository = new ListRepository(connection);
            PatientRepository patientRepository = new PatientRepository(connection);

            PatientService patientService = new PatientService(connection);

            Patient patient = new Patient()
            {
                Firstname = _nameDataSet.FirstName(),
                Lastname = _nameDataSet.LastName(),
                DateOfBirth = _dateDataSet.Past()
            };

            Guid patientId = patientService.Create(patient);
            Guid facilityId = listRepository.GetFacilities().First(x => x.Name == "Tijger Mental Health Clinic Loevenstein").Id;
            Guid[] userIds = listRepository.GetFacilityUsers(facilityId).Select(x => x.Id).ToArray();
            Guid admissionTypeId = listRepository.GetAdmissionTypes().First().Id;

            TeamMember teamMember = new TeamMember()
            {
                FacilityId = facilityId,
                PatientId = patientId,
                ReasonForAdmissionName = "G46.4 - Cerebellar stroke syndrome (I60-I67+)",
                ReasonForAdmissionTimestamp = _dateDataSet.Past(),
                AdmissionTypeId = admissionTypeId,
                UserIds = userIds
            };

            patientService.AllocateTeamMember(teamMember);

            try
            {
                foreach (var item in userIds.Skip(1))
                    patientService.DeallocateTeamMember(patientId, item);

            }catch(Exception ex)
            {
                throw;
            }

            // Act
            patientService.DeallocateTeamMember(patientId, userIds.First());


            // Assert

        }

        [TestMethod]
        public void FindCompletedEpisodesOfCare()
        {
            // Arrange
            var connection = GetConnection();
            ListRepository listRepository = new ListRepository(connection);
            PatientRepository patientRepository = new PatientRepository(connection);

            PatientService patientService = new PatientService(connection);

            Patient patient = new Patient()
            {
                Firstname = _nameDataSet.FirstName(),
                Lastname = _nameDataSet.LastName(),
                DateOfBirth = _dateDataSet.Past()
            };

            Guid patientId = patientService.Create(patient);
            Guid facilityId = listRepository.GetFacilities().First(x => x.Name == "Tijger Mental Health Clinic Loevenstein").Id;
            Guid[] userIds = listRepository.GetFacilityUsers(facilityId).Select(x => x.Id).ToArray();
            Guid admissionTypeId = listRepository.GetAdmissionTypes().First().Id;
            Guid dischargeTypeId = listRepository.GetDischargeTypes().First().Id;

            userIds = Shuffle<Guid>(userIds, _random).ToArray();

            TeamMember teamMember1 = new TeamMember()
            {
                FacilityId = facilityId,
                PatientId = patientId,
                ReasonForAdmissionName = "G46.4 - Cerebellar stroke syndrome (I60-I67+)",
                ReasonForAdmissionTimestamp = _dateDataSet.Past(),
                AdmissionTypeId = admissionTypeId,
                UserIds = userIds.Take(1).ToArray()
            };

            patientService.AllocateTeamMember(teamMember1);

            TeamMember teamMember2 = new TeamMember()
            {
                FacilityId = facilityId,
                PatientId = patientId,
                UserIds = userIds.Skip(1).ToArray()
            };

            patientService.AllocateTeamMember(teamMember2);


            userIds = Shuffle<Guid>(userIds, _random).ToArray();

            try
            {
                foreach (var item in userIds.Skip(1))
                    patientService.DeallocateTeamMember(patientId, item, null, null, null);

            }
            catch (Exception ex)
            {
                throw;
            }

            patientService.DeallocateTeamMember(patientId, userIds.First(), dischargeTypeId, null, null);


            ////
            Thread.Sleep(5000);

            userIds = Shuffle<Guid>(userIds, _random).ToArray();

            TeamMember teamMember3 = new TeamMember()
            {
                FacilityId = facilityId,
                PatientId = patientId,
                ReasonForAdmissionName = "G46.4 - Cerebellar stroke syndrome (I60-I67+)",
                ReasonForAdmissionTimestamp = _dateDataSet.Past(),
                AdmissionTypeId = admissionTypeId,
                UserIds = userIds.Take(1).ToArray()
            };

            patientService.AllocateTeamMember(teamMember1);

            TeamMember teamMember4 = new TeamMember()
            {
                FacilityId = facilityId,
                PatientId = patientId,
                UserIds = userIds.Skip(1).ToArray()
            };

            patientService.AllocateTeamMember(teamMember2);


            userIds = Shuffle<Guid>(userIds, _random).ToArray();

            try
            {
                foreach (var item in userIds.Skip(1))
                    patientService.DeallocateTeamMember(patientId, item);

            }
            catch (Exception ex)
            {
                throw;
            }

            patientService.DeallocateTeamMember(patientId, userIds.First(), dischargeTypeId, null, null);

            //////

            // Act
            var result = patientRepository.FindCompletedEpisodesOfCare(patientId, facilityId);


            // Assert
            Assert.Equals(2, result.Count);
           

        }


        protected const string _connectionString = "data source=developersworkspace.co.za;Initial Catalog=SADFM;User ID=EPONS;Password=H@?PT@8sUeL32vBE;";

        protected IDbConnection GetConnection()
        {
            return new SqlConnection(_connectionString);
        }

        protected static IEnumerable<T> Shuffle<T>(IEnumerable<T> source, Random rng)
        {
            T[] elements = source.ToArray();
            // Note i > 0 to avoid final pointless iteration
            for (int i = elements.Length - 1; i > 0; i--)
            {
                // Swap element "i" with a random earlier element it (or itself)
                int swapIndex = rng.Next(i + 1);
                yield return elements[swapIndex];
                elements[swapIndex] = elements[i];
                // we don't actually perform the swap, we can forget about the
                // swapped element because we already returned it.
            }

            // there is one item remaining that was not returned - we return it now
            yield return elements[0];
        }
    }
}
