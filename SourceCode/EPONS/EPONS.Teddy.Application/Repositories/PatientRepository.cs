using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using EPONS.Teddy.Application.Entities;
using static Dapper.SqlMapper;
using Epons.Gateway.Helpers;

namespace EPONS.Teddy.Application.Repositories
{
    public class PatientRepository : Repository
    {
        private IDbConnection _connection;

        protected IDbConnection GetConnection()
        {
            string host = ConfigurationManager.AppSettings["DatabaseHost"];
            string user = ConfigurationManager.AppSettings["DatabaseUser"];
            string name = ConfigurationManager.AppSettings["DatabaseName"];
            string password = ConfigurationManager.AppSettings["DatabasePassword"];

            string connectionString = $"data source={host};Initial Catalog={name};User ID={user};Password={Crypto.Decrypt(password)};";

            if (_connection == null)
                _connection = new SqlConnection(connectionString);

            return _connection;
        }

        public PatientRepository(IDbConnection connection) : base(connection)
        {
        }

        public List<EntityViews.Patient> List(Entities.User user, string type, int pageNumber, int pageSize, string query, out int totalRecords)
        {
            Enums.UserType userType = user.IsSuperAdmin ? Enums.UserType.SuperAdmin : user.Permissions.Count(x => x.Name == "Case Manager") > 0 ? Enums.UserType.CaseManager : user.Permissions.Count(x => x.Name == "Administrator") > 0 ? Enums.UserType.Administrator : Enums.UserType.Other;
            Enums.PatientListType patientTypeList = type == "active" ? Enums.PatientListType.Active : type == "discharged" ? Enums.PatientListType.Inactive : Enums.PatientListType.Deceased;


            GridReader gridReader = null;

            if (patientTypeList == Enums.PatientListType.Active)
                gridReader = QueryMultiple("[EPONS].[ListActivePatients]", new
                {
                    start = (pageNumber - 1) * pageSize,
                    length = pageSize,
                    userId = userType == Enums.UserType.Other ? user.Id : (Guid?)null,
                    facilityId = userType == Enums.UserType.SuperAdmin ? null : (user.CurrentFacility == null ? (Guid?)null : user.CurrentFacility.Id),
                    query = query
                });
            else if (userType != Enums.UserType.SuperAdmin && patientTypeList == Enums.PatientListType.Inactive)
                gridReader = QueryMultiple("[EPONS].[ListDischargedPatients]", new
                {
                    start = (pageNumber - 1) * pageSize,
                    length = pageSize,
                    userId = userType == Enums.UserType.Other ? user.Id : (Guid?)null,
                    facilityId = userType == Enums.UserType.SuperAdmin ? null : (user.CurrentFacility == null ? (Guid?)null : user.CurrentFacility.Id),
                    query = query
                });
            else if (userType != Enums.UserType.SuperAdmin && patientTypeList == Enums.PatientListType.Deceased)
                gridReader = QueryMultiple("[EPONS].[ListDeceasedPatients]", new
                {
                    start = (pageNumber - 1) * pageSize,
                    length = pageSize,
                    userId = userType == Enums.UserType.Other ? user.Id : (Guid?)null,
                    facilityId = userType == Enums.UserType.SuperAdmin ? null : (user.CurrentFacility == null ? (Guid?)null : user.CurrentFacility.Id),
                    query = query
                });
            else
            {
                totalRecords = 0;
                return new List<EntityViews.Patient>();
            }

            IEnumerable<dynamic> patientResultSet = gridReader.Read<dynamic>();
            IEnumerable<dynamic> patientFacilityResultSet = gridReader.Read<dynamic>();
            IEnumerable<dynamic> patientCountResultSet = gridReader.Read<dynamic>();

            totalRecords = patientCountResultSet.FirstOrDefault().Count;

            return patientResultSet.Select(x => new EntityViews.Patient()
            {
                Firstname = x.Firstname,
                Lastname = x.Lastname,
                DateOfBirth = x.DateOfBirth == null ? DateTime.Now : x.DateOfBirth,
                Gender = x.Gender,
                Id = x.Id,
                MedicalScheme = x.MedicalScheme,
                Race = x.Race,
                Facilities = string.Join(", ", patientFacilityResultSet.Where(y => y.PatientId == x.Id).Select(y => y.FacilityName))
            }).ToList();
        }

