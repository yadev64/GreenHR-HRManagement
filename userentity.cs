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
        public string pgm_languages { get; set; }
        public int exp_years { get; set; }
        public string desg { get; set; }
        public string dateapp { get; set; }

        }
    public class candpool
    {
        public int cand_id { get;  set;}
        public string cand_name { get; set; }
        public string skills { get; set; }
        public string pgm_language { get; set; }
        public string high_qualification { get; set; }
        public string college { get; set; }
        public string university { get; set; }
        public string address { get; set; }
        public int exp_years { get; set; }
        public int notice_months { get; set; }
        public string latest_company { get; set; }
        public string latest_desg { get; set; }
        public int curr_sal { get; set; }
        public int reg_date { get; set; }
        public int age { get; set; }
        public string dob { get; set; }
        public string interview_date { get; set; }
        public int req_id { get; set; }
    }


}