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
    public partial class resume : System.Web.UI.Page
    {
        static string resumelink;
        static Int32 resume_id;

        string username, username1, username2;
        protected void Page_Load(object sender, EventArgs e)
        {
            string applid = Request.QueryString["applid"];
            username = applid;
            Session["UserName"] = username;
            Label1.Text = Session["UserName"] as string;

            string candid = Request.QueryString["candid"];
            username1 = candid;
            Session["UserName1"] = username1;
            Label2.Text = Session["UserName1"] as string;

            string candname = Request.QueryString["candname"];
            username2 = candname;
            Session["UserName2"] = username2;
            Label4.Text = Session["UserName2"] as string;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (uploadresume() == true)
            {


                String query = "insert into resume_table(application_id,Candidate_id,candidate_name,pdf_resume) values(" + Label1.Text + ",'" + Label2.Text + "','" + Label4.Text + "','" + resumelink + "')";
                String mycon = "Data Source=DESKTOP-GAJ57FV\\SQLEXPRESS;Initial Catalog=GreenHR_500;Integrated Security=True";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();

                Label4.Text = "";
                Label1.Text = "";
                Label2.Text = "";
                Label5.Text = "Submitted Successfully";

                System.Threading.Thread.Sleep(700);
                Response.Redirect("website.aspx");
            }



        }
        private Boolean uploadresume()
        {
            Boolean resumesaved = false;
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype == "application/pdf")
                {
                    int filesize;
                    filesize = FileUpload1.PostedFile.ContentLength;

                    getapplicationid();
                    FileUpload1.SaveAs(Server.MapPath("~/Resume/") + resume_id + ".pdf");

                    resumelink = "Resume/" + resume_id + ".pdf";
                    resumesaved = true;
                    Label3.Text = "";
                }


                else
                {
                    Label3.Text = "Upload Resume in PDF Format Only!!";
                }

            }
            return resumesaved;
        }
        public void getapplicationid()
        {
            String mycon = "Data Source=DESKTOP-GAJ57FV\\SQLEXPRESS;Initial Catalog=GreenHR_500;Integrated Security=True";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select resume_id from resume_table";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            scon.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                resume_id = 100;

            }
            else
            {

                String mycon1 = "Data Source=DESKTOP-GAJ57FV\\SQLEXPRESS;Initial Catalog=GreenHR_500;Integrated Security=True";
                SqlConnection scon1 = new SqlConnection(mycon1);
                String myquery1 = "select max(resume_id) from resume_table";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = scon1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                resume_id = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());
                resume_id = resume_id + 1;
                scon1.Close();


            }

        }
    }
}