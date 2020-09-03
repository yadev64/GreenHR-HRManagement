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
        managerreq mgr;
        dal d = new dal();
        List<managerreq> ls = new List<managerreq>();
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
        public List<managerreq> record(string name)
        {
            DataTable dt=d.status();
            for(int i = 0; i < dt.Rows.Count; i++)
            {
                mgr = new managerreq();
                if (dt.Rows[i].ItemArray[0].ToString() == name)
                {
                    mgr.reqid = Convert.ToInt32(dt.Rows[i].ItemArray[8].ToString());
                    mgr.status = dt.Rows[i].ItemArray[9].ToString();
                    mgr.prjname = dt.Rows[i].ItemArray[1].ToString();
                    //mgr.date = Convert.ToDateTime(dt.Rows[i].ItemArray[10].ToString());
                    ls.Add(mgr);


                }



            }
            return ls;
        }
    }
}