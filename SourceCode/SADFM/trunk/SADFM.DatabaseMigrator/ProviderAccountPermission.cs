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
    
    public partial class ProviderAccountPermission
    {
        public System.Guid ProviderAccountPermissionId { get; set; }
        public System.Guid ProviderId { get; set; }
        public System.Guid AccountId { get; set; }
        public System.Guid PermissionId { get; set; }
    
        public virtual Account Account { get; set; }
        public virtual ListItem ListItem { get; set; }
        public virtual Provider Provider { get; set; }
    }
}
