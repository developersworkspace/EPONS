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
    
    public partial class FunderAccountPermission
    {
        public System.Guid FunderAccountPermissionId { get; set; }
        public System.Guid FunderId { get; set; }
        public System.Guid AccountId { get; set; }
        public System.Guid PermissionId { get; set; }
    
        public virtual Account Account { get; set; }
        public virtual ListItem Funder { get; set; }
        public virtual ListItem Permission { get; set; }
    }
}
