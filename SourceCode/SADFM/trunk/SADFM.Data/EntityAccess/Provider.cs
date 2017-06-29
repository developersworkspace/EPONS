using ReturnTrue.Utilities.Cryptography;
using SADFM.Data.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SADFM.Data.EntityAccess
{
    public class Provider : EntityAccessBase
    {
        internal Provider(ConnectionStringSettings connection)
            : base(connection) { }

        public List<Models.Provider> GetAllProviders()
        {
            return Execute(context =>
            {
                return context.Providers.ToList().Select(p => (Models.Provider)p).ToList();
            });
        }


        public Models.Provider GetById(Guid id)
        {
            return Execute(context =>
            {
                var provider = context.Providers.SingleOrDefault(x => x.ProviderId == id);
                return provider == null ? null : (Models.Provider)provider;
            });
        }

        public Models.Provider GetByPatientProviderId(Guid id)
        {
            return Execute(context =>
            {
                var patientProvider = context.PatientProviders.SingleOrDefault(x => x.PatientProviderId == id);
                return patientProvider == null ? null : (Models.Provider)patientProvider.Provider;
            });
        }

        public UpdateResult SaveNewProvider(Models.Provider model, Guid accountId)
        {
            return Execute(context =>
            {

                if (model.ProviderID == null)
                {
                    Data.Provider newProvider = new Data.Provider
                    {
                        Name = model.Name,
                        IsGroup = model.IsGroup,
                        AcuityTypeId = model.AcuityTypeId,
                        DateCreatedTimestamp = DateTime.Now,
                        LastUpdateTimestamp = DateTime.Now,
                        LastUpdateAccountId = accountId,
                        MonthlyRate = Convert.ToDecimal(model.MonthlyRate),
                        ProfileImage = model.ProfileImage != null ? Convert.FromBase64String(model.ProfileImage) : null

                    };

                    if (model.ParentID != null)
                    {
                        newProvider.ParentId = BaseModel.DecryptNullableId(model.ParentID);
                    }
                    else
                    {
                        newProvider.ParentId = null;
                    }

                    if (!model.IsGroup)
                    {

                        List<Data.ProviderServiceType> providerServiceTypeList = new List<ProviderServiceType>();

                        foreach (Data.Models.ProviderServiceType pst in model.ServiceTypes)
                        {

                            Data.ProviderServiceType providerServiceType = new Data.ProviderServiceType()
                            {
                                CityId = BaseModel.DecryptNullableId(pst.CityID),
                                ContactNumber = pst.ContactNumber,
                                CountryId = BaseModel.DecryptNullableId(pst.CountryID),
                                DateCreatedTimestamp = DateTime.Now,
                                LastUpdateAccountId = accountId,
                                LastUpdateTimestamp = DateTime.Now,
                                PostalCode = pst.PostalCode,
                                ProvinceId = BaseModel.DecryptNullableId(pst.ProvinceID),
                                Street = pst.Street,
                                ServiceTypeId = BaseModel.DecryptId(pst.ServiceTypeID),

                            };

                            List<Data.ProviderServiceTypeScale> scaleList = new List<ProviderServiceTypeScale>();

                            foreach (string s in pst.ScaleList)
                            {
                                scaleList.Add(new Data.ProviderServiceTypeScale()
                                {
                                    ScaleId = BaseModel.DecryptId(s)
                                });
                            }

                            providerServiceType.ProviderServiceTypeScales = scaleList;

                            providerServiceTypeList.Add(providerServiceType);

                        }

                        newProvider.ProviderServiceTypes = providerServiceTypeList;

                    }

                    context.Providers.Add(newProvider);
                    WriteAudit(context, accountId);
                    context.SaveChanges();

                    foreach (ProviderServiceType pst in newProvider.ProviderServiceTypes)
                    {
                        foreach (ProviderServiceTypeScale psts in pst.ProviderServiceTypeScales)
                        {
                            WriteManualAudit(context, new Data.Audit()
                            {
                                TableName = "ProviderServiceTypeScale",
                                FieldName = "ScaleId",
                                OldValue = null,
                                NewValue = psts.ScaleId.ToString(),
                                UpdateDate = DateTime.Now,
                                AccountId = accountId,
                                PrimaryKeyId = newProvider.ProviderId,
                                ChangeTypeId = DataAccess.ListItem.GetList("ChangeType").Single(x => x.Name == "Insert").GetId()
                            });
                        }
                    }

                    context.SaveChanges();
                }
                else
                {


                    Guid providerGUID = Data.Models.BaseModel.DecryptId(model.ProviderID);
                    Data.Provider provider = context.Providers.SingleOrDefault(x => x.ProviderId == providerGUID);


                    provider.Name = model.Name;
                    provider.IsGroup = model.IsGroup;
                    provider.AcuityTypeId = model.AcuityTypeId;
                    provider.MonthlyRate = Convert.ToDecimal(model.MonthlyRate);
                    provider.ProfileImage = model.ProfileImage != null ? Convert.FromBase64String(model.ProfileImage) : null;


                    if (model.ParentID != null)
                    {
                        provider.ParentId = BaseModel.DecryptNullableId(model.ParentID);
                    }
                    else
                    {
                        provider.ParentId = null;
                    }

                    if (!model.IsGroup)
                    {

                        List<ProviderServiceType> tempListProviderServiceType = new List<ProviderServiceType>();

                        foreach (ProviderServiceType pst in provider.ProviderServiceTypes)
                        {

                            if (model.ServiceTypes.Where(x => x.ID != null).Where(x => BaseModel.DecryptId(x.ID) == pst.ProviderServiceTypeId).ToList().Count == 0)
                            {

                                tempListProviderServiceType.Add(pst);


                            }

                        }

                        foreach (ProviderServiceType pst in tempListProviderServiceType)
                        {


                            List<ProviderServiceTypeScale> tempScaleList = pst.ProviderServiceTypeScales.ToList();
                            foreach (ProviderServiceTypeScale psts in tempScaleList)
                            {
                                context.ProviderServiceTypeScales.Remove(psts);

                               

                                WriteManualAudit(context, new Data.Audit()
                                {
                                    TableName = "ProviderServiceTypeScale",
                                    FieldName = "ScaleId",
                                    OldValue = psts.ScaleId.ToString(),
                                    NewValue = null,
                                    UpdateDate = DateTime.Now,
                                    AccountId = accountId,
                                    PrimaryKeyId = provider.ProviderId,
                                    ChangeTypeId = DataAccess.ListItem.GetList("ChangeType").Single(x => x.Name == "Delete").GetId()
                                });

                            }

                            context.ProviderServiceTypes.Remove(pst);

                        }

                        if (model.ServiceTypes != null)
                        {

                            foreach (Data.Models.ProviderServiceType pst in model.ServiceTypes)
                            {
                                Guid ID;
                                Data.ProviderServiceType providerServiceType;
                                if (pst.ID != null)
                                {
                                    ID = Data.Models.BaseModel.DecryptId(pst.ID);
                                    providerServiceType = provider.ProviderServiceTypes.Single(x => x.ProviderServiceTypeId == ID);
                                }
                                else
                                {
                                    providerServiceType = new ProviderServiceType();
                                    providerServiceType.ProviderServiceTypeId = Guid.NewGuid();
                                }


                                providerServiceType.CityId = BaseModel.DecryptNullableId(pst.CityID);
                                providerServiceType.ContactNumber = pst.ContactNumber;
                                providerServiceType.CountryId = BaseModel.DecryptNullableId(pst.CountryID);
                                providerServiceType.LastUpdateAccountId = accountId;
                                providerServiceType.LastUpdateTimestamp = DateTime.Now;
                                providerServiceType.PostalCode = pst.PostalCode;
                                providerServiceType.ProvinceId = BaseModel.DecryptNullableId(pst.ProvinceID);
                                providerServiceType.Street = pst.Street;

                                List<ProviderServiceTypeScale> tempList = new List<ProviderServiceTypeScale>();
                                foreach (ProviderServiceTypeScale psts in providerServiceType.ProviderServiceTypeScales)
                                {
                                    if (pst.ScaleList.Where(x => BaseModel.DecryptId(x) == psts.ScaleId).ToList().Count == 0)
                                    {
                                        tempList.Add(psts);
                                    }
                                }

                                foreach (ProviderServiceTypeScale psts in tempList)
                                {
                                    providerServiceType.ProviderServiceTypeScales.Remove(psts);
                                    context.ProviderServiceTypeScales.Remove(psts);

                                    WriteManualAudit(context, new Data.Audit()
                                    {
                                        TableName = "ProviderServiceTypeScale",
                                        FieldName = "ScaleId",
                                        OldValue = psts.ScaleId.ToString(),
                                        NewValue = null,
                                        UpdateDate = DateTime.Now,
                                        AccountId = accountId,
                                        PrimaryKeyId = provider.ProviderId,
                                        ChangeTypeId = DataAccess.ListItem.GetList("ChangeType").Single(x => x.Name == "Delete").GetId()
                                    });
                                }

                                foreach (string scaleId in pst.ScaleList)
                                {
                                    if (providerServiceType.ProviderServiceTypeScales.Where(x => x.ScaleId == BaseModel.DecryptId(scaleId)).ToList().Count == 0)
                                    {
                                        ProviderServiceTypeScale tempScale = new ProviderServiceTypeScale()
                                        {
                                            ScaleId = BaseModel.DecryptId(scaleId)
                                        };
                                        if (pst.ID != null)
                                        {
                                            tempScale.ProviderServiceTypeId = BaseModel.DecryptId(pst.ID);
                                        }

                                        providerServiceType.ProviderServiceTypeScales.Add(tempScale);


                                        WriteManualAudit(context, new Data.Audit()
                                        {
                                            TableName = "ProviderServiceTypeScale",
                                            FieldName = "ScaleId",
                                            OldValue = null,
                                            NewValue = tempScale.ScaleId.ToString(),
                                            UpdateDate = DateTime.Now,
                                            AccountId = accountId,
                                            PrimaryKeyId = provider.ProviderId,
                                            ChangeTypeId = DataAccess.ListItem.GetList("ChangeType").Single(x => x.Name == "Insert").GetId()
                                        });


                                    }
                                }

                                if (pst.ID == null)
                                {
                                    providerServiceType.ServiceTypeId = BaseModel.DecryptId(pst.ServiceTypeID);
                                    providerServiceType.ProviderId = provider.ProviderId;
                                    providerServiceType.DateCreatedTimestamp = DateTime.Now;
                                    provider.ProviderServiceTypes.Add(providerServiceType);


                                }



                            }

                        }
                    }



                    WriteAudit(context, accountId);

                    context.SaveChanges();

                }

                return new UpdateResult(true);
            });
        }


        public bool CheckAccountHasMultipleProviders(Guid AccountId)
        {

            return Execute(context =>
            {
                var tmp = context.ProviderAccountPermissions.ToList().Select(p => p.AccountId.Equals(AccountId)).ToList();
                if (tmp.Count > 1)
                {
                    return true;
                }
                else
                    return false;
            });


        }


    }
}
