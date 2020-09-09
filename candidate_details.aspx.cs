using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class candidate_details : System.Web.UI.Page
    {

        public int cand_id { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            cand_id = Convert.ToInt32(Request.QueryString["cand_id"]);
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            bal b = new bal();

            b.candShortlister(cand_id);
            

        }
    }
}