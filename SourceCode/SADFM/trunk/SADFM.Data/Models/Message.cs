using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SADFM.Data.Models
{
    public class Message : BaseModel
    {
        public Message() : base(null, 0) { }
        public Message(object Id = null, long Age = 0) : base(Id, Age) { }

        public DateTime SentTimestamp { get; set; }
        public string SentTimestampDisplay { get; set; }
        public string From { get; set; }
        public string To { get; set; }
        public string Body { get; set; }
        public string MessageSummary { get; set; }
        public string RecipientSummary { get; set; }
        public string Patient { get; set; }
        public string PatientId { get; set; }
        private string FromUsername { get; set; }
        private Dictionary<string, bool> RecipientUsernamesUnread { get; set; }
        public bool IsRead { get; set; }

        public static explicit operator Message(Data.Message data)
        {
            var act = data.MessageRecipients.First().RecipientAccount;
            string recipientSummary = string.Format("{0} {1}", act.FirstName, act.LastName);
            if (data.MessageRecipients.Count > 1)
                recipientSummary = string.Format("{0} and {1} more", recipientSummary, data.MessageRecipients.Count - 1);

            return new Message(data.MessageId, 0)
            {
                From = string.Format("{0} {1}", data.FromAccount.FirstName, data.FromAccount.LastName),
                To = string.Join(",", data.MessageRecipients.Select(r => string.Format("{0} {1}", r.RecipientAccount.FirstName, r.RecipientAccount.LastName))),
                Body = data.Body,
                MessageSummary = data.Body.Length <= 40 ? data.Body : string.Format("{0}{1}", data.Body.Substring(0, 40), "..."),
                FromUsername = data.FromAccount.Username,
                RecipientUsernamesUnread = data.MessageRecipients.ToDictionary(mr => mr.RecipientAccount.Username, mr => !mr.ReadTimestamp.HasValue),
                RecipientSummary = recipientSummary,
                SentTimestamp = data.SentTimestamp,
                SentTimestampDisplay = data.SentTimestamp.ToString("dd MMM yyyy HH:mm"),
                Patient = string.Format("{0} {1}", data.Patient.FirstName, data.Patient.LastName),
                PatientId = data.PatientId.ToString("N")
            };
        }

        internal bool IsMessageUnread(string username)
        {
            return RecipientUsernamesUnread.Count(kvp => kvp.Key.ToLower() == username && kvp.Value) == 1;
        }

    }
}
