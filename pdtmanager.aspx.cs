using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string name;

        bal b = new bal();
       // managerreq mgr;
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Request.QueryString["username"];
            name = username;
            Session["UserName"] =username;
            Label1.Text = Session["UserName"] as string;

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("pdtmanagerreq.aspx?username=" + name);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("pdtmanager.aspx?username=" + name);
        }
    }
}