//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SADFM.DatabaseMigrator
{
    using System;
    using System.Collections.Generic;
    
    public partial class Session
    {
        public System.Guid SessionId { get; set; }
        public System.Guid AccountId { get; set; }
        public System.DateTime StartTimestamp { get; set; }
        public System.DateTime LastActionTimestamp { get; set; }
        public Nullable<double> Longitude { get; set; }
        public Nullable<double> Latitude { get; set; }
    
        public virtual Account Account { get; set; }
    }
}
