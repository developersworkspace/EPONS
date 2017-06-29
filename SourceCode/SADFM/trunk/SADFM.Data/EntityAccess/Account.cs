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
    public class Account : EntityAccessBase
    {
        internal Account(ConnectionStringSettings connection)
            : base(connection)
        { }


        public List<Data.Models.TrainingReportItem> GetTrainingReport(Guid? clientId)
        {

            var result = Execute(cx =>
            {

                var scales = cx.ListItems.Where(x => x.Parent.Name == "Scale").Select(x => new
                {
                    ScaleId = x.ListItemId,
                    ScaleName = x.Description

                }).ToList();

                return cx.ScalePermissions.Where(x => x.Account.FunderAccountPermissions.Count(y => y.FunderId == clientId) > 0 ||
                x.Account.ProviderAccountPermissions.Count(y => y.ProviderId == clientId) > 0 || !clientId.HasValue).ToList().Select(x => new Data.Models.TrainingReportItem()
                {
                    Username = x.Account.Username,
                    Firstname = x.Account.FirstName,
                    Lastname = x.Account.LastName,
                    Updated = x.LastUpdateTimestamp,
                    EmailAdress = x.Account.EmailAddress,
                    UpdatedDisplay = x.LastUpdateTimestamp.ToString("dd MMM yyyy HH:mm"),
                    Grade = x.Grade.HasValue ? x.Grade.Value : -1,
                    Scale = scales.FirstOrDefault(y => y.ScaleId == x.ScaleId) == null ? "" : scales.FirstOrDefault(y => y.ScaleId == x.ScaleId).ScaleName
                }).ToList();


            });

            return result;
        }

        public Models.Account GetAccountByUsername(string username)
        {
            return Execute(cx =>
            {
                var tmp = cx.Accounts.SingleOrDefault(a => a.Username.ToLower() == username.ToLower());
                if (tmp == null)
                    return null;
                return (Models.Account)tmp;
            });
        }

        public List<SADFM.Data.Models.TrainingReportItem> GetTrainingReport(Guid AccountId, List<Permission> Permissions, Guid? SelectedClientId)
        {

            return Execute(context =>
            {

                var scalePermissions = context.ScalePermissions.ToList();
                var scales = context.ListItems.Where(x => x.Parent.Name == "Scale").ToList().Select(x => new Models.ListItem(x, false)).ToList();

                return scalePermissions.Where(y => y.AccountId == AccountId && (Permissions
                .Where(x => x.GetClientId() == SelectedClientId).Count() > 0 || !SelectedClientId.HasValue)).GroupBy(x => x.ScaleId).Select(x => x.OrderByDescending(y => y.DateCreatedTimestamp).FirstOrDefault())
                .Select(x => new SADFM.Data.Models.TrainingReportItem()
                {
                    Grade = x.Grade.HasValue ? x.Grade.Value : -1,
                    Scale = scales.FirstOrDefault(y => y.GetId() == x.ScaleId) != null ? scales.FirstOrDefault(y => y.GetId() == x.ScaleId).Description : ""
                }).ToList();

            });

        }

        public UpdateResult AddScalePermission(Data.ScalePermission model)
        {
            return Execute(cx =>
            {


                cx.ScalePermissions.Add(model);
                cx.SaveChanges();

                return new UpdateResult(true);
            });

        }

        public Guid? GetAccountSecurityQuestionId(string username)
        {
            return Execute(cx =>
            {
                var tmp = cx.Accounts.SingleOrDefault(a => a.Username.ToLower() == username.ToLower()).SecurityQuestionId;
                return tmp ?? Guid.NewGuid();
            });
        }

        public string GetAccountSecurityAnswer(string username)
        {
            return Execute(cx =>
            {
                return cx.Accounts.SingleOrDefault(a => a.Username.ToLower() == username.ToLower()).SecurityQuestionAnswer;

            });
        }


        public Models.Account GetAccountByAccountId(Guid accountId)
        {
            return Execute(context =>
            {
                return (Models.Account)context.Accounts.First(a => a.AccountId.Equals(accountId));
            });
        }

        public string GetAccountEmailAddress(string username)
        {
            return Execute(cx =>
            {
                return cx.Accounts.SingleOrDefault(a => a.Username.ToLower() == username.ToLower()).EmailAddress;

            });
        }

        public Guid GetAccountIdByUsername(string username)
        {
            return Execute(cx =>
            {
                return cx.Accounts.SingleOrDefault(a => a.Username.ToLower() == username.ToLower()).AccountId;

            });

        }

        public string Validate(string username, string password)
        {
            return Execute(cx =>
            {
                var tmp = cx.Accounts.SingleOrDefault(a => a.Username.ToLower() == username.ToLower());
                if (tmp == null)
                    return (string)null;

                if (tmp.Password == MD5.Hex(password))
                    return tmp.Status.Name;

                return (string)null;
            });
        }


        public string GetAccountUserNameByAccountId(Guid accountId)
        {
            return Execute(cx =>
            {
                return cx.Accounts.SingleOrDefault(a => a.AccountId.Equals(accountId)).Username;

            });

        }


        public List<Models.Account> GetAllAccounts()
        {
            return Execute(cx =>
            {

                return cx.Accounts.ToList().Select(a => (Models.Account)a).ToList();
            });
        }

        public List<Models.Account> GetAllAccountsLightWeight(int startIndex, int length, string search, int columnSort, string direction, out int count, out int filtered)
        {

            int c = 0;
            int f = 0;

            var result = Execute(cx =>
            {
                SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "Account.GetAllAccountsLightWeight:  -  Started");

                var result1 = cx.Accounts;
                IOrderedQueryable<Data.Account> result2 = null;
                switch (columnSort)
                {
                    case 1:
                        result2 = cx.Accounts.OrderBy(x => x.FirstName);
                        break;
                    case 2:
                        result2 = cx.Accounts.OrderBy(x => x.LastName);
                        break;
                    case 3:
                        result2 = cx.Accounts.OrderBy(x => x.EmailAddress);
                        break;
                    default:
                        result2 = cx.Accounts.OrderBy(x => x.Username);
                        break;

                }

                var result3 = result2.Where(x => x.Username.Contains(search) ||
                x.FirstName.Contains(search) || x.LastName.Contains(search));


                var result4 = result3.Skip(startIndex).Take(length).ToList().Select(a => new Models.Account(a)).ToList();

                c = result2.Count();
                f = result3.Count();

                SADFM.Base.NLogHelper.WriteEvent(NLog.LogLevel.Info, "Account.GetAllAccountsLightWeight:  -  End");
                return result4;
            });

            count = c;
            filtered = f;

            return result;
        }

        public bool ResetUserPassword(string newpassword, string username, string securityquestion, string securityquestionanswer, string id, Guid QuestionId)
        {
            if (securityquestion != null && securityquestionanswer != null)
            {
                bool success = false;
                Execute(context =>
                {
                    Guid lastUpdateAccountId = context.Accounts.Single(a => a.Username == username).AccountId;
                    // Guid QuestionId = context.ListItemLabels.FirstOrDefault(l => l.Label.Equals(securityquestion)).ListItemId;
                    securityquestion = context.ListItemLabels.FirstOrDefault(l => l.ListItemId.Equals(QuestionId)).Label;
                    Data.Account act = context.Accounts.SingleOrDefault(a => a.Username.ToLower().Equals(username.ToLower()));
                    if (act == null)
                        return false;
                    if (!string.IsNullOrWhiteSpace(newpassword))
                        act.Password = MD5.Hex(newpassword);
                    act.SecurityQuestionId = QuestionId;
                    act.SecurityQuestionAnswer = securityquestionanswer;
                    try
                    {
                        if (context.ChangeTracker.HasChanges())
                        {
                            WriteAudit(context, lastUpdateAccountId);

                            act.LastUpdateTimestamp = DateTime.Now;
                            act.LastUpdateAccountId = lastUpdateAccountId;
                            act.FirstSignIn = false;

                            context.SaveChanges();
                        }
                        success = true;
                        return success;
                    }
                    catch (Exception ex)
                    {
                        success = false;
                        return success;
                    }
                });
                return success;
            }

            else
            {

                bool success = false;

                Execute(context =>
                {
                    Guid lastUpdateAccountId = context.Accounts.Single(a => a.Username == username).AccountId;

                    //  Data.Account act = context.Accounts.SingleOrDefault(a => a.Username.ToLower().Equals(username.ToLower()));

                    Data.Account act = context.Accounts.SingleOrDefault(a => a.AccountId.ToString().Equals(id)) ?? context.Accounts.Single(a => a.Username == username);
                    // else
                    //  act = context.Accounts.SingleOrDefault(a => a.Username.ToLower().Equals(username.ToLower()));
                    if (act == null)
                        return false;
                    if (!string.IsNullOrWhiteSpace(newpassword))
                        act.Password = MD5.Hex(newpassword);

                    try
                    {
                        if (context.ChangeTracker.HasChanges())
                        {
                            WriteAudit(context, lastUpdateAccountId);

                            act.LastUpdateTimestamp = DateTime.Now;
                            act.LastUpdateAccountId = lastUpdateAccountId;
                            act.FirstSignIn = false;

                            context.SaveChanges();
                        }
                        success = true;
                        return success;
                    }
                    catch (Exception ex)
                    {
                        success = false;
                        return success;
                    }
                });
                return success;
            }
        }



        public Models.Account GetAccountByEmailAddress(string emailAddress)
        {
            return Execute(context =>
            {
                return (Models.Account)context.Accounts.FirstOrDefault(a => a.EmailAddress.ToLower().Equals(emailAddress.ToLower()));
            });
        }

        public UpdateResult Update(Models.Account account, string lastUpdateUsername)
        {
            return Execute(cx =>
            {
                Guid findId = account.GetId();
                Guid lastUpdateAccountId = cx.Accounts.Single(a => a.Username == lastUpdateUsername).AccountId;
                Data.Account act = cx.Accounts.SingleOrDefault(a => a.AccountId == findId);

                if (act == null)
                    return new UpdateResult("Cannot find account for username: {0}", account.Username);

                if (act.LastUpdateTimestamp.Ticks != account.Age)
                    return new UpdateResult(UpdateResult.ResultType.DataChanged);

                try
                {
                    act.FirstName = account.FirstName;
                    act.LastName = account.LastName;
                    act.EmailAddress = account.EmailAddress;
                    act.PracticeNumber = account.PracticeNumber;
                    act.ProfessionalBodyId = account.ProfessionalBody;
                    act.RegistrationNumber = account.RegistrationNumber;


                    if (!string.IsNullOrEmpty(account.TitleId))
                        act.TitleId = Models.BaseModel.DecryptNullableId(account.TitleId);

                    if (account.AccountRoles != null)
                    {

                        List<Data.AccountRole> accountRoleList = new List<Data.AccountRole>();
                        if (act.AccountRoles.Count != 0)
                        {
                            accountRoleList = act.AccountRoles.GroupBy(x => x.RoleId).FirstOrDefault().ToList();
                        }


                        foreach (Data.AccountRole ar in accountRoleList)
                        {
                            act.AccountRoles.Remove(ar);
                            cx.AccountRoles.Remove(ar);
                        }




                        foreach (Data.Models.AccountRole ar in account.AccountRoles)
                        {
                            Guid id = BaseModel.DecryptId(ar.RoleID);
                            if (act.AccountRoles.Where(x => x.RoleId == id).ToList().Count == 0)
                            {
                                act.AccountRoles.Add(new AccountRole()
                                {
                                    RoleId = id,
                                    AccountId = act.AccountId,
                                    AccountRoleId = Guid.NewGuid()
                                });

                            }

                        }

                    }

                    act.ContactNumber = account.ContactNumber;
                    act.IDNumberType = account.IDType;
                    act.IDNumber = account.IDNumber;
                    if (account.Avatar != null)
                        act.Avatar = Convert.FromBase64String(account.Avatar.Substring(22));

                    if (cx.ChangeTracker.HasChanges())
                    {
                        WriteAudit(cx, lastUpdateAccountId);

                        act.LastUpdateTimestamp = DateTime.Now;
                        act.LastUpdateAccountId = lastUpdateAccountId;
                        act.FirstSignIn = false;

                        cx.SaveChanges();
                    }
                    return new UpdateResult(true);
                }
                catch (Exception ex)
                {
                    return new UpdateResult("Error updating profile: {0}", ex.Message);
                }

            });
        }

        public List<string> VerifyNewUsernames(List<string> verification)
        {
            List<string> ver = verification.Select(v => v.ToLower()).ToList();
            List<string> result = new List<string>();
            return Execute(context =>
            {
                foreach (var account in context.Accounts.Select(a => new { Username = a.Username.ToLower(), Email = a.EmailAddress.ToLower() }))
                {
                    if (ver.Contains(account.Username))
                        result.Add(account.Username);
                    if (ver.Contains(account.Email))
                        result.Add(account.Email);
                }
                return result;
            });
        }

        public bool AllowScale(Guid accountId, string scaleID)
        {

            Guid scaleId = BaseModel.DecryptId(scaleID);
            return Execute(context =>
            {

                ScalePermission sp = (ScalePermission)context.ScalePermissions.OrderByDescending(x => x.DateCreatedTimestamp).FirstOrDefault(x => x.AccountId == accountId && x.ScaleId == scaleId);
                return sp != null && !olderThanYear(sp.LastUpdateTimestamp) && sp.Grade >= 80;
            });
        }


        public List<ScalePermission> AllPermissions()
        {
            return Execute(context =>
            {

                return context.ScalePermissions.ToList();
            });
        }

        private static bool olderThanYear(DateTime date)
        {

            DateTime expiryDate = date.AddYears(1).AddMonths(1).Subtract(new TimeSpan(date.Day + 1, 0, 0, 0));

            return DateTime.Now > expiryDate;
        }

        public UpdateResult AddNewUsers(List<Models.Account> newUsers, string clientId, List<string> permissions, string lastUpdateUsername)
        {
            try
            {
                return Execute(context =>
                {
                    Guid lastUpdateAccountId = context.Accounts.Single(a => a.Username == lastUpdateUsername).AccountId;
                    Guid cid = BaseModel.DecryptId(clientId);
                    Data.Provider provider = context.Providers.SingleOrDefault(p => p.ProviderId == cid);
                    Data.ListItem funder = context.ListItems.SingleOrDefault(li => li.ListItemId == cid);

                    List<Data.Account> inserts = new List<Data.Account>();
                    foreach (var user in newUsers)
                    {
                        var newData = new Data.Account
                        {
                            Username = user.Username,
                            FirstName = user.FirstName,
                            LastName = user.LastName,
                            EmailAddress = user.EmailAddress,
                            Password = string.Empty,
                            FirstSignIn = true,
                            ResetBySuperAdmin = false,
                            AccountTypeId = DataAccess.ListItem.GetListItem("AccountType", "User").GUID,
                            StatusId = DataAccess.ListItem.GetListItem("Status", "Active").GUID
                        };

                        foreach (var permissionId in permissions)
                        {
                            Guid pid = BaseModel.DecryptId(permissionId);
                            if (provider != null)
                                newData.ProviderAccountPermissions.Add(new ProviderAccountPermission
                                {
                                    ProviderId = cid,
                                    PermissionId = pid
                                });
                            else if (funder != null)
                                newData.FunderAccountPermissions.Add(new FunderAccountPermission
                                {
                                    FunderId = cid,
                                    PermissionId = pid
                                });
                        }

                        context.Accounts.Add(newData);
                        inserts.Add(newData);
                    }

                    WriteAudit(context, lastUpdateAccountId);

                    inserts.ForEach(a =>
                    {
                        a.LastUpdateAccountId = lastUpdateAccountId;
                        a.LastUpdateTimestamp = DateTime.Now;
                        a.DateCreatedTimestamp = DateTime.Now;
                    });

                    context.SaveChanges();

                    return new UpdateResult(true);

                });
            }
            catch (Exception ex)
            {
                return new UpdateResult("Error inserting new users");
            }
        }

        public Models.Account VerifyAccount(Models.Account model)
        {
            return Execute(context =>
            {
                Guid accountId;
                if (!Guid.TryParse(model.ID, out accountId))
                    return null;

                Data.Account account;
                try
                {
                    account = context.Accounts.Single(a => a.AccountId == accountId);
                }
                catch
                {
                    return null;
                }

                account.SecurityQuestionId = BaseModel.DecryptId(model.SecurityQuestionID);
                account.SecurityQuestionAnswer = model.SecurityQuestionAnswer;
                account.Password = MD5.Hex(model.Password);

                Guid lastUpdateAccountId = context.Accounts.OrderBy(a => a.DateCreatedTimestamp).First().AccountId;

                WriteAudit(context, lastUpdateAccountId);

                account.LastUpdateAccountId = account.AccountId;
                account.LastUpdateTimestamp = DateTime.Now;

                context.SaveChanges();

                return (Models.Account)account;

            });
        }

        public UpdateResult DeletePermission(Permission permission)
        {
            return Execute(context =>
            {
                Guid id = permission.GetId();
                FunderAccountPermission fap = context.FunderAccountPermissions.SingleOrDefault(x => x.FunderAccountPermissionId == id);
                if (fap != null)
                    context.FunderAccountPermissions.Remove(fap);
                else
                {
                    ProviderAccountPermission pap = context.ProviderAccountPermissions.SingleOrDefault(x => x.ProviderAccountPermissionId == id);
                    if (pap != null)
                        context.ProviderAccountPermissions.Remove(pap);
                }
                context.SaveChanges();
                return new UpdateResult(true);
            });
        }

        public UpdateResult SetNewPassword(string accountID, string newPassword, string oldPassword, bool verifyOldPassword)
        {
            return Execute(context =>
            {
                Guid accountId = BaseModel.DecryptId(accountID);
                Data.Account account = context.Accounts.SingleOrDefault(a => a.AccountId == accountId);
                if (account == null)
                    return new UpdateResult("Invalid user");

                if (verifyOldPassword)
                    if (account.Password != MD5.Hex(oldPassword))
                        return new UpdateResult("Invalid old password");

                account.Password = MD5.Hex(newPassword);
                if (!verifyOldPassword)
                    account.ResetBySuperAdmin = true;
                context.SaveChanges();

                return new UpdateResult(true);

            });
        }

        public UpdateResult AddPermission(Permission permission)
        {
            return Execute(context =>
            {
                Guid cid = BaseModel.DecryptId(permission.ClientID);
                Guid pid = BaseModel.DecryptId(permission.PermissionID);
                Guid aid = BaseModel.DecryptId(permission.AccountID);

                Data.Provider provider = context.Providers.SingleOrDefault(p => p.ProviderId == cid);
                if (provider != null)
                {
                    if (provider.ProviderAccountPermissions.SingleOrDefault(pap => pap.AccountId == aid && pap.PermissionId == pid) == null)
                        provider.ProviderAccountPermissions.Add(new ProviderAccountPermission
                        {
                            AccountId = aid,
                            PermissionId = pid,
                        });
                }
                else
                    if (context.FunderAccountPermissions.SingleOrDefault(fap => fap.AccountId == aid && fap.PermissionId == pid && fap.FunderId == cid) == null)
                    context.FunderAccountPermissions.Add(new FunderAccountPermission
                    {
                        AccountId = aid,
                        FunderId = cid,
                        PermissionId = pid
                    });

                context.SaveChanges();

                return new UpdateResult(true);

            });
        }

        public UpdateResult SetActiveStatus(string id, bool active, string lastUpdateUsername)
        {
            return Execute(context =>
             {

                 Guid lastUpdateAccountId = context.Accounts.Single(a => a.Username == lastUpdateUsername).AccountId;

                 Guid accountId = BaseModel.DecryptId(id);

                 if (lastUpdateAccountId == accountId)
                     return new UpdateResult("Cannot update your own status");

                 Models.ListItem listItem = DataAccess.ListItem.GetListItem("Status", active ? "Active" : "InActive");

                 Data.Account account = context.Accounts.Single(acc => acc.AccountId == accountId);

                 account.StatusId = listItem.GUID;

                 WriteAudit(context, lastUpdateAccountId);
                 account.LastUpdateAccountId = account.AccountId;
                 account.LastUpdateTimestamp = DateTime.Now;

                 context.SaveChanges();

                 return new UpdateResult(true);

             });

        }




        public UpdateResult SignDisclaimer(string username)
        {
            return Execute(context =>
            {

                Data.Account account = context.Accounts.Single(a => a.Username == username);

                account.DisclaimerAgreeTimestamp = DateTime.Now;

                WriteAudit(context, account.AccountId);

                account.LastUpdateAccountId = account.AccountId;
                account.LastUpdateTimestamp = DateTime.Now;
                account.FirstSignIn = false;
                account.ResetBySuperAdmin = false;
                context.SaveChanges();

                return new UpdateResult(true);

            });

        }

        public UpdateResult AddPatient(Data.Patient patient, Guid accountId)
        {
            return Execute(context =>
            {

                context.Patients.Add(patient);

                WriteAudit(context, accountId);

                context.SaveChanges();

                return new UpdateResult(true);

            });

        }

        public UpdateResult UpdatePatient(Data.Models.Patient model, Guid accountId)
        {
            return Execute(context =>
            {
                Guid patientId = BaseModel.DecryptId(model.ID);

                Data.Patient patient = context.Patients.FirstOrDefault(x => x.PatientId == patientId);


                patient.FirstName = model.FirstName;
                patient.LastName = model.LastName;
                patient.TitleId = BaseModel.DecryptNullableId(model.TitleId);
                patient.BirthDate = model.BirthDate;
                patient.GenderId = BaseModel.DecryptNullableId(model.GenderID);
                patient.RaceId = BaseModel.DecryptNullableId(model.RaceID);
                patient.ContactNumber = model.ContactNumber;
                patient.IDNumber = model.IDNumber;
                patient.Street = model.Street;
                patient.CityId = BaseModel.DecryptNullableId(model.CityId);
                patient.ProvinceId = BaseModel.DecryptNullableId(model.ProvinceId);
                patient.CountryId = BaseModel.DecryptNullableId(model.CountryID);
                patient.PostalCode = model.PostalCode;
                patient.NextOfKinName = model.NextOfKinName;
                patient.NextOfKinContact = model.NextOfKinContact;
                patient.MedicalSchemeMembershipNumber = model.MedicalSchemeNo;
                patient.MedicalSchemeId = BaseModel.DecryptNullableId(model.MedicalSchemeID);
                patient.NextOfKinEmail = model.NextOfKinEmail;
                patient.NextOfKinRelationship = model.NextOfKinRelationship;
                patient.ResidentialEnvironmentId = BaseModel.DecryptNullableId(model.ResidentialEnvironmentID);
                patient.AdmitFromId = BaseModel.DecryptNullableId(model.AdmitFromID);
                patient.DischargeToId = BaseModel.DecryptNullableId(model.DischargeToID);

                var deleteList = new List<PatientSupportService>();

                foreach (var supportService in patient.PatientSupportServices)
                {
                    if (model.SupportServices.Count(x => x.SupportServiceId == supportService.SupportServiceId) == 0)
                    {
                        deleteList.Add(supportService);
                    }
                    else
                    {
                        supportService.Note = model.SupportServices.Single(x => x.SupportServiceId == supportService.SupportServiceId).Note;
                    }
                }

                foreach (var supportService in deleteList)
                {
                    context.PatientSupportServices.Remove(supportService);
                }

                if (model.SupportServices != null)
                    foreach (var supportService in model.SupportServices)
                    {
                        if (patient.PatientSupportServices.Count(x => x.SupportServiceId == supportService.SupportServiceId) == 0)
                        {
                            patient.PatientSupportServices.Add(new PatientSupportService()
                            {
                                SupportServiceId = supportService.SupportServiceId,
                                Note = supportService.Note,
                                LastUpdatedTimestamp = DateTime.Now,
                                LastUpdatedAccountId = accountId

                            });
                        }
                    }



                WriteAudit(context, accountId);


                patient.LastUpdateTimestamp = DateTime.Now;
                patient.LastUpdateAccountId = accountId;

                context.SaveChanges();

                return new UpdateResult(true);

            });

        }



        public UpdateResult AddCase(Case patientCase, Guid accountId)
        {
            return Execute(context =>
            {
                context.Cases.Add(patientCase);

                Data.Patient patient = context.Patients.Single(x => x.PatientId == patientCase.PatientId);
                patient.LastUpdateTimestamp = DateTime.Now;
                patient.LastUpdateAccountId = accountId;

                if (patientCase.ImpairmentGroupId.HasValue)
                {
                    foreach (var c in patient.Cases)
                    {
                        c.ImpairmentGroupId = patientCase.ImpairmentGroupId;
                    }

                    context.PatientImpairmentGroupHistories.Add(new Data.PatientImpairmentGroupHistory()
                    {
                        ImpairmentGroupId = patientCase.ImpairmentGroupId,
                        PatientId = patient.PatientId,
                        Timestamp = DateTime.Now
                    });
                }

                WriteAudit(context, accountId);

                context.SaveChanges();

                return new UpdateResult(true);

            });

        }
        public UpdateResult UpdateCase(Case patientCase, Guid accountId)
        {
            return Execute(context =>
            {

                Case caseCurrent = context.Cases.Single(c => c.CaseId == patientCase.CaseId);


                bool hasImpairmentGroupChanged = caseCurrent.ImpairmentGroupId != patientCase.ImpairmentGroupId;

                caseCurrent.StartDate = patientCase.StartDate;
                caseCurrent.PatientProviders = patientCase.PatientProviders;
                caseCurrent.ICD10Id = patientCase.ICD10Id;
                caseCurrent.ImpairmentGroupId = patientCase.ImpairmentGroupId;
                caseCurrent.ReferringDoctor = patientCase.ReferringDoctor;
                caseCurrent.ReferringDoctorContact = patientCase.ReferringDoctorContact;
                caseCurrent.ReferringDoctorEmail = patientCase.ReferringDoctorEmail;
                caseCurrent.ReferringDoctorPracticeNumber = patientCase.ReferringDoctorPracticeNumber;
                caseCurrent.TreatingDoctor = patientCase.TreatingDoctor;
                caseCurrent.TreatingDoctorContact = patientCase.TreatingDoctorContact;
                caseCurrent.TreatingDoctorEmail = patientCase.TreatingDoctorEmail;
                caseCurrent.TreatingDoctorPracticeNumber = patientCase.TreatingDoctorPracticeNumber;
                caseCurrent.AdmissionStatusId = patientCase.AdmissionStatusId;

                caseCurrent.EndDate = patientCase.EndDate;

                Data.Patient patient = context.Patients.Single(x => x.PatientId == patientCase.PatientId);
                patient.LastUpdateTimestamp = DateTime.Now;
                patient.LastUpdateAccountId = accountId;

                foreach (var c in patient.Cases)
                {
                    c.ImpairmentGroupId = patientCase.ImpairmentGroupId;
                }

                if (hasImpairmentGroupChanged)
                {
                    context.PatientImpairmentGroupHistories.Add(new Data.PatientImpairmentGroupHistory()
                    {
                        ImpairmentGroupId = patientCase.ImpairmentGroupId,
                        PatientId = patient.PatientId,
                        Timestamp = DateTime.Now
                    });
                }

                WriteAudit(context, accountId);

                caseCurrent.LastUpdateAccountId = accountId;
                caseCurrent.LastUpdateTimestamp = DateTime.Now;
                context.SaveChanges();

                return new UpdateResult(true);

            });

        }


        public UpdateResult AddScale(string patientId, string scaleId, string freqId, Guid accountId)
        {
            return Execute(context =>
            {

                PatientScale scale = new PatientScale()
                {
                    FrequencyId = Data.Models.BaseModel.DecryptId(freqId),
                    ScaleId = Data.Models.BaseModel.DecryptId(scaleId),
                    PatientId = Data.Models.BaseModel.DecryptId(patientId),
                };

                context.PatientScales.Add(scale);

                WriteAudit(context, accountId);

                context.SaveChanges();

                return new UpdateResult(true);

            });

        }

        public List<Data.Models.Message> GetMessagesByUsername(string username, string patientId = null)
        {
            return Execute(context =>
            {

                Guid accountId = context.Accounts.Single(a => a.Username.ToLower() == username).AccountId;

                var allUserMessages = context.Messages.Where(m => (m.FromAccountId == accountId && !m.Archived) || m.MessageRecipients.Count(mr => mr.RecipientAccountId == accountId && !mr.Archived) > 0).ToList().Select(m =>
                {
                    Models.Message result = (Models.Message)m;
                    result.IsRead = !result.IsMessageUnread(username);
                    return result;
                }).ToList();

                if (!string.IsNullOrWhiteSpace(patientId))
                    allUserMessages = allUserMessages.Where(m => m.PatientId == patientId).ToList();

                return allUserMessages;

            });
        }

        public Data.Models.Message GetMessage(Guid messageId, string username)
        {
            return Execute(context =>
            {
                var result = context.Messages.Single(m => m.MessageId == messageId);
                var recipient = result.MessageRecipients.SingleOrDefault(mr => mr.RecipientAccount.Username.ToLower() == username);
                bool isread = result.FromAccount.Username.ToLower() == username;
                if (recipient != null)
                    if (!recipient.ReadTimestamp.HasValue)
                    {
                        isread = false;
                        recipient.ReadTimestamp = DateTime.Now;
                        context.SaveChanges();
                    }
                    else
                    {
                        isread = true;
                    }
                var message = (Models.Message)result;
                message.IsRead = isread;
                return message;
            });
        }

        public void UpdateMesssages(string username, string[] messageIDs, Action<Data.Message> messageUpdate, Action<Data.MessageRecipient> recipientUpdate)
        {
            Execute(context =>
            {
                List<Guid> messageIds = messageIDs.Select(s => BaseModel.DecryptId(s)).ToList();

                if (messageUpdate != null)
                    foreach (Data.Message message in context.Messages.Where(m => m.FromAccount.Username.ToLower() == username && messageIds.Contains(m.MessageId)))
                        messageUpdate(message);

                foreach (Data.MessageRecipient recipient in context.MessageRecipients.Where(mr => mr.RecipientAccount.Username.ToLower() == username && messageIds.Contains(mr.MessageId)))
                    recipientUpdate(recipient);

                context.SaveChanges();
                return true;

            });
        }

        public void MarkMessagesAsUnread(string username, string[] messageIDs)
        {
            UpdateMesssages(username, messageIDs, null, mr => mr.ReadTimestamp = null);
        }

        public void MarkMessagesAsArchived(string username, string[] messageIDs)
        {
            UpdateMesssages(username, messageIDs, m => m.Archived = true, mr => mr.Archived = true);
        }

        public List<Models.Account> RecipientSearch(string query)
        {
            return Execute(context =>
            {
                List<Models.Account> result = new List<Models.Account>();
                foreach (var account in context.Accounts)
                {

                    Models.Account act = new Models.Account();
                    act.Username = account.Username;
                    act.DisplayName = string.Format("{0} {1}", account.FirstName, account.LastName);

                    act.RecipientSearchName = string.Format("{0} {1} ({2})", account.FirstName, account.LastName, account.Username);
                    if (act.RecipientSearchName.ToLower().Contains(query))
                        result.Add(act);

                }
                return result;
            });
        }

        public void SendMessage(string patientID, string senderUsername, List<string> recipientUsernames, string body)
        {
            Execute(context =>
            {

                var fromAccountId = context.Accounts.Single(a => a.Username.ToLower() == senderUsername.ToLower()).AccountId;
                //var recipientAccountIds = recipientUsernames.Select(un => context.Accounts.Single(a => a.Username.ToLower() == un.ToLower()).AccountId).ToList();

                Data.Message message = new Message
                {
                    Body = body,
                    FromAccountId = fromAccountId,
                    PatientId = Guid.ParseExact(patientID, "N"),
                    SentTimestamp = DateTime.Now
                };
                recipientUsernames.ForEach(un =>
                {
                    Guid recipient = context.Accounts.Single(a => a.FirstName.ToLower() + " " + a.LastName.ToLower() == un.ToLower()).AccountId;
                    message.MessageRecipients.Add(new MessageRecipient
                    {
                        RecipientAccountId = recipient
                    });
                });

                context.Messages.Add(message);

                context.SaveChanges();

                return true;

            });
        }

        public long GetLatestPermission()
        {
            return Execute(context =>
            {
                if (context.ScalePermissions.Count() == 0)
                    return 0;
                DateTime result = context.ScalePermissions.OrderByDescending(sp => sp.LastUpdateTimestamp).First().LastUpdateTimestamp;
                TimeSpan span = (result - new DateTime(1970, 1, 1));
                return (long)span.TotalSeconds;
            });
        }

        public List<Models.Account> GetAccountsOfProvider(string ProviderId, string AccountId)
        {
            return Execute(context =>
            {
                if (string.IsNullOrWhiteSpace(ProviderId))
                {
                    return new List<Models.Account>();
                }
                Guid providerId = BaseModel.DecryptId(ProviderId);

                List<Models.Account> result = new List<Models.Account>();
                foreach (var act in context.ProviderAccountPermissions.Where(pap => pap.ProviderId == providerId && pap.Permission.Description.Equals("Clinician")).Select(pap => pap.Account))
                    if (result.Count(a => a.GUID == act.AccountId) == 0)
                        result.Add((Models.Account)act);
                return result;
            });
        }

        public List<Models.Account> GetAccountsForPatient(string patientID, List<SADFM.Data.Models.Permission> permissions, string ClientType)
        {
            Guid patientId = Guid.ParseExact(patientID, "N");

            return Execute(context =>
            {
                List<Guid> result = new List<Guid>();

                if (ClientType != null)
                {

                    if (ClientType.Equals("Provider"))
                    {
                        result = context.PatientProviders.Where(cp => cp.Case.PatientId == patientId).Select(cp => cp.AccountId).ToList();

                    }
                    if (permissions.FirstOrDefault(x => x.PermissionDescription == "Case Manager") != null)
                    {
                        result.AddRange(context.PatientProviders.Where(cp => cp.Case.PatientId == patientId).SelectMany(cp => cp.Provider.ProviderAccountPermissions).Where(pap => pap.Permission.Name == "Admin" || pap.Permission.Name == "ProviderCaseManager" || pap.Permission.Name == "FunderCaseManager").Select(pap => pap.AccountId));

                        result.AddRange(context.PatientProviders.SelectMany(cp => cp.Provider.ProviderAccountPermissions).Where(pap => pap.Permission.Name == "FunderCaseManager").Select(pap => pap.AccountId));
                    }

                }
                else
                {
                    result.AddRange(context.PatientProviders.Where(cp => cp.Case.PatientId == patientId).SelectMany(cp => cp.Provider.ProviderAccountPermissions).Where(pap => pap.Permission.Name == "Admin" || pap.Permission.Name == "ProviderCaseManager" || pap.Permission.Name == "FunderCaseManager").Select(pap => pap.AccountId));

                    result.AddRange(context.PatientProviders.SelectMany(cp => cp.Provider.ProviderAccountPermissions).Where(pap => pap.Permission.Name == "FunderCaseManager").Select(pap => pap.AccountId));
                }

                List<Models.Account> res = new List<Models.Account>();
                foreach (Guid accountId in result.Distinct())
                {
                    res.Add((Models.Account)context.Accounts.Single(a => a.AccountId == accountId));
                }

                return res.OrderBy(a => a.FirstName).ThenBy(a => a.LastName).ToList();

            });
        }

    }
}
