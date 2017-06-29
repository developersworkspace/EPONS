using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class ProviderServiceType : BaseModel
    {

        public ProviderServiceType() : this(null, 0) { }
        public ProviderServiceType(object Id = null, long Age = 0) : base(Id, Age) { }

        public string ContactNumber { get; set; }
        public string ProvinceID { get; set; }
        public string Province { get; set; }
        public string Street { get; set; }
        public string PostalCode { get; set; }
        public string CityID { get; set; }
        public string City { get; set; }

        public string ServiceTypeName { get; set; }
        public string ServiceTypeNameDisplay { get; set; }

        public string ServiceTypeID { get; set; }
        public List<string> ScaleList { get; set; }
        public string CountryID { get; set; }
        public string Country { get; set; }

        public List<string> Scales { get; set; }

        public List<ProviderServiceTypeScale> ServiceTypeScales { get; set; }



        public static explicit operator ProviderServiceType(Data.ProviderServiceType data)
        {
            ProviderServiceType result = new ProviderServiceType()
            {
                ContactNumber = data.ContactNumber,
                ServiceTypeScales = data.ProviderServiceTypeScales.Select(x => (Data.Models.ProviderServiceTypeScale)x).ToList(),
                ProvinceID = Data.Models.BaseModel.EncryptId(data.ProvinceId),
                Province = data.Province == null ? null : data.Province.Name,
                CountryID = Data.Models.BaseModel.EncryptId(data.CountryId),
                Country = data.Country.Description,
                City = data.City == null ? null : data.City.Name,
                CityID = Data.Models.BaseModel.EncryptId(data.CityId),
                PostalCode = data.PostalCode,
                Scales = data.ProviderServiceTypeScales.Select(x => x.Scale.Description).ToList(),
                ScaleList = data.ProviderServiceTypeScales.Select(x => Data.Models.BaseModel.EncryptId(x.Scale.ListItemId)).ToList(),
                Street = data.Street,
                ServiceTypeID = Data.Models.BaseModel.EncryptId(data.ServiceTypeId),
                ServiceTypeName = data.ServiceType.Name,
                ID = Data.Models.BaseModel.EncryptId(data.ProviderServiceTypeId),
                ServiceTypeNameDisplay = data.ServiceType.Parent.Name + " - " + data.ServiceType.Name
            };

            return result;
        }
    }
}
