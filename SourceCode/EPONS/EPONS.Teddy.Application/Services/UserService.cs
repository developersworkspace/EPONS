using EPONS.Teddy.Application.Exceptions;
using EPONS.Teddy.Application.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.Linq;

namespace EPONS.Teddy.Application.Services
{
    public class UserService
    {
        private UserRepository _userRepository;

        public UserService(IDbConnection connection)
        {
            _userRepository = new UserRepository(connection);
        }

        public List<EntityViews.User> List(int pageNumber, int pageSize, string query, out int totalRecords)
        {
            return _userRepository.List(pageNumber, pageSize, query, out totalRecords);
        }

        public void SetFacility(string username, Guid facilityId)
        {
            _userRepository.SetFacility(username, facilityId);
        }
        public void SetPosition(string username, Guid PositionId)
        {
            _userRepository.SetPosition(username, PositionId);
        }
        public Entities.User Get(Guid id)
        {
            Entities.User userModel = _userRepository.FindById(id);

            return userModel;
        }

        public IList<ValueObjects.FacilityPermission> ListFacilityPermissions(Guid userId)
        {
            return _userRepository.FindFacilityPermissions(userId);
        }

        public void Lock(Guid userId)
        {
            _userRepository.LockUser(userId);
        }
        public void Unlock(Guid userId)
        {
            _userRepository.UnlockUser(userId);
        }

        public byte[] Avatar(Guid userId)
        {
            return _userRepository.FindAvatarById(userId);
        }

        private string MD5Hex(string input)
        {
            MD5 md5 = MD5.Create();
            byte[] bytes = md5.ComputeHash(Encoding.UTF8.GetBytes(input ?? string.Empty));

            return BitConverter.ToString(bytes);
        }

        private string SHA1(string input)
        {
            using (SHA1Managed sha1 = new SHA1Managed())
            {
                var hash = sha1.ComputeHash(Encoding.UTF8.GetBytes(input));
                var sb = new StringBuilder(hash.Length * 2);

                foreach (byte b in hash)
                {
                    sb.Append(b.ToString("x2"));
                }

                return sb.ToString();
            }

        }

        public bool Save(Entities.User user)
        {
            return _userRepository.SaveUser(user);
        }

        public void AddFacilityPermission(Guid userId, Guid facilityId, Guid permissionId)
        {
            IList<ValueObjects.FacilityPermission> facilityPermissions = _userRepository.FindFacilityPermissions(userId);

            if (facilityPermissions.Count(x => x.FacilityId == facilityId) > 0)
                throw new BusinessRuleException("User already has a permission at this facility");

            _userRepository.CreateFacilityPermission(userId, facilityId, permissionId);
        }

        public void RemoveFacilityPermission(Guid userId, Guid facilityId, Guid permissionId)
        {
            _userRepository.DeleteFacilityPermission(userId, facilityId, permissionId);
        }

        public void AcceptDisclaimer(string username)
        {
            _userRepository.AcceptDisclaimer(username);
        }

        public void AddMeasurementToolScore(Guid userId, Guid measurementToolId, int score)
        {
            _userRepository.CreateMeasurementToolScore(userId, measurementToolId, score);
        }

        public void Create(Entities.User model)
        {
            string encryptedPassword = MD5Hex(SHA1("password"));

            if (_userRepository.FindByUsername(model.Username) != null)
                throw new BusinessRuleException("User with this username already exists");

            if (_userRepository.FindByEmailAddress(model.EmailAddress) != null)
                throw new BusinessRuleException("User with this email address already exists");

            _userRepository.CreateUser(model, encryptedPassword);
        }

        public void ChangePassword(Guid userId, string newPassword)
        {
            string encryptedPassword = MD5Hex(SHA1(newPassword));

            _userRepository.UpdateUserPassword(userId, encryptedPassword);
        }
    }
}
