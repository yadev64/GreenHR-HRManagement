using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class userentity
    {
        public string name { get; set; }
        public string pwd { get; set; }
        public string email { get; set; }
    }

    public class hrmanager
    {
        public int appl_id { get; set; }
        public string job_desc { get; set; }
        public string min_qualification { get; set; }
        public string pref_qualification { get; set; }
        public string resp { get; set; }
        public int req_id { get; set; }
        public string appstatus { get; set; }
        public string manager_name { get; set; }
        public string project_name { get; set; }
        public int period_month { get; set; }
        public int noof_vacancies { get; set; }
        public string skill { get; set; }
        public int pgm_languages { get; set; }
        public int exp_years { get; set; }
        public string desg { get; set; }
        public int dateapp { get; set; }



    }
}