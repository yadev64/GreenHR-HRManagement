using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        bal b = new bal();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            userentity usr = new userentity();
            usr.email = TextBox1.Text;
            usr.pwd = TextBox2.Text;
            
            if (b.Rec(usr) == 1)
            {
                Response.Redirect("pdtmanager.aspx?username=" + TextBox1.Text);
            }

            else if (b.Rec(usr) == 2)
            {
                Response.Redirect("HRDashboard.aspx?username=" + TextBox1.Text);
            }

            else
            {
                Label1.Text = "Invalid Credentials";
            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            userentity usr = new userentity();
            usr.email = TextBox1.Text;
            usr.pwd = TextBox2.Text;

            if (b.Rec(usr) == 1)
            {
                Response.Redirect("pdtmanager.aspx?username=" + TextBox1.Text);
            }

            else if (b.Rec(usr) == 2)
            {
                Response.Redirect("HRDashboard.aspx?username=" + TextBox1.Text);
            }

            else
            {
                Label1.Text = "Invalid Credentials";
            }
        }

        
    }
}