//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FabrykaSPTI_PJ.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Maszyna
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Maszyna()
        {
            this.Operatorzy = new HashSet<Operator>();
        }
    
        public int Id { get; set; }
        public string Nazwa { get; set; }
        public string NumerEwidencyjny { get; set; }
        public Nullable<System.DateTime> DataUruchomienia { get; set; }
        public int HalaId { get; set; }
    
        public virtual Hala Hala { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Operator> Operatorzy { get; set; }
    }
}