        internal Guid SavePatient(Patient patient)
        {
            var data = Query<dynamic>("[EPONS].[CreatePatient]", new
            {
                firstname = patient.Firstname,
                lastname = patient.Lastname,
                dateOfBirth = patient.DateOfBirth,
                cityId = patient.CityId,
                contactNumber = patient.ContactNumber,
                contactNumberOfNextOfKin = patient.ContactNumberOfNextOfKin,
                emailAddressOfNextOfKin = patient.EmailAddressOfNextOfKin,
                genderId = patient.GenderId,
                identificationNumber = patient.IdentificationNumber,
                medicalSchemeId = patient.MedicalSchemeId,
                medicalSchemeNumber = patient.MedicalSchemeNumber,
                nameOfNextOfKin = patient.NameOfNextOfKin,
                postalCode = patient.PostalCode,
                raceId = patient.RaceId,
                relantionshipOfNextOfKin = patient.RelationshipOfNextOfKin,
                residentialEnvironmentId = patient.ResidentialEnvironmentId,
                street = patient.Street,
                titleId = patient.TitleId,
                avatar = (byte[])null
            });

            return data.ElementAt(0).Id;
        }

        internal IList<EntityViews.Survey> FindSurveysByPatientId(Guid patientId)
        {
            return Query<EntityViews.Survey>("[EPONS].[FindSurveysByPatientId]", new
            {
                patientId = patientId
            });
        }

        internal int _CreateRefferingDr(EpisodeOfCare model)
        {

            string host = ConfigurationManager.AppSettings["DatabaseHost"];
            string user = ConfigurationManager.AppSettings["DatabaseUser"];
            string name = ConfigurationManager.AppSettings["DatabaseName"];
            string password = ConfigurationManager.AppSettings["DatabasePassword"];

            string connectionString = $"data source={host};Initial Catalog={name};User ID={user};Password={Crypto.Decrypt(password)};";

            int drid;
            using (SqlConnection conn = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand("[EPONS].[CreateDoctor]", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                // set up the parameters

                cmd.Parameters.Add("@doctorName", SqlDbType.VarChar, 256).Value = model.ReferringDoctorName ?? "";
                cmd.Parameters.Add("@contactNumber", SqlDbType.VarChar, 64).Value = model.ReferringDoctorNumber ?? "";
                cmd.Parameters.Add("@emailAddress", SqlDbType.VarChar, 256).Value = model.ReferringDoctorEmail ?? "";
                cmd.Parameters.Add("@practiceName", SqlDbType.VarChar, 256).Value = model.ReferringDoctorPracticeName ?? "";
                cmd.Parameters.Add("@hpcsaNumber", SqlDbType.VarChar, 256).Value = model.ReferringDoctorHPCSANumber ?? "";
                cmd.Parameters.Add("@isActive", SqlDbType.Bit).Value = true;

                //cmd.Parameters.Add("@doctorId", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@doctorId", SqlDbType.Int).Direction = ParameterDirection.Output;


                // open connection and execute stored procedure
                conn.Open();
                cmd.ExecuteNonQuery();

                // read output value from @doctorId
                drid = Convert.ToInt32(cmd.Parameters["@doctorId"].Value);
                conn.Close();
            }
            return drid;
        }

        internal int _CreateAttendingDr(EpisodeOfCare model)
        {

            string host = ConfigurationManager.AppSettings["DatabaseHost"];
            string user = ConfigurationManager.AppSettings["DatabaseUser"];
            string name = ConfigurationManager.AppSettings["DatabaseName"];
            string password = ConfigurationManager.AppSettings["DatabasePassword"];

            string connectionString = $"data source={host};Initial Catalog={name};User ID={user};Password={Crypto.Decrypt(password)};";

            int drid;

            using (SqlConnection conn = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand("[EPONS].[CreateDoctor]", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                // set up the parameters

                cmd.Parameters.Add("@doctorName", SqlDbType.VarChar, 256).Value = model.AttendingDoctorName ?? "";
                cmd.Parameters.Add("@contactNumber", SqlDbType.VarChar, 64).Value = model.AttendingDoctorNumber ?? "";
                cmd.Parameters.Add("@emailAddress", SqlDbType.VarChar, 256).Value = model.AttendingDoctorEmail ?? "";
                cmd.Parameters.Add("@practiceName", SqlDbType.VarChar, 256).Value = model.AttendingDoctorPracticeName ?? "";
                cmd.Parameters.Add("@hpcsaNumber", SqlDbType.VarChar, 256).Value = model.AttendingDoctorHPCSANumber ?? "";
                cmd.Parameters.Add("@isActive", SqlDbType.Bit).Value = true;

                cmd.Parameters.Add("@doctorId", SqlDbType.Int).Direction = ParameterDirection.Output;


                // open connection and execute stored procedure
                conn.Open();
                cmd.ExecuteNonQuery();

                // read output value from @doctorId
                drid = Convert.ToInt32(cmd.Parameters["@doctorId"].Value);
                conn.Close();
            }
            return drid;
        }

        internal void _CreateEpisodeOfCare(EpisodeOfCare model)
        {
            if (model.ReferringDoctorName != null)
            {
                model.ReferringDoctorId = _CreateRefferingDr(model);
            }
            if (model.AttendingDoctorName != null)
            {
                model.AttendingDoctorId = _CreateAttendingDr(model);
            }

            Execute("[EPONS].[CreateEpisodeOfCare]", new
            {
                patientId = model.PatientId,
                facilityId = model.FacilityId,
                userId = model.userId,
                reasonForAdmissionId = model.ReasonForAdmissionId,
                reasonForAdmissionTimestamp = model.ReasonForAdmissionTimestamp,
                allocationNumber = model.AllocationNumber,
                impairmentGroupId = model.ImpairmentGroupId,
                admissionTypeId = model.AdmissionTypeId,
                referringDoctorId = model.ReferringDoctorId,
                attendingDoctorId = model.AttendingDoctorId
            });
        }

        internal void DeallocateTeamMember(Guid patientId, Guid userId)
        {
            Execute("[EPONS].[DeallocateTeamMember]", new
            {
                patientId = patientId,
                userId = userId
            });
        }

        internal EntityViews.EpisodeOfCare FindCurrentEpisodeOfCare(Guid patientId)
        {
            return QueryOne<EntityViews.EpisodeOfCare>("[EPONS].[FindCurrentEpisodeOfCare]", new
            {
                patientId = patientId
            });
        }

        internal EntityViews.EpisodeOfCare _FindCurrentEpisodeOfCare(Guid episodeOFcareId)
        {
            return QueryOne<EntityViews.EpisodeOfCare>("[EPONS].[FindCurrentEpisodeOfCare]", new
            {
                episodeOfCareId = episodeOFcareId
            });
        }

        internal List<EntityViews.EpisodeOfCare> ListEpisodesOfCare(Guid patientId, Guid facilityId)
        {
            return Query<EntityViews.EpisodeOfCare>("[EPONS].[ListEpisodesOfCareByPatientId]", new
            {
                patientId = patientId,
                facilityId = facilityId
            });
        }

        internal void AllocateTeamMember(Guid patientId, Guid userId, Guid facilityId)
        {
            Execute("[EPONS].[AllocateTeamMember]", new
            {
                userId = userId,
                patientId = patientId,
                facilityId = facilityId
            });
        }

        internal byte[] FindAvatar(Guid patientId)
        {
            var data = Query<dynamic>("[EPONS].[FindPatientAvatarById]", new
            {
                patientId = patientId
            });

            return data.FirstOrDefault() == null ? null : data.FirstOrDefault().Avatar;
        }

        internal void DeassignMeasurementTool(Guid patientId, Guid measurementToolId)
        {
            Execute("[EPONS].[DeassignMeasurementTool]", new
            {
                patientId = patientId,
                measurementToolId = measurementToolId
            });
        }

        internal void AssignMeasurementTool(Guid patientId, Guid measurementToolId, Guid frequencyId)
        {
            IList<Application.EntityViews.MeasurementTool> measurementTools = FindMeasurementTools(patientId);

            if (measurementTools.Count(x => x.Id == measurementToolId) == 0)
                Execute("[EPONS].[AssignMeasurementTool]", new
                {
                    patientId = patientId,
                    measurementToolId = measurementToolId,
                    frequencyId = frequencyId,
                    timestamp = DateTime.Now
                });
        }

        internal List<EntityViews.Patient> List(Guid facilityId)
        {
            return Query<EntityViews.Patient>("[EPONS].[ListPatientsByFacilityId]", new
            {
                facilityId = facilityId
            });
        }

        internal void DeletePatient(Guid patientId)
        {
            Execute("[EPONS].[DeletePatientById]", new
            {
                patientId = patientId
            });
        }

        internal IList<EntityViews.TeamMember> FindTeamMembers(Guid patientId, DateTime startDate, DateTime endDate)
        {
            var result = Query<dynamic>("[EPONS].[FindTeamMembersByPatientIdAndDateRange]", new
            {
                patientId = patientId,
                startDate = startDate,
                endDate = endDate
            });

            return result.GroupBy(x => new
            {
                TeamMemberId = x.TeamMemberId,
                UserId = x.UserId,
                AllocationDate = x.AllocationDate,
                DeallocationDate = x.DeallocationDate,
                Facility = x.Facility,
                Firstname = x.Firstname,
                Lastname = x.Lastname,
                Position = x.Position
            }).Select(x => new EntityViews.TeamMember()
            {
                AllocationDate = x.Key.AllocationDate,
                DeallocationDate = x.Key.DeallocationDate,
                Facility = x.Key.Facility,
                Firstname = x.Key.Firstname,
                Lastname = x.Key.Lastname,
                Permission = string.Join(", ", x.Select(y => y.Permission)),
                Position = x.Key.Position,
                Id = x.Key.UserId
            }).ToList();


        }

        internal List<EntityViews.EpisodeOfCare> FindCompletedEpisodesOfCare(Guid patientId, Guid facilityId)
        {
            var result = Query<EntityViews.EpisodeOfCare>("[EPONS].[FindCompletedEpisodesOfCare]", new
            {
                patientId = patientId,
                facilityId = facilityId
            });


            return result;
        }

        internal List<EntityViews.CompletedMeasurementTool> FindCompletedMeasurementTools(Guid patientId, DateTime startDate, DateTime endDate)
        {
            var result = Query<dynamic>("[EPONS].[FindCompletedMeasurementToolsByPatientIdAndDateRange]", new
            {
                patientId = patientId,
                startDate = startDate,
                endDate = endDate
            });

            return result
                .GroupBy(x => x.DataSetId)
                .Select(x => new EntityViews.CompletedMeasurementTool()
                {
                    EndDate = x.First().EndDate,
                    StartDate = x.First().StartDate,
                    Id = x.First().MeasurementToolId,
                    Name = x.First().MeasurementTool,
                    ScoreItems = x.OrderBy(y => y.ScoreItemSortOrder).ToDictionary(y => (string)y.ScoreItem, y => (int)y.ScoreValue)
                }).ToList();
        }

        public IList<EntityViews.MeasurementTool> FindMeasurementTools(Guid patientId, DateTime startDate, DateTime endDate)
        {
            return Query<EntityViews.MeasurementTool>("[EPONS].[FindMeasurementToolsByPatientIdAndDateRange]", new
            {
                patientId = patientId,
                startDate = startDate,
                endDate = endDate
            });
        }

        public void UpdatePatientAvatar(Guid patientId, byte[] avatar)
        {
            Execute("[EPONS].[UpdatePatientAvatar]", new
            {
                patientId = patientId,
                avatar = avatar
            });
        }

        public void UpdatePatient(Entities.Patient patient)
        {
            Execute("[EPONS].[UpdatePatient]", new
            {
                patientId = patient.Id,
                firstname = patient.Firstname,
                lastname = patient.Lastname,
                dateOfBirth = patient.DateOfBirth,
                genderId = patient.GenderId,
                raceId = patient.RaceId,
                identificationNumber = patient.IdentificationNumber,
                medicalSchemeId = patient.MedicalSchemeId,
                titleId = patient.TitleId,
                contactNumber = patient.ContactNumber,
                street = patient.Street,
                postalCode = patient.PostalCode,
                nameOfNextOfKin = patient.NameOfNextOfKin,
                contactNumberOfNextOfKin = patient.ContactNumberOfNextOfKin,
                medicalSchemeNumber = patient.MedicalSchemeNumber,
                cityId = patient.CityId,
                emailAddressOfNextOfKin = patient.EmailAddressOfNextOfKin,
                relantionshipOfNextOfKin = patient.RelationshipOfNextOfKin,
                residentialEnvironmentId = patient.ResidentialEnvironmentId,
             });
            foreach (var i in patient.SupportServices)
            {
                Execute("[EPONS].[UpdatePatientSupportService]", new
                {
                    patientId = patient.Id,
                    supportServiceId = i.Id,
                    text = i.Text
                });
            }
        }


        public IList<EntityViews.MeasurementTool> FindMeasurementTools(Guid patientId)
        {
            return Query<EntityViews.MeasurementTool>("[EPONS].[FindMeasurementToolsByPatientId]", new
            {
                patientId = patientId
            });
        }

        public IList<EntityViews.TeamMember> FindTeamMembers(Guid patientId)
        {
            var result = Query<dynamic>("[EPONS].[FindTeamMembersByPatientId]", new
            {
                patientId = patientId
            });

            return result.GroupBy(x => new
            {
                TeamMemberId = x.TeamMemberId,
                UserId = x.UserId,
                AllocationDate = x.AllocationDate,
                DeallocationDate = x.DeallocationDate,
                Facility = x.Facility,
                Firstname = x.Firstname,
                Lastname = x.Lastname,
                Position = x.Position
            }).Select(x => new EntityViews.TeamMember()
            {
                AllocationDate = x.Key.AllocationDate,
                DeallocationDate = x.Key.DeallocationDate,
                Facility = x.Key.Facility,
                Firstname = x.Key.Firstname,
                Lastname = x.Key.Lastname,
                Position = x.Key.Position,
                Permission = string.Join(", ", x.Select(y => y.Permission)),
                Id = x.Key.UserId
            }).ToList();
        }

        public Entities.Patient FindById(Guid id)
        {
            GridReader gridReader = QueryMultiple("[EPONS].[FindPatientById]", new
            {
                patientId = id
            });

            Entities.Patient patient = gridReader.Read<Entities.Patient>().FirstOrDefault();

            IEnumerable<ValueObjects.SupportService> supportServices = gridReader.Read<ValueObjects.SupportService>();

            IList<EntityViews.MeasurementTool> measurementTools = Query<EntityViews.MeasurementTool>("[EPONS].[FindMeasurementToolsByPatientId]", new
            {
                patientId = id
            });

            patient.SupportServices = supportServices.ToList();
            patient.Titles = Query<ValueObjects.ListItem>("[EPONS].[ListTitles]", null);
            patient.Genders = Query<ValueObjects.ListItem>("[EPONS].[ListGenders]", null);
            patient.Races = Query<ValueObjects.ListItem>("[EPONS].[ListRaces]", null);
            patient.Countries = Query<ValueObjects.ListItem>("[EPONS].[ListCountries]", null);
            patient.MedicalSchemes = Query<ValueObjects.ListItem>("[EPONS].[ListMedicalSchemes]", null);
            patient.ResidentialEnvironments = Query<ValueObjects.ListItem>("[EPONS].[ListResidentialEnvironments]", null);
            patient.SupportServicesList = Query<ValueObjects.ListItem>("[EPONS].[ListSupportServices]", null);
            return patient;
        }

        public Entities.Patient FindBase()
        {
            Entities.Patient patient = new Entities.Patient();
            
            patient.Titles = Query<ValueObjects.ListItem>("[EPONS].[ListTitles]", null);
            patient.Genders = Query<ValueObjects.ListItem>("[EPONS].[ListGenders]", null);
            patient.Races = Query<ValueObjects.ListItem>("[EPONS].[ListRaces]", null);
            patient.Countries = Query<ValueObjects.ListItem>("[EPONS].[ListCountries]", null);
            patient.MedicalSchemes = Query<ValueObjects.ListItem>("[EPONS].[ListMedicalSchemes]", null);
            patient.ResidentialEnvironments = Query<ValueObjects.ListItem>("[EPONS].[ListResidentialEnvironments]", null);
            patient.SupportServicesList = Query<ValueObjects.ListItem>("[EPONS].[ListSupportServices]", null);

            return patient;
        }

        public Entities.TeamMember FindBaseTeamMember(Guid patientId)
        {
            Entities.TeamMember teamMember = new Entities.TeamMember();

            teamMember.PatientId = patientId;
            teamMember.Facilities = Query<ValueObjects.ListItem>("[EPONS].[ListFacilities]", null);

            return teamMember;
        }

        public EntityViews.Patient FindByIdentificationNumber(string identificationNumber)
        {
            EntityViews.Patient patient = QueryOne<EntityViews.Patient>("[EPONS].[FindPatientByIdentificationNumber]", new
            {
                identificationNumber = identificationNumber
            });

            return patient;
        }

        public Entities.EpisodeOfCare FindEpisodeOfCareById(Guid episodeOfCareId)
        {
            Entities.EpisodeOfCare episodeOfCare = QueryOne<Entities.EpisodeOfCare>("[EPONS].[FindEpisodeOfCareById]", new
            {
                episodeOfCareId = episodeOfCareId
            });

            //string reasonForAdmissionName = null;
            //if (episodeOfCare.AdmissionTypeId != Guid.Empty)
            //{
            //    ListRepository _listRepository  = new ListRepository(GetConnection()); ;
            //    IList<ValueObjects.ListItem> icd10Codes = _listRepository.GetICD10CodesByCodes(episodeOfCare.AdmissionTypeId.ToString());
            //    reasonForAdmissionName = icd10Codes.FirstOrDefault().Name;
            //}
            //episodeOfCare.ReasonForAdmissionName = reasonForAdmissionName;
            var refDrID = episodeOfCare.ReferringDoctorId;
            if (refDrID != null)
            {
                Entities.Doctor refDr = QueryOne<Entities.Doctor>("[EPONS].[FindDoctorById]", new
                {
                    doctorid = episodeOfCare.ReferringDoctorId
                });
                episodeOfCare.ReferringDoctor = refDr;
                episodeOfCare.ReferringDoctorName = refDr.Name;
                episodeOfCare.ReferringDoctorNumber = refDr.ContactNumber;
                episodeOfCare.ReferringDoctorEmail = refDr.Email;
                episodeOfCare.ReferringDoctorPracticeName = refDr.PracticeName;
                episodeOfCare.ReferringDoctorHPCSANumber = refDr.HPCSANumber;
            }

            var attDrId = episodeOfCare.AttendingDoctorId;
            if (attDrId != null)
            {
                Entities.Doctor attDr = QueryOne<Entities.Doctor>("[EPONS].[FindDoctorById]", new
                {
                    doctorid = episodeOfCare.AttendingDoctorId
                });
                episodeOfCare.AttendingDoctor = attDr;
                episodeOfCare.AttendingDoctorName = attDr.Name;
                episodeOfCare.AttendingDoctorNumber = attDr.ContactNumber;
                episodeOfCare.AttendingDoctorEmail = attDr.Email;
                episodeOfCare.AttendingDoctorPracticeName = attDr.PracticeName;
                episodeOfCare.AttendingDoctorHPCSANumber = attDr.HPCSANumber;
            }

            return episodeOfCare;
        }

        public void UpdateEpisodeOfCare(Entities.EpisodeOfCare episodeOfCare)
        {
            if (episodeOfCare.ReferringDoctorId != null)
            {
                _UpdateRefferingDr(episodeOfCare);

            }
            if (episodeOfCare.AttendingDoctorId != null)
            {
                _UpdateAttendingDr(episodeOfCare);

            }



            Execute("[EPONS].[UpdateEpisodeOfCare]", new
            {
                EpisodeOfCareId=episodeOfCare.EpisodeOfCareId,
                PatientId = episodeOfCare.PatientId,
                FacilityId = episodeOfCare.FacilityId,
                ReasonForAdmissionId = episodeOfCare.ReasonForAdmissionId,
                ReasonForAdmissionTimestamp = episodeOfCare.ReasonForAdmissionTimestamp,
                AllocationNumber = episodeOfCare.AllocationNumber,
                ImpairmentGroupId = episodeOfCare.ImpairmentGroupId,
                AdmissionTypeId = episodeOfCare.AdmissionTypeId,
                ReferringDoctorId = episodeOfCare.ReferringDoctorId,
                AttendingDoctorId = episodeOfCare.AttendingDoctorId,
                DischargeTypeId = episodeOfCare.DischargeTypeId,
                deallocationTimestamp = episodeOfCare.DeallocationTimestamp
            });
            // TODO
            //_UpdateEpisodeOfCare(episodeOfCare);
        }


        internal int _UpdateEpisodeOfCare(EpisodeOfCare model)
        {
            string host = ConfigurationManager.AppSettings["DatabaseHost"];
            string user = ConfigurationManager.AppSettings["DatabaseUser"];
            string name = ConfigurationManager.AppSettings["DatabaseName"];
            string password = ConfigurationManager.AppSettings["DatabasePassword"];

            string connectionString = $"data source={host};Initial Catalog={name};User ID={user};Password={Crypto.Decrypt(password)};";

            using (SqlConnection conn = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand("[EPONS].[UpdateEpisodeOfCare] ", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                // set up the parameters

                cmd.Parameters.Add("@episodeOfCareId", SqlDbType.UniqueIdentifier, 256).Value = model.EpisodeOfCareId;
                cmd.Parameters.Add("@patientId", SqlDbType.UniqueIdentifier, 256).Value = model.PatientId;
                cmd.Parameters.Add("@facilityId", SqlDbType.UniqueIdentifier, 256).Value = model.FacilityId;
                cmd.Parameters.Add("@reasonForAdmissionId", SqlDbType.UniqueIdentifier, 256).Value = model.ReasonForAdmissionId;
                cmd.Parameters.Add("@reasonForAdmissionTimestamp", SqlDbType.Date, 256).Value = model.ReasonForAdmissionTimestamp;
                cmd.Parameters.Add("@allocationNumber", SqlDbType.VarChar, 60).Value = model.AllocationNumber;
                cmd.Parameters.Add("@impairmentGroupId", SqlDbType.UniqueIdentifier, 256).Value = model.ImpairmentGroupId;
                cmd.Parameters.Add("@admissionTypeId", SqlDbType.UniqueIdentifier, 256).Value = model.AdmissionTypeId;
                cmd.Parameters.Add("@referringDoctorId", SqlDbType.Int, 6).Value = model.ReferringDoctorId;
                cmd.Parameters.Add("@attendingDoctorId", SqlDbType.Int, 6).Value = model.AttendingDoctorId;
                cmd.Parameters.Add("@DischargeTypeId",SqlDbType.UniqueIdentifier, 256).Value = model.DischargeTypeId;
                cmd.Parameters.Add("@deallocationTimestamp", SqlDbType.DateTime).Value = model.DeallocationTimestamp;
                // open connection and execute stored procedure
                conn.Open();
                int a = cmd.ExecuteNonQuery();

                // read output value from @doctorId
                conn.Close();
                return a;
            }
        }
        internal int _UpdateRefferingDr(EpisodeOfCare model)
        {
            string host = ConfigurationManager.AppSettings["DatabaseHost"];
            string user = ConfigurationManager.AppSettings["DatabaseUser"];
            string name = ConfigurationManager.AppSettings["DatabaseName"];
            string password = ConfigurationManager.AppSettings["DatabasePassword"];

            string connectionString = $"data source={host};Initial Catalog={name};User ID={user};Password={Crypto.Decrypt(password)};";

            using (SqlConnection conn = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand("[EPONS].[UpdateDoctor]", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                // set up the parameters

                cmd.Parameters.Add("@doctorName", SqlDbType.VarChar, 256).Value = model.ReferringDoctorName ?? "";
                cmd.Parameters.Add("@contactNumber", SqlDbType.VarChar, 64).Value = model.ReferringDoctorNumber ?? "";
                cmd.Parameters.Add("@emailAddress", SqlDbType.VarChar, 256).Value = model.ReferringDoctorEmail ?? "";
                cmd.Parameters.Add("@practiceName", SqlDbType.VarChar, 256).Value = model.ReferringDoctorPracticeName ?? "";
                cmd.Parameters.Add("@hpcsaNumber", SqlDbType.VarChar, 256).Value = model.ReferringDoctorHPCSANumber ?? "";
                cmd.Parameters.Add("@doctorId", SqlDbType.Int).Value = model.ReferringDoctorId;



                // open connection and execute stored procedure
                conn.Open();
                int a = cmd.ExecuteNonQuery();

                // read output value from @doctorId
                conn.Close();
                return a;
            }
        }

        internal int _UpdateAttendingDr(EpisodeOfCare model)
        {
            string host = ConfigurationManager.AppSettings["DatabaseHost"];
            string user = ConfigurationManager.AppSettings["DatabaseUser"];
            string name = ConfigurationManager.AppSettings["DatabaseName"];
            string password = ConfigurationManager.AppSettings["DatabasePassword"];

            string connectionString = $"data source={host};Initial Catalog={name};User ID={user};Password={Crypto.Decrypt(password)};";

            using (SqlConnection conn = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand("[EPONS].[UpdateDoctor]", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                // set up the parameters

                cmd.Parameters.Add("@doctorName", SqlDbType.VarChar, 256).Value = model.AttendingDoctorName ?? "";
                cmd.Parameters.Add("@contactNumber", SqlDbType.VarChar, 64).Value = model.AttendingDoctorNumber ?? "";
                cmd.Parameters.Add("@emailAddress", SqlDbType.VarChar, 256).Value = model.AttendingDoctorEmail ?? "";
                cmd.Parameters.Add("@practiceName", SqlDbType.VarChar, 256).Value = model.AttendingDoctorPracticeName ?? "";
                cmd.Parameters.Add("@hpcsaNumber", SqlDbType.VarChar, 256).Value = model.AttendingDoctorHPCSANumber ?? "";
                cmd.Parameters.Add("@doctorId", SqlDbType.Int).Value = model.AttendingDoctorId;



                // open connection and execute stored procedure
                conn.Open();
                int a = cmd.ExecuteNonQuery();

                // read output value from @doctorId
                conn.Close();
                return a;
            }
        }

    }
}
