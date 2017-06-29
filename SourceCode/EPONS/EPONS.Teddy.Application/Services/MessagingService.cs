using EPONS.Teddy.Application.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EPONS.Teddy.Application.Services
{
    public class MessagingService
    {
        private MessagingRepository _messagingRepository;

        public MessagingService(MessagingRepository messagingRepository)
        {
            _messagingRepository = messagingRepository;
        }

        public IList<Entities.Message> Retrieve(Guid userId)
        {
            return _messagingRepository.FindUnreadMessagesByUserId(userId);
        }

        public IList<Entities.Message> RetrieveByPatientId(Guid patientId)
        {
            return _messagingRepository.FindMessagesByPatientId(patientId);
        }

        public void MarkAsRead(Guid userId, Guid patientId, DateTime timestamp)
        {
            _messagingRepository.MarkMessagesAsRead(userId, patientId, timestamp);
        }

        public void Send(Guid senderId, Guid[] userIds, Guid patientId, string message)
        {
            Guid messageId = _messagingRepository.Send(senderId, patientId, message);

            foreach (var userId in userIds)
                _messagingRepository.SendMessageToRecipient(userId, messageId);
        }
    }
}
