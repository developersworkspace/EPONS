//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SADFM.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class MessageRecipient
    {
        public System.Guid MessageRecipientId { get; set; }
        public System.Guid MessageId { get; set; }
        public System.Guid RecipientAccountId { get; set; }
        public Nullable<System.DateTime> ReadTimestamp { get; set; }
        public bool Archived { get; set; }
    
        public virtual Account RecipientAccount { get; set; }
        public virtual Message Message { get; set; }
    }
}
