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
            
            if (b.Rec(usr))
            {

                Response.Redirect("pdtmanager.aspx?username=" + TextBox1.Text);
            }
            else
            {
                Label1.Text = "invalid";
            }

        }
    }
}