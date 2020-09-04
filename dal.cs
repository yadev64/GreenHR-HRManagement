using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace WebApplication1
{
    public class dal
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-GAJ57FV\SQLEXPRESS;Initial Catalog=greenhr;Integrated Security=True");
        public DataTable dispRec()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from managerlogin_table", con);
            SqlDataReader rdr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(rdr);
            con.Close();
            return dt;
        }


        public void candShortlisterDal(int cand_id)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update candidate_table set status=@status where cand_id=@cand_id", con);
            cmd.Parameters.AddWithValue("@status", "shortlisted");
            cmd.Parameters.AddWithValue("@cand_id", cand_id);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void store(managerreq usr)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into request_table values(@mgrname,@projectname,@period,@noofvac,@skill,@pgmlang,@exp,@desc,@status,@date,@desig)", con);
            cmd.Parameters.AddWithValue("@mgrname", usr.mgrname);
            cmd.Parameters.AddWithValue("@projectname", usr.prjname);
            cmd.Parameters.AddWithValue("@period", usr.period);
            cmd.Parameters.AddWithValue("@noofvac", usr.noofvacancies);
            cmd.Parameters.AddWithValue("@skill", usr.skill);
            cmd.Parameters.AddWithValue("@pgmlang", usr.pgmlang);
            
            cmd.Parameters.AddWithValue("@exp", usr.exp);
            cmd.Parameters.AddWithValue("@desc", usr.prjdesc);
            cmd.Parameters.AddWithValue("@status", usr.status);
            cmd.Parameters.AddWithValue("@date", usr.date);
            cmd.Parameters.AddWithValue("@desig", usr.desig);


            cmd.ExecuteNonQuery();
            con.Close();
        }
        public DataTable status()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from request_table", con);
            
            SqlDataReader rdr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            
            dt.Load(rdr);
            
            con.Close();
            return dt;
        }
        public void storeapp(hrmanager cls)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into application_table values(@appl_id,@job_desc,@min_qualification,@pref_qualification,@resp,@req_id,@appstatus,@manager_name,@project_name,@period_month,@noof_vacancies,@skill,@pgm_languages,@exp_years,@desg,@dateapp)", con);
            cmd.Parameters.AddWithValue("@appl_id", cls.appl_id);
            cmd.Parameters.AddWithValue("@job_desc", cls.job_desc);
            cmd.Parameters.AddWithValue("@min_qualification", cls.min_qualification);
            cmd.Parameters.AddWithValue("@pref_qualification", cls.pref_qualification);
            cmd.Parameters.AddWithValue("@resp", cls.resp);
            cmd.Parameters.AddWithValue("@req_id", cls.req_id);

            cmd.Parameters.AddWithValue("@appstatus", cls.appstatus);
            cmd.Parameters.AddWithValue("@manager_name", cls.manager_name);
            cmd.Parameters.AddWithValue("@project_name", cls.project_name);
            cmd.Parameters.AddWithValue("@period_month", cls.period_month);
            cmd.Parameters.AddWithValue("@noof_vacancies", cls.noof_vacancies);
            cmd.Parameters.AddWithValue("@skill", cls.skill);
            cmd.Parameters.AddWithValue("@pgm_languages", cls.pgm_languages);
            cmd.Parameters.AddWithValue("@exp_years", cls.exp_years);
            cmd.Parameters.AddWithValue("@desg", cls.desg);
            cmd.Parameters.AddWithValue("@dateapp", cls.dateapp);



            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void post(string status)
        {
           
           
            con.Open();
            hrmanager cls1 = new hrmanager();
            SqlCommand cmd = new SqlCommand("update request_table set appstatus=@appstatus where req_id=@req_id", con);
           
            cmd.Parameters.AddWithValue("@req_id", cls1.req_id);
            cmd.Parameters.AddWithValue("@appstatus", cls1.appstatus);


            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}