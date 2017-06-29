using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ReturnTrue.Utilities.Cryptography;
using System.Web.Mvc;

namespace SADFM.Data.Models
{
    public abstract class BaseModel
    {
        public Guid GUID { get; set; }
        public string ID { get; set; }
        public long Age { get; set; }
        internal bool New { get; set; }
        public string LastUpdateUsername { get; set; }

        public static string EncryptId(Guid? id)
        {
            if (!id.HasValue)
                return null;
            return Rijndael.Encrypt(id.Value.ToString("N"), SADFM.Base.Constants.IdKey);
        }
        public static Guid DecryptId(string id)
        {
                return Guid.ParseExact(Rijndael.Decrypt(id, SADFM.Base.Constants.IdKey), "N");

        }
        public static Guid? DecryptNullableId(string id)
        {
            if (string.IsNullOrWhiteSpace(id))
                return null;
            return Guid.ParseExact(Rijndael.Decrypt(id, SADFM.Base.Constants.IdKey), "N");
        }

        public Guid GetId()
        {
            if (GUID == default(Guid))
                GUID = DecryptId(ID);
            return GUID;
        }

        public BaseModel(object Id = null, long Age = 0)
        {
            if (Id == null)
            {
                New = true;
                return;
            }

            if (Id.GetType() == typeof(Guid))
            {
                this.GUID = (Guid)Id;
                this.ID = EncryptId(this.GUID);
            }
            else if (Id.GetType() == typeof(string))
            {
                this.ID = (string)Id;
                this.GUID = DecryptId((string)Id);
            }
            else
            {
                throw new ApplicationException(string.Format("Cannot instantiate model from Id type {0}", Id.GetType().FullName));
            }

            this.Age = Age;
            return;
        }

    }
}
