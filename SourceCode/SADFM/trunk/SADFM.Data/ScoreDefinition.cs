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
    
    public partial class ScoreDefinition
    {
        public System.Guid ScoreDefinitionId { get; set; }
        public System.Guid ScaleValueId { get; set; }
        public Nullable<System.Guid> FunderExplanationId { get; set; }
        public Nullable<System.Guid> ProviderExplanationId { get; set; }
    
        public virtual ListItem FunderExplaination { get; set; }
        public virtual ListItem ProviderExplaination { get; set; }
        public virtual ListItem ScaleValue { get; set; }
    }
}
