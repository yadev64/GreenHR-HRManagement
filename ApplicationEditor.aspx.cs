using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class ApplicationEditor : System.Web.UI.Page
    {

        

        protected void Page_Load(object sender, EventArgs e)
        {
            string reqid  =  Request.QueryString["reqid"];
           
            bal bl  =  new bal();
            hrmanager cls  =  bl.rec(reqid);
           
            TextBox1.Text = cls.appl_id.ToString();
            TextBox1.Text = "Hello";
            TextBox2.Text = cls.job_desc;
            TextBox3.Text = cls.min_qualification.ToString();
            TextBox4.Text = cls.pref_qualification;
            TextBox5.Text = cls.resp;
            TextBox17.Text = cls.req_id.ToString();

            TextBox7.Text = cls.appstatus;
            TextBox8.Text = cls.manager_name;
            TextBox9.Text = cls.project_name;
            TextBox10.Text = cls.period_month.ToString();
            TextBox11.Text = cls.noof_vacancies.ToString();
            TextBox12.Text = cls.skill;
            TextBox13.Text = cls.pgm_languages.ToString();
            TextBox14.Text = cls.exp_years.ToString();
            TextBox15.Text = cls.desg;
            TextBox16.Text = cls.dateapp.ToString();
            
        }
        dal dl = new dal();
        protected void Button1_Click(object sender, EventArgs e)
        {
             hrmanager cls = new hrmanager();
            cls.appl_id = Convert.ToInt32(TextBox1.Text);
            cls.job_desc = TextBox2.Text;
            cls.min_qualification = TextBox3.Text;
            cls.pref_qualification = TextBox4.Text;
            cls.resp = TextBox5.Text;
            cls.req_id  =  Convert.ToInt32(TextBox17.Text);
            cls.appstatus = TextBox7.Text;
            cls.manager_name = TextBox8.Text;
            cls.project_name = TextBox9.Text;
            cls.period_month = Convert.ToInt32(TextBox10.Text);
            cls.noof_vacancies= Convert.ToInt32(TextBox11.Text);
            cls.skill = TextBox12.Text;
            cls.pgm_languages = TextBox13.Text;
            cls.exp_years = Convert.ToInt32(TextBox14.Text);
            cls.desg= TextBox15.Text;
            cls.dateapp = TextBox16.Text;
            dal dl  =  new dal();
            dl.storeapp(cls);

            hrmanager cls1  =  new hrmanager();
            cls1.req_id = Convert.ToInt32(TextBox17.Text);
            cls1.appstatus = TextBox7.Text;


            Label1.Text  =  " Form pushed to database...";



           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}