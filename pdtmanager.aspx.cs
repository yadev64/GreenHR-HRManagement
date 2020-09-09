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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-GAJ57FV\SQLEXPRESS;Initial Catalog=GreenHR_500;Integrated Security=True");
        string name;

        bal b = new bal();
        managerreq mgr;
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Request.QueryString["username"];
            name = username;
            Session["UserName"] = username;
            Label1.Text = Session["UserName"] as string;

            mgr = new managerreq();
            mgr.mgrname = Label1.Text;






        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("pdtmanagerreq.aspx?username=" + name);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {


            Response.Redirect("pdtmanager.aspx?username=" + name);
            mgr = new managerreq();
            mgr.mgrname = Label1.Text;
            List<managerreq> ls = b.record(mgr.mgrname);

            GridView2.DataSource = ls;
            GridView2.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_RowCreated(object sender, GridViewRowEventArgs e)
        {

        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                int ind = Convert.ToInt32(e.CommandArgument);
                GridViewRow grd = GridView2.Rows[ind];
                string y = grd.Cells[1].Text.ToString();
                int reqid = Convert.ToInt32(y);
                con.Open();
                SqlDataAdapter ad = new SqlDataAdapter("select * from request_table where request_id =" + reqid + "", con);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                con.Close();

                Session["req"] = ds;
                if (grd.Cells[4].Text.ToString() == "closed")
                {
                    Response.Redirect("pdtmanagerview1.aspx");
                }
                else
                {
                    Label2.Text = "Request not yet satisfied!!!!!!!";
                }


            }
        }
    }
}