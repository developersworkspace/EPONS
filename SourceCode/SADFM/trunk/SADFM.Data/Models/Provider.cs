using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class Provider : Client
    {
        public Provider() : this(null, 0) { }
        public Provider(object Id = null, long Age = 0) : base(Id, Age) { }

        public List<ProviderServiceType> ServiceType { get; set; }
        public Guid ProviderGUID { get; set; }
        public bool IsGroup { get; set; }
        public Guid? AcuityTypeId { get; set; }
        public DateTime DateCreatedTimestamp { get; set; }
        public DateTime LastUpdatedTimestamp { get; set; }
        public Guid LastUpdatedAccountId { get; set; }

        public Provider ParentProvider { get; set; }
        public List<Models.ListItem> Scales { get; set; }
        public string ProviderID { get; set; }

        public List<Models.ProviderServiceType> ServiceTypes { get; set; }
        public string ParentID { get; set; }
        public double MonthlyRate { get; set; }
        public string ProfileImage { get; set; }

        public static explicit operator Provider(Data.Provider data)
        {

            List<Models.ListItem> scales = new List<ListItem>();
            foreach (var psts in data.ProviderServiceTypes.SelectMany(st => st.ProviderServiceTypeScales))
                if (scales.Count(li => li.GUID == psts.ScaleId) == 0)
                    scales.Add(new Models.ListItem(psts.Scale, false));
            scales = scales.OrderBy(li => li.SortOrder).ToList();

            Provider result = new Provider(data.ProviderId, data.LastUpdateTimestamp.Ticks)
            {

                ProviderGUID = data.ProviderId,
                Name = data.Name,
                IsGroup = data.IsGroup,
                AcuityTypeId = data.AcuityTypeId,
                DateCreatedTimestamp = data.DateCreatedTimestamp,
                LastUpdatedAccountId = data.LastUpdateAccountId,
                LastUpdatedTimestamp = data.LastUpdateTimestamp,
                ProviderID = Data.Models.BaseModel.EncryptId(data.ProviderId),
                Scales = scales,
                ParentID = Data.Models.BaseModel.EncryptId(data.ParentId),
                ServiceType = data.ProviderServiceTypes.Select(x => (Data.Models.ProviderServiceType)x).ToList(),
                MonthlyRate = Convert.ToDouble(data.MonthlyRate),
                ProfileImage = data.ProfileImage == null ? "/Content/images/noprovider.png" : string.Format("data:image/png;base64,{0}", Convert.ToBase64String(data.ProfileImage))


            };

            if (data.ParentId != null)
            {
                result.ParentProvider = new Provider()
                {
                    Name = data.Parent.Name
                };
            }

            result.ServiceTypes = data.ProviderServiceTypes.ToList().Select(s => (Models.ProviderServiceType)s).ToList();


            return result;
        }

    }
}
