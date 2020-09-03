using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ApplicationEditor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //int emp = Convert.ToInt32(TextBox1.Text);

            var x = from x1 in dbobj.emp_1 ;

            foreach (var x2 in x)
            {
                x2.empno = Convert.ToInt32(TextBox1.Text);
                x2.empname = TextBox2.Text;
                x2.job = TextBox3.Text;
                x2.deptno = Convert.ToInt32(TextBox4.Text);
                x2.salary = Convert.ToInt32(TextBox5.Text);
            }
            dbobj.SaveChanges();
            Label1.Text = "updation succesful...";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}