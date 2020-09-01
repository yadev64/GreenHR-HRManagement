using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace WebApplication1
{
    public partial class pdtmanagerreq : System.Web.UI.Page
    {
        string name;
        bal b = new bal();
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Request.QueryString["username"];
            name = username;
            Session["UserName"] = username;
            Label2.Text = Session["UserName"] as string;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            managerreq mr = new managerreq();

            mr.mgrname = Label2.Text;
            mr.desig = TextBox1.Text;
            mr.prjname = TextBox2.Text;
            mr.period = Convert.ToInt32(TextBox3.Text);
            mr.noofvacancies = Convert.ToInt32(TextBox4.Text);
            //HtmlTextArea skillupload = (HtmlTextArea)(FindControl("TextArea1"));
            //mr.skill = skillupload.Value;
            //HtmlTextArea Langupload = (HtmlTextArea)(FindControl("TextArea2"));
            //mr.pgmlang = Langupload.InnerText;
            //HtmlTextArea descupload = (HtmlTextArea)(FindControl("TextArea3"));
            //mr.prjdesc = descupload.Value;
            mr.skill = TextBox5.Text;
            mr.pgmlang = TextBox6.Text;
            
            mr.exp = Convert.ToInt32(TextBox7.Text);
            mr.prjdesc = TextBox8.Text;
            mr.status = "open";
            mr.date = DateTime.Today;
            b.storereq(mr);
            Label1.Text = "Successful";

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("pdtmanager.aspx?username=" + Label2.Text);
        }
    }
}