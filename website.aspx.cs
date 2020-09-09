using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class website : System.Web.UI.Page
    {
        bal b = new bal();
        //managerreq mg;

        GreenHR_500Entities en = new GreenHR_500Entities();
        protected void Page_Load(object sender, EventArgs e)
        {

            //var x = from x1 in en.request_table  where x1.reqstatus == "inprogress" select  x1 ;

            //foreach (var x3 in x)
            //{
            //    Label1.Text = x3.desg.ToString();

            //}



        }

        public void mybtnhandler(object btn, EventArgs e)
        {
            Button bt = (Button)btn;
            Response.Redirect("candidatereg.aspx?appid=" + bt.CommandArgument.ToString());
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Response.Redirect("candidatereg.aspx?username=" + Label1.Text);

        }
    }
}