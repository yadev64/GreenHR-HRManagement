using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class pdtmanagerview2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = (DataSet)Session["req"];
            Label1.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
            Label2.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            Label3.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            Label4.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            Label5.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            Label6.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
            Label7.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
            Label8.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
            Label9.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
            Label10.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
            Label11.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
            Label12.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
            Label13.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString();
            Label14.Text = ds.Tables[0].Rows[0].ItemArray[13].ToString();
            Label15.Text = ds.Tables[0].Rows[0].ItemArray[14].ToString();
            Label16.Text = ds.Tables[0].Rows[0].ItemArray[15].ToString();
            Label17.Text = ds.Tables[0].Rows[0].ItemArray[16].ToString();
            Label18.Text = ds.Tables[0].Rows[0].ItemArray[17].ToString();
            Label19.Text = ds.Tables[0].Rows[0].ItemArray[18].ToString();
            Label20.Text = ds.Tables[0].Rows[0].ItemArray[19].ToString();
            Label21.Text = ds.Tables[0].Rows[0].ItemArray[20].ToString();
            Label22.Text = ds.Tables[0].Rows[0].ItemArray[21].ToString();
            Label23.Text = ds.Tables[0].Rows[0].ItemArray[22].ToString();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("pdtmanagerview1.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("pdtmanager.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

    }
}