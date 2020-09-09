using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication1
{
    public partial class pdtmanagerview1 : System.Web.UI.Page
    {
        //greenhrEntities en = new greenhrEntities();


        bal b = new bal();
        // candidate cn;
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



        }


        //cn.requestid = Convert.ToInt32(Label9.Text);
        // cn.reqstatus = Label10.Text;

        protected void Button1_Click(object sender, EventArgs e)
        {

            // if (b.viewcandidate(cn))
            // {
            //Response.Redirect("");
            //cn = new candidate();
            //b.viewcandidate(num);
            //cn.requestid = Convert.ToInt32(Label9.Text);
            ////int reqid =Convert.ToInt32(cn.requestid.ToString());
            //if (cn.requestid == num)
            //{
            //    //gridview: main details of selected candidate
            //    //on clicking button viewdetails display entiire detailsofthe particular candidate
            //}

            // }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-B0P46V9\SQLEXPRESS;Initial Catalog=greenhr;Integrated Security=True");
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            candidate cn = new candidate();

            if (Label10.Text == "closed")
            {


                if (e.CommandName == "CandidateView")
                {
                    int ind = Convert.ToInt32(e.CommandArgument);
                    GridViewRow grd = GridView1.Rows[ind];
                    string y = grd.Cells[0].Text.ToString();
                    //string z = grd.Cells[4].Text.ToString();
                    int candid = Convert.ToInt32(y);
                    //int reqid = Convert.ToInt32(z);
                    con.Open();
                    SqlDataAdapter ad = new SqlDataAdapter("select * from hiredcandidate_table where candidate_id =" + candid + "", con);
                    //SqlDataAdapter ad = new SqlDataAdapter("select * from  hiredcandidate_table a,request_table b join on a.req_id equals b.req_id and b.reqstatus="+ "closed" +" and a.cand_id =" + candid + "", con);
                    DataSet ds = new DataSet();
                    ad.Fill(ds);
                    con.Close();

                    Session["req"] = ds;

                    Response.Redirect("pdtmanagerview2.aspx");
                }


            }
        }
    }
}