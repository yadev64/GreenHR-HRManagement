//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication1
{
    using System;
    using System.Collections.Generic;
    
    public partial class request_table
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public request_table()
        {
            this.application_table = new HashSet<application_table>();
        }
    
        public string manager_name { get; set; }
        public string project_name { get; set; }
        public Nullable<int> period_month { get; set; }
        public Nullable<int> noof_vacancies { get; set; }
        public string skill { get; set; }
        public string program_language { get; set; }
        public Nullable<int> experience_years { get; set; }
        public string request_description { get; set; }
        public int request_id { get; set; }
        public string request_status { get; set; }
        public string designation { get; set; }
        public Nullable<System.DateTime> date_request { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<application_table> application_table { get; set; }
    }
}
