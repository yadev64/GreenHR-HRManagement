using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class candidatesub : System.Web.UI.Page
    {
        bal b = new bal();
        candidate cn;
        string name, reqid;
        GreenHR_500Entities hr = new GreenHR_500Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Request.QueryString["applid"];
            name = username;
            Session["UserName"] = username;
            Label1.Text = Session["UserName"] as string;

            var x = from x1 in hr.application_table where x1.application_id.ToString() == name select x1;

            foreach (var y in x)
            {
                reqid = y.request_id.ToString();

            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("website.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            // Response.Redirect("resume.aspx?applid=" + Label1.Text + "&candid=" + Label4.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn = new candidate();

            cn.candidatename = TextBox1.Text;
            cn.candidateskills = TextBox2.Text;
            cn.pgmlanguage = TextBox3.Text;
            cn.qualification = TextBox4.Text;
            cn.college = TextBox5.Text;
            cn.university = TextBox6.Text;
            cn.address = TextBox7.Text;
            cn.experience = Convert.ToInt32(TextBox8.Text);
            cn.noticeperiod = Convert.ToInt32(TextBox9.Text);
            cn.latestcompany = TextBox10.Text;
            cn.latestdesignation = TextBox11.Text;
            cn.currentsalary = Convert.ToInt32(TextBox12.Text);
            cn.registerationdate = DateTime.Today;
            cn.age = Convert.ToInt32(TextBox13.Text);
            cn.dob = Convert.ToDateTime(TextBox14.Text);
            cn.requestid = Convert.ToInt32(reqid);
            cn.email = TextBox15.Text;
            cn.interviewdate = DateTime.Today.AddDays(30);
            cn.applid = Convert.ToInt32(name);
            b.storecandidate(cn);
            // Label2.Text = "Registeration Successful";
            // Label3.Text = "please upload your resume";


            candidate c = b.getcandidate(cn);
            Label4.Text = c.candidateid.ToString();
            Response.Redirect("resume.aspx?applid=" + Label1.Text + "&candid=" + Label4.Text + "&candname=" + TextBox1.Text);
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";

        }
    }
}