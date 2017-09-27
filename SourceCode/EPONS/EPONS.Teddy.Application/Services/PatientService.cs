using EPONS.Teddy.Application.Exceptions;
using EPONS.Teddy.Application.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using EPONS.Teddy.Application.EntityViews;

namespace EPONS.Teddy.Application.Services
{
    public class PatientService
    {

        private PatientRepository _patientRepository;
        private ListRepository _listRepository;
        private VisitRepository _visitRepository;

        public PatientService(IDbConnection connection)
        {
            _patientRepository = new PatientRepository(connection);
            _listRepository = new ListRepository(connection);
            _visitRepository = new VisitRepository(connection);
        }

        public IList<EntityViews.Patient> List(Entities.User user, string type, int pageNumber, int pageSize, string query, out int totalRecords)
        {
            return _patientRepository.List(user, type, pageNumber, pageSize, query, out totalRecords);
        }

        public Entities.Patient Get(Guid id)
        {
            return _patientRepository.FindById(id);
        }

        public EntityViews.Patient Get(string identificationNumber)
        {
            return _patientRepository.FindByIdentificationNumber(identificationNumber);
        }

        public Entities.Patient Get()
        {
            return _patientRepository.FindBase();
        }

        public Entities.TeamMember GetTeamMember(Guid patientId, Facility facility)
        {
            Entities.TeamMember teamMember = _patientRepository.FindBaseTeamMember(patientId);

            teamMember.FacilityId = facility == null ? Guid.Empty : facility.Id;

            return teamMember;
        }

        public Guid Create(Entities.Patient patient)
        {
            return _patientRepository.SavePatient(patient);
        }

        public void Save(Entities.Patient patient)
        {
            _patientRepository.UpdatePatient(patient);
        }

        public IList<EntityViews.MeasurementTool> ListMeasurementTools(Guid patientId)
        {
            IList<CompletedMeasurementTool> completedMeasurementTools =  _patientRepository.FindCompletedMeasurementTools(patientId, DateTime.Now.Subtract(new TimeSpan(365, 0, 0, 0)), DateTime.Now);

            IList<EntityViews.MeasurementTool> measurementTools = _patientRepository.FindMeasurementTools(patientId);

            foreach (EntityViews.CompletedMeasurementTool completedMeasurementTool in completedMeasurementTools)
            {
                EntityViews.MeasurementTool measurementTool = measurementTools.SingleOrDefault((x) => x.Id == completedMeasurementTool.Id);

                if (measurementTool != null)
                {
                    measurementTool.LastCompletedTimestamp = measurementTool.LastCompletedTimestamp < completedMeasurementTool.StartDate ? completedMeasurementTool.StartDate : measurementTool.LastCompletedTimestamp; 
                }
            }

            return measurementTools;
        }

        public IList<EntityViews.TeamMember> ListTeamMembers(Guid patientId)
        {
            return _patientRepository.FindTeamMembers(patientId);
        }

        public IList<EpisodeOfCare> ListEpisodesOfCare(Guid patientId, Guid facilityId)
        {
            return _patientRepository.ListEpisodesOfCare(patientId, facilityId);
        }

        public void Delete(Guid patientId)
        {
            _patientRepository.DeletePatient(patientId);
        }

        public void DeassignMeasurementTool(Guid patientId, Guid measurementToolId)
        {
            _patientRepository.DeassignMeasurementTool(patientId, measurementToolId);
        }

        public void DeallocateTeamMember(Guid patientId, Guid userId)
        {
            _patientRepository.DeallocateTeamMember(patientId, userId);
        }

        public IList<Survey> ListSurveys(Guid patientId)
        {
            return _patientRepository.FindSurveysByPatientId(patientId);
        }

        public void DeallocateTeamMember(Guid patientId, Guid[] userIds)
        {
            foreach (var userId in userIds)
            {
                DeallocateTeamMember(patientId, userId);
            }
        }

        private EntityViews.EpisodeOfCare FindCurrentEpisodeOfCare(Guid patientId)
        {
            return _patientRepository.FindCurrentEpisodeOfCare(patientId);
        }

        public void AllocateTeamMember(Entities.TeamMember teamMember)
        {
            IList<EntityViews.TeamMember> teamMembers = ListTeamMembers(teamMember.PatientId);

            foreach (var item in teamMember.UserIds)
                if (item != Guid.Empty)
                    if (teamMembers.Count(x => x.Id == item && !x.DeallocationDate.HasValue) == 0)
                        _patientRepository.AllocateTeamMember(teamMember.PatientId, item, teamMember.FacilityId);
        }

        public void AssignMeasurmentTool(Guid patientId, Guid measurementToolId, Guid frequencyId)
        {
            _patientRepository.AssignMeasurementTool(patientId, measurementToolId, frequencyId);
        }

        public List<EntityViews.CompletedMeasurementTool> ListCompletedMeasurementTools(Guid patientId, DateTime startDate, DateTime endDate)
        {
            return _patientRepository.FindCompletedMeasurementTools(patientId, startDate, endDate);
        }

        public byte[] Avatar(Guid patientId)
        {
            return _patientRepository.FindAvatar(patientId);
        }

        public void SaveAvatar(Guid patientId, byte[] avatar)
        {
            _patientRepository.UpdatePatientAvatar(patientId, avatar);
        }


        private Guid? GetICD10CodeId(string query)
        {
           var list = _listRepository.GetICD10Codes(query);
            return list.Count > 0 ? list.First().Id : (Guid?)null;
        }

        public void CreateEpisodeOfCare(Application.Entities.EpisodeOfCare model)
        {
            Guid? reasonForAdmissionId = null;
            if (!string.IsNullOrWhiteSpace(model.ReasonForAdmissionName))
            {
                IList<ValueObjects.ListItem> icd10Codes = _listRepository.GetICD10Codes(model.ReasonForAdmissionName);
                reasonForAdmissionId = icd10Codes.FirstOrDefault().Id;
            }
            model.ReasonForAdmissionId = reasonForAdmissionId;
            _patientRepository._CreateEpisodeOfCare(model);
        }

        public Entities.EpisodeOfCare GetEpisodeOfCare(Guid episodeofcareID)
        {
            Entities.EpisodeOfCare episodeOfCare = _patientRepository.FindEpisodeOfCareById(episodeofcareID);

            episodeOfCare.EpisodeOfCareId = episodeOfCare == null ? Guid.Empty : episodeOfCare.EpisodeOfCareId;

            return episodeOfCare;
        }

        public void UpdateEpisodeOfCare(Application.Entities.EpisodeOfCare model)
        {
            Guid? reasonForAdmissionId = null;
            if (!string.IsNullOrWhiteSpace(model.ReasonForAdmissionName))
            {
                IList<ValueObjects.ListItem> icd10Codes = _listRepository.GetICD10Codes(model.ReasonForAdmissionName);
                reasonForAdmissionId = icd10Codes.FirstOrDefault().Id;
            }
            model.ReasonForAdmissionId = reasonForAdmissionId;
            //_patientRepository.CreateEpisodeOfCare(model.PatientId, model.FacilityId, reasonForAdmissionId, model.ReasonForAdmissionTimestamp, model.AllocationNumber, model.ImpairmentGroupId, model.AdmissionTypeId);
            _patientRepository.UpdateEpisodeOfCare(model);
        }
   
    }
}
