using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class managerreq
    {
        public string mgrname { get; set; }
        public string prjname { get; set; }
        public int period { get; set; }
        public int noofvacancies { get; set; }
        public int reqid { get; set; }
        public string skill { get; set; }
        public string pgmlang { get; set; }
        public string prjdesc { get; set; }
        public int exp { get; set; }
        public string status { get; set; }
        public DateTime date { get; set; }
        public string desig { get; set; }
        public string jobdesc { get; set; }
        public string minqual { get; set; }
        public string prefqual { get; set; }
        public string appstatus { get; set; }
        public string resp { get; set; }
        public DateTime lastdate { get; set; }
        public int appid { get; set; }
    }
}