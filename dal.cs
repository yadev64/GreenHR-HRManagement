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
        public void save(user_entity usr)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into register values(@username,@pwd,@phone,@address,@question,@answer,@email,@age)", con);

            cmd.Parameters.AddWithValue("@username", usr.usr_name);
            cmd.Parameters.AddWithValue("@pwd", usr.pwd);
            cmd.Parameters.AddWithValue("@phone", usr.phone);
            cmd.Parameters.AddWithValue("@address", usr.adress);
            cmd.Parameters.AddWithValue("@question", usr.question);
            cmd.Parameters.AddWithValue("@answer", usr.answer);
            cmd.Parameters.AddWithValue("@email", usr.email);
            cmd.Parameters.AddWithValue("@age", usr.age);


            cmd.ExecuteNonQuery();



            con.Close();
        }
    }
}