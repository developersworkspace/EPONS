using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.Models
{
    public class ProviderServiceTypeScale
    {

        public ProviderServiceTypeScale() { }

        public Guid ScaleGUID { get; set; }

        public string ScaleID { get; set; }

        public string ServiceTypeScaleID { get; set; }

        public static explicit operator ProviderServiceTypeScale(Data.ProviderServiceTypeScale data)
        {

            ProviderServiceTypeScale result = new ProviderServiceTypeScale()
            {
                ScaleGUID = data.ScaleId,
                ScaleID = Data.Models.BaseModel.EncryptId(data.ScaleId),
                ServiceTypeScaleID = Data.Models.BaseModel.EncryptId(data.ProviderServiceTypeScaleId)
            };

            return result;
        }

    }
}
