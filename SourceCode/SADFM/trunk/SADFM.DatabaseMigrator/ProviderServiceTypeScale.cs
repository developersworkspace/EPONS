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
    
    public partial class ProviderServiceTypeScale
    {
        public System.Guid ProviderServiceTypeScaleId { get; set; }
        public System.Guid ProviderServiceTypeId { get; set; }
        public System.Guid ScaleId { get; set; }
    
        public virtual ListItem ListItem { get; set; }
        public virtual ProviderServiceType ProviderServiceType { get; set; }
    }
}
