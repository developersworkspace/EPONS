using System.Collections.Generic;

namespace EPONS.Teddy.Presentation.ViewObjects.User
{
    public class Edit : Base
    {
        public Application.Entities.User UserModel { get; set; }
        public IList<Application.ValueObjects.FacilityPermission> UserModelFacilityPermissions { get; set; } = new List<Application.ValueObjects.FacilityPermission>();
        public IList<Application.ValueObjects.ListItem> Positions { get; set; } = new List<Application.ValueObjects.ListItem>();
        public IList<Application.ValueObjects.ListItem> MeasurementTools { get; set; } = new List<Application.ValueObjects.ListItem>();
        public IList<Application.ValueObjects.ListItem> Facilities { get; set; } = new List<Application.ValueObjects.ListItem>();
        public IList<Application.ValueObjects.ListItem> Permissions { get; set; } = new List<Application.ValueObjects.ListItem>();

        public Edit(Base baseModel) : base(baseModel)
        {

        }
        public Edit() : base()
        {

        }
    }
}