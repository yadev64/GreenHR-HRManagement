﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class HRDashboard_ViewApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public void MyBtnHandler(object btn, EventArgs e)
        {

            Button bt = (Button)btn;

            Response.Redirect("application_details.aspx?applid=" + bt.CommandArgument.ToString());
        }

    }
}