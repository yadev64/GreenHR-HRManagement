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
        /*public bool Rec(userentity usr)
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
        }*/
       /* public void storereq(managerreq mgr)
        {
            d.store(mgr);
        }
        public List<managerreq> record(string name)
        {
            DataTable dt = d.status();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                mgr = new managerreq();
                if (dt.Rows[i].ItemArray[0].ToString() == name)
                {
                    mgr.reqid = Convert.ToInt32(dt.Rows[i].ItemArray[8].ToString());
                    mgr.status = dt.Rows[i].ItemArray[9].ToString();
                    mgr.prjname = dt.Rows[i].ItemArray[1].ToString();
                    mgr.date = Convert.ToDateTime(dt.Rows[i].ItemArray[11].ToString());
                    ls.Add(mgr);


                }



            }
            return ls;
        }*/
        public managerreq displayapp(string name)
        {
            DataTable dt = d.app();
            int l = dt.Rows.Count - 1;
            for (int i = l; i >= 0; i--)
            {
                if (dt.Rows[i].ItemArray[6].ToString() == "inprogress" && dt.Rows[i].ItemArray[0].ToString() == name)
                {
                    mgr = new managerreq();
                    mgr.jobdesc = dt.Rows[i].ItemArray[1].ToString();
                    mgr.minqual = dt.Rows[i].ItemArray[2].ToString();
                    mgr.prefqual = dt.Rows[i].ItemArray[3].ToString();
                    mgr.resp = dt.Rows[i].ItemArray[4].ToString();
                    mgr.skill = dt.Rows[i].ItemArray[11].ToString();
                    mgr.pgmlang = dt.Rows[i].ItemArray[12].ToString();
                    mgr.exp = Convert.ToInt32(dt.Rows[i].ItemArray[13].ToString());
                    mgr.desig = dt.Rows[i].ItemArray[14].ToString();
                    mgr.lastdate = Convert.ToDateTime(dt.Rows[i].ItemArray[15].ToString()).AddDays(10);
                    // mgr.lastdate = DateTime.Now.AddDays(10);

                }
            }
            return mgr;
        }
        public void storecandidate(candidate cn)
        {

            d.storecandidate(cn);
        }

        public bool viewcandidate(candidate cn)
        {
            bool x = false;
            DataTable dt = d.candidatedetails(cn);

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (Convert.ToInt32(dt.Rows[i].ItemArray[21].ToString()) == cn.requestid && cn.reqstatus == "closed")
                {
                    x = true;
                }

            }
            return x;
        }


        //managerreq mgr;
        //dal d = new dal();
        //List<managerreq> ls = new List<managerreq>();
        public int Rec(userentity usr)
        {
            int x = 0;
            DataTable dt = d.dispRec();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i].ItemArray[3].ToString() == usr.email && dt.Rows[i].ItemArray[2].ToString() == usr.pwd && dt.Rows[i].ItemArray[4].ToString() == "0")
                {
                    x = 1;
                }
                else if (dt.Rows[i].ItemArray[3].ToString() == usr.email && dt.Rows[i].ItemArray[2].ToString() == usr.pwd && dt.Rows[i].ItemArray[4].ToString() == "1")
                {
                    x = 2;
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
                if (dt.Rows[i].ItemArray[8].ToString() == req_id)
                {
                    //cls.appl_id = Convert.ToInt32(dt.Rows[i].ItemArray[0].ToString());
                    cls.appl_id = Convert.ToInt32(dt.Rows[i].ItemArray[8].ToString()); ;
                    cls.job_desc = dt.Rows[i].ItemArray[7].ToString();
                    //cls.min_qualification = dt.Rows[i].ItemArray[2].ToString();
                    //cls.pref_qualification = dt.Rows[i].ItemArray[3].ToString();
                    //cls.resp = dt.Rows[i].ItemArray[4].ToString();
                    cls.req_id = Convert.ToInt32(dt.Rows[i].ItemArray[8].ToString());
                    cls.appstatus = dt.Rows[i].ItemArray[9].ToString();
                    cls.manager_name = dt.Rows[i].ItemArray[0].ToString();
                    cls.project_name = dt.Rows[i].ItemArray[1].ToString();
                    cls.period_month = Convert.ToInt32(dt.Rows[i].ItemArray[2].ToString());
                    cls.noof_vacancies = Convert.ToInt32(dt.Rows[i].ItemArray[3].ToString());
                    cls.skill = dt.Rows[i].ItemArray[4].ToString();
                    cls.pgm_languages = dt.Rows[i].ItemArray[5].ToString();
                    cls.exp_years = Convert.ToInt32(dt.Rows[i].ItemArray[6].ToString());
                    cls.desg = dt.Rows[i].ItemArray[10].ToString();
                    cls.dateapp = dt.Rows[i].ItemArray[11].ToString();
                }
            }
            return cls;
        }


        List<candpool> ls1 = new List<candpool>();
      

        public List<candpool> getrec1(string k)
        {
            dal dl = new dal();
            DataTable dt = dl.dispdet();

            for(int i = 0; i < dt.Rows.Count; i++)
            {
                for (int j = 0; j < 18; j++)
                {
                    
                    if(dt.Rows[i].ItemArray[j].ToString().Contains(k)==true)
                    {
                        candpool cls1 = new candpool();
                        cls1.cand_id = Convert.ToInt32(dt.Rows[i].ItemArray[0].ToString());
                        cls1.cand_name =dt.Rows[i].ItemArray[1].ToString();
                        cls1.skills = dt.Rows[i].ItemArray[2].ToString();
                        cls1.pgm_language =dt.Rows[i].ItemArray[3].ToString();
                        cls1.high_qualification =dt.Rows[i].ItemArray[4].ToString();
                        cls1.college = dt.Rows[i].ItemArray[5].ToString();
                        cls1.university = dt.Rows[i].ItemArray[6].ToString();
                        cls1.address= dt.Rows[i].ItemArray[7].ToString(); 
                        cls1.exp_years = Convert.ToInt32(dt.Rows[i].ItemArray[8].ToString());
                        cls1.notice_months = Convert.ToInt32(dt.Rows[i].ItemArray[9].ToString());
                        cls1.latest_company = dt.Rows[i].ItemArray[10].ToString();
                        cls1.latest_desg =dt.Rows[i].ItemArray[11].ToString();
                        cls1.curr_sal = Convert.ToInt32(dt.Rows[i].ItemArray[12].ToString());
                        cls1.reg_date = Convert.ToDateTime(dt.Rows[i].ItemArray[13].ToString());
                        cls1.age = Convert.ToInt32(dt.Rows[i].ItemArray[14].ToString());
                        cls1.dob = dt.Rows[i].ItemArray[15].ToString();
                        cls1.interview_date = dt.Rows[i].ItemArray[16].ToString();
                        //cls1.req_id = Convert.ToInt32(dt.Rows[i].ItemArray[17].ToString());

                        ls1.Add(cls1);
                    }
                }
            }
            return ls1; 
        }


        public candidate getcandidate(candidate a)
        {
            DataTable dt = d.retrivecandiadteid();
            for (int i = 0; i < dt.Rows.Count; i++)
            {

                if (Convert.ToInt32(dt.Rows[i].ItemArray[19].ToString()) == a.applid && dt.Rows[i].ItemArray[1].ToString() == a.candidatename)
                {
                    a.candidateid = Convert.ToInt32(dt.Rows[i].ItemArray[0].ToString());

                }
            }
            return a;
        }
    }
}