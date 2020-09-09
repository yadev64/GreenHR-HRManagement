using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Data_search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string k = TextBox1.Text;
            bal bl = new bal();
            List<candpool> ls1 = bl.getrec1(k);
            GridView1.DataSource = ls1;
            GridView1.DataBind();
        }

      
    }
}