﻿using System;
using System.Collections.Generic;
using System.Linq;

namespace EPONS.Teddy.Presentation.ViewObjects
{
    public class Base
    {
        private bool Override { get; set; }

        public Base(Base baseModel)
        {
            DisplayName = baseModel.DisplayName;
            User = baseModel.User;
            Messages = baseModel.Messages;
            AdminMessageTitle = baseModel.AdminMessageTitle;
            AdminMessageBody = baseModel.AdminMessageBody;
            Override = false;
            Settings = baseModel.Settings;


        }
        public Base()
        {
            Override = false;
        }

        public string AdminMessageTitle { get; set; }
        public string AdminMessageBody { get; set; }

        public Dictionary<string, string> Settings = new Dictionary<string, string>();

        public string DisplayName { get; set; }
        public Application.Entities.User User { get; set; }

        public IList<Application.Entities.Message> Messages { get; set; } = new List<Application.Entities.Message>();
        public List<dynamic> Notifications { get; set; } = new List<dynamic>();

        public bool CanCreatePatient()
        {
            if (Override)
                return true;

            if (User.Permissions.Count(x => x.Name == "Case Manager") > 0)
                return true;

            return false;
        }

        public bool CanDeletePatient()
        {
            if (Override)
                return true;

            return User.IsSuperAdmin;
        }

        public bool CanEditPatient()
        {
            if (Override)
                return true;

            if (User.Permissions.Count(x => x.Name == "Case Manager") > 0)
                return true;

            return false;
        }

        public bool CanAssignMeasurementTools(IList<Application.EntityViews.EpisodeOfCare> episodesOfCare)
        {
            if (Override)
                return true;

            if (((User.Permissions.Count(x => x.Name == "Case Manager") > 0) && (episodesOfCare.Count(x => !x.DeallocationTimestamp.HasValue) > 0)) || ((User.Permissions.Count(x => x.Name == "Administrator") > 0) && (episodesOfCare.Count(x => !x.DeallocationTimestamp.HasValue) > 0)))
                return true;

            return false;
        }

        public bool CanDeassignMeasurementTools()
        {
            if (Override)
                return true;

            if (((User.Permissions.Count(x => x.Name == "Case Manager") > 0)) || ((User.Permissions.Count(x => x.Name == "Administrator") > 0)))
                return true;

            return false;
        }

        public bool CanCreateCase()
        {
            if (Override)
                return true;

            if (User.Permissions.Count(x => x.Name == "Case Manager") > 0)
                return true;

            return false;
        }
        public bool CanCreateVisit(IList<Application.EntityViews.EpisodeOfCare> episodesOfCare)
        {
            //return episodesOfCare.Count(x => !x.DeallocationTimestamp.HasValue) > 0;
            if (episodesOfCare.Count(x => !x.DeallocationTimestamp.HasValue) > 0)
                return true;

            if(Override)
                return true;

            return false;
        }

        public bool CanCreateEpisodeOfCare(IList<Application.EntityViews.EpisodeOfCare> episodesOfCare)
        {
            if (Override)
                return true;

            if (((User.Permissions.Count(x => x.Name == "Case Manager") > 0) && (episodesOfCare.Count(x => !x.DeallocationTimestamp.HasValue) < 1)) || ((User.Permissions.Count(x => x.Name == "Administrator") > 0) && (episodesOfCare.Count(x => !x.DeallocationTimestamp.HasValue) < 1)))
                return true;
                        
            return false;
        }

        public bool CanAllocateTeamMember(IList<Application.EntityViews.EpisodeOfCare> episodesOfCare)
        {
            if (Override)
                return true;

            if (((User.Permissions.Count(x => x.Name == "Case Manager") > 0) || (User.Permissions.Count(x => x.Name == "Administrator") > 0)) && ((episodesOfCare.Count(x => !x.DeallocationTimestamp.HasValue) > 0)))
                return true;

            return false;
        }
        public bool CanDeAllocateTeamMember()
        {
            if (Override)
                return true;

            if ((User.Permissions.Count(x => x.Name == "Case Manager") > 0) || (User.Permissions.Count(x => x.Name == "Administrator") > 0))
                return true;

            return false;
        }

        public string GetCurrentFacilityName()
        {
            return User.CurrentFacility == null ? "No Facility" : User.CurrentFacility.Name;
        }

        public Guid? GetCurrentFacilityId()
        {
            return User.CurrentFacility == null ? (Guid?)null : User.CurrentFacility.Id;
        }

        public bool IsSuperAdmin()
        {
            if (Override)
                return true;

            return User.IsSuperAdmin;
        }

        public bool HasPermission(string permission)
        {
            if (Override)
                return true;

            if (User.Permissions.Count(x => x.Name == permission) > 0)
                return true;

            return false;
        }

        public bool HasAcceptedDisclaimer()
        {
            if (Override)
                return true;

            return User.AcceptedDisclaimer;
        }

        public int GetNumberOfUnreadMessages()
        {
            return Messages.Count;
        }

        public bool CanAddFacilityPermission()
        {
            if (Override)
                return true;

            return User.IsSuperAdmin;
        }

        public bool CanAddMeasurementToolPermission()
        {
            if (Override)
                return true;

            return User.IsSuperAdmin;
        }

        public bool CanRemoveFacilityPermission()
        {
            if (Override)
                return true;

            return User.IsSuperAdmin;
        }

        public bool CanUseMeasurementTool(Guid id, string name)
        {
            if (Override)
                return true;

            if (User.CurrentFacilityMeasurementTools.Count(x => x.Id == id) == 0)
                return false;

            if (User.CurrentFacilityMeasurementTools.Single(x => x.Id == id).Name == "FAM" || User.CurrentFacilityMeasurementTools.Single(x => x.Id == id).Name == "APOM" || User.CurrentFacilityMeasurementTools.Single(x => x.Id == id).Name == "Eta" || User.CurrentFacilityMeasurementTools.Single(x => x.Id == id).Name == "Epsilon")
                return true;

            return User.MeasurementToolScores.Count(x => x.Id == id && x.Score >= 80 && DateTime.UtcNow.Subtract(x.Timestamp).TotalDays < Convert.ToInt32(Settings[$"UserMeasurementToolAccreditationExpiry-{name}"])) > 0;
        }

        public string CanUseMeasurementToolMessage(Guid id, string name)
        {
            if (User.CurrentFacilityMeasurementTools.Count(x => x.Id == id) == 0)
                return "Your facility does not have access to this measurement tool. Please contact your administrator.";

            if (User.CurrentFacilityMeasurementTools.Single(x => x.Id == id).Name == "FAM" || User.CurrentFacilityMeasurementTools.Single(x => x.Id == id).Name == "APOM" || User.CurrentFacilityMeasurementTools.Single(x => x.Id == id).Name == "Eta" || User.CurrentFacilityMeasurementTools.Single(x => x.Id == id).Name == "Epsilon")
                return null;

            if (User.MeasurementToolScores.Count(x => x.Id == id && x.Score >= 80 && DateTime.UtcNow.Subtract(x.Timestamp).TotalDays < Convert.ToInt32(Settings[$"UserMeasurementToolAccreditationExpiry-{name}"])) > 0)
            {
                return null;
            }

            return "You don't have access to this measurement tools. Please completed your moodle course.";
        }

        public bool CanEnterNoteToVisit()
        {
            if (Override)
                return true;

            return User.ProfessionalBody != null;
        }

        public string CanEnterNoteToVisitMessage()
        {
            return User.ProfessionalBody != null ? null : "To View & Enter Notes in your Visit, you must enter your Professional Body Registration number";
        }
    }
}