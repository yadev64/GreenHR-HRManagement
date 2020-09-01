using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI.WebControls;


namespace WebApplication1
{
    public class bal
    {
        dal d = new dal();
        public bool Rec(userentity usr)
        {
            bool x = false;
            DataTable dt = d.dispRec();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i].ItemArray[3].ToString() == usr.email && dt.Rows[i].ItemArray[2].ToString() == usr.pwd)
                {
                    x = true;

                }
            }
            return x;
        }
        public void storereq(managerreq mgr)
        {
            d.store(mgr);
        }
    }
}