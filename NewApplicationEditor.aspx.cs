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
    public partial class NewApplicationEditor : System.Web.UI.Page
    {


        public void Page_Init()
        {

        }
        public void Page_Load(object sender, EventArgs e)
        {
            /*string reqid = Request.QueryString["reqid"];

            bal bl = new bal();
            hrmanager cls = bl.rec(reqid);

            TextBox1.Text = cls.appl_id.ToString();
            //TextBox1.Text = "Hello";
            TextBox2.Text = cls.job_desc;
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
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
            TextBox16.Text = cls.dateapp.ToString();*/
        }
        dal dl = new dal();


        protected void Button1_Click(object sender, EventArgs e)
        {
            hrmanager cls2 = new hrmanager();
            cls2.appl_id = Convert.ToInt32(TextBox1.Text);
            cls2.job_desc = TextBox2.Text;
            cls2.min_qualification = TextBox3.Text;
            cls2.pref_qualification = TextBox4.Text;
            cls2.resp = TextBox5.Text;
            cls2.req_id = Convert.ToInt32(TextBox17.Text);
            cls2.appstatus = "inprogress";
            cls2.manager_name = TextBox8.Text;
            cls2.project_name = TextBox9.Text;
            cls2.period_month = Convert.ToInt32(TextBox10.Text);
            cls2.noof_vacancies = Convert.ToInt32(TextBox11.Text);
            cls2.skill = TextBox12.Text;
            cls2.pgm_languages = TextBox13.Text;
            cls2.exp_years = Convert.ToInt32(TextBox14.Text);
            cls2.desg = TextBox15.Text;
            cls2.dateapp = TextBox16.Text;
            dl.storeapp(cls2);


            Label1.Text = TextBox4.Text;
            /*hrmanager cls1 = new hrmanager();
            cls1.req_id = Convert.ToInt32(TextBox17.Text);
            cls1.appstatus = "inprogress";
*/
            //dl.post(cls1);

           
        }



       /* protected void Button2_Click1(object sender, EventArgs e)
        {
            
        }*/

        protected void Button2_Click(object sender, EventArgs e)
        {
            string reqid = Request.QueryString["reqid"];

            bal bl = new bal();
            hrmanager cls = bl.rec(reqid);

            TextBox1.Text = cls.appl_id.ToString();
            //TextBox1.Text = "Hello";
            TextBox2.Text = cls.job_desc;
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
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
    }
}