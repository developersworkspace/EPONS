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
    
    public partial class ScalePermission
    {
        public System.Guid ScalePermissionsId { get; set; }
        public System.Guid AccountId { get; set; }
        public System.Guid ScaleId { get; set; }
        public System.DateTime DateCreatedTimestamp { get; set; }
        public System.DateTime LastUpdateTimestamp { get; set; }
        public System.Guid LastUpdateAccountId { get; set; }
        public Nullable<int> Grade { get; set; }
    
        public virtual Account Account { get; set; }
        public virtual ListItem ListItem { get; set; }
    }
}
