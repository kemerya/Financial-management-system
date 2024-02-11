using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Financial_Managment_System
{
    public partial class Dashboard : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            GridView2.DataBind();
            GridView3.DataBind();
            GridView4.DataBind();
            GridView5.DataBind();
            GridView6.DataBind();
            GridView7.DataBind();
            GridView8.DataBind();
            GridView9.DataBind();

           
        }

        
    }
}
