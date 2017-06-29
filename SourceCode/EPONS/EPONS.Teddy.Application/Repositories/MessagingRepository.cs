using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EPONS.Teddy.Application.Entities;

namespace EPONS.Teddy.Application.Repositories
{
    public class MessagingRepository : Repository
    {
        public MessagingRepository(IDbConnection connection) : base(connection)
        {

        }

        internal IList<Message> FindUnreadMessagesByUserId(Guid userId)
        {
            var data = Query<dynamic>("[EPONS].[FindUnreadMessagesByUserId]", new
            {
                userId = userId
            });

            return data.GroupBy(x => new
            {
                Body = x.Body,
                Id = x.Id,
                PatientDisplayName = x.PatientDisplayName,
                PatientId = x.PatientId,
                SenderDisplayName = x.SenderDisplayName,
                SenderId = x.SenderId,
                Timestamp = x.Timestamp
            }).Select(x => new Message()
            {
                Body = x.Key.Body,
                Id = x.Key.Id,
                PatientDisplayName = x.Key.PatientDisplayName,
                PatientId = x.Key.PatientId,
                SenderDisplayName = x.Key.SenderDisplayName,
                SenderId = x.Key.SenderId,
                Timestamp = x.Key.Timestamp,
                Recipients = x.Select(y => new EntityViews.User()
                {
                    Firstname = y.RecipientFirstname,
                    Lastname = y.RecipientLastname
                }).ToList()
            }
           ).ToList();
        }

        internal void MarkMessagesAsRead(Guid userId, Guid patientId, DateTime timestamp)
        {
            Execute("[EPONS].[MarkMessagesAsRead]", new
            {
                userId = userId,
                patientId = patientId,
                timestamp = timestamp
            });
        }

        internal IList<Message> FindMessagesByPatientId(Guid patientId)
        {
            var data = Query<dynamic>("[EPONS].[FindMessagesByPatientId]", new
            {
                patientId = patientId
            });

            return data.GroupBy(x => new
            {
                Body = x.Body,
                Id = x.Id,
                PatientDisplayName = x.PatientDisplayName,
                PatientId = x.PatientId,
                SenderDisplayName = x.SenderDisplayName,
                SenderId = x.SenderId,
                Timestamp = x.Timestamp
            }).Select(x => new Message()
            {
                Body = x.Key.Body,
                Id = x.Key.Id,
                PatientDisplayName = x.Key.PatientDisplayName,
                PatientId = x.Key.PatientId,
                SenderDisplayName = x.Key.SenderDisplayName,
                SenderId = x.Key.SenderId,
                Timestamp = x.Key.Timestamp,
                Recipients = x.Select(y => new EntityViews.User()
                {
                    Firstname = y.RecipientFirstname
                }).ToList()
            }
           ).ToList();
        }

        internal Guid Send(Guid senderId, Guid patientId, string message)
        {
            var data = QueryOne<dynamic>("[EPONS].[SendMessage]", new
            {
                senderId = senderId,
                patientId = patientId,
                body = message
            });

            Guid messageId = data.MessageId;

            return messageId;

        }

        internal void SendMessageToRecipient(Guid userId, Guid messageId)
        {
            Execute("[EPONS].[SendMessageToRecipient]", new
            {
                userId = userId,
                messageId = messageId
            });
        }
    }
}
