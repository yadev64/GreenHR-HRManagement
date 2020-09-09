using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class application_details : System.Web.UI.Page
    {

        public int appl_id { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.appl_id = Convert.ToInt32( Request.QueryString["applid"]);

        }

        public void MyBtnHandler(object btn, EventArgs e)
        {

            Button bt = (Button)btn;

            Response.Redirect("candidate_details.aspx?cand_id=" + bt.CommandArgument.ToString());
        }
    }
}