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


        public void candShortlister (int cand_id)
        {
            dal d = new dal();
            d.candShortlisterDal(cand_id);
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
        public hrmanager rec(string req_id)
        {
            dal dl = new dal();
            DataTable dt = dl.status();
            hrmanager cls = new hrmanager();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                
                
                if ( dt.Rows[i].ItemArray[5].ToString() ==  req_id)
                {
                    cls.appl_id = Convert.ToInt32(dt.Rows[i].ItemArray[0].ToString());
                    cls.job_desc = dt.Rows[i].ItemArray[1].ToString();
                    cls.min_qualification = dt.Rows[i].ItemArray[2].ToString();
                    cls.pref_qualification = dt.Rows[i].ItemArray[3].ToString();
                    cls.resp = dt.Rows[i].ItemArray[4].ToString();
                    cls.req_id = Convert.ToInt32(dt.Rows[i].ItemArray[5].ToString());
                    cls.appstatus = dt.Rows[i].ItemArray[6].ToString();
                    cls.manager_name = dt.Rows[i].ItemArray[7].ToString();
                    cls.project_name = dt.Rows[i].ItemArray[8].ToString();
                    cls.period_month = Convert.ToInt32(dt.Rows[i].ItemArray[9].ToString());
                    cls.noof_vacancies = Convert.ToInt32(dt.Rows[i].ItemArray[10].ToString());
                    cls.skill = dt.Rows[i].ItemArray[11].ToString();
                    cls.pgm_languages = Convert.ToInt32(dt.Rows[i].ItemArray[12].ToString());
                    cls.exp_years = Convert.ToInt32(dt.Rows[i].ItemArray[13].ToString());
                    cls.desg = dt.Rows[i].ItemArray[14].ToString();
                    cls.dateapp = Convert.ToInt32(dt.Rows[i].ItemArray[15].ToString());

                }

                
            }
            return cls;





        }
    }
}