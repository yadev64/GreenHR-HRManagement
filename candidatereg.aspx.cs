using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class candidatereg : System.Web.UI.Page
    {
        string name;
        bal b = new bal();
        managerreq m = new managerreq();
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Request.QueryString["appid"];
            name = username;
            Session["UserName"] = username;
            Label11.Text = Session["UserName"] as string;

            m = b.displayapp(name);

            Label2.Text = m.jobdesc;
            Label3.Text = m.minqual;
            Label4.Text = m.prefqual;
            Label5.Text = m.resp;
            Label6.Text = m.skill;
            Label7.Text = m.pgmlang;
            Label8.Text = m.exp.ToString();
            Label9.Text = m.desig;
            Label10.Text = m.lastdate.ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("candidatesub.aspx?applid=" + name);
        }
    }
}