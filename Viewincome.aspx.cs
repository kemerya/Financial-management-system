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
    public partial class Viewincome : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            savedIncome();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void savedIncome()
        {
            SqlConnection con = new SqlConnection(strcon);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from  Income_Table(Income_ID,IncomeCatagory,IncomeAmount,IncomeDate,IncomeDescription)", con);
            con.Close(); 
           GridView1.DataBind();

        }
    }
}// values(@Income_ID,@IncomeCatagory,@IncomeAmount,@IncomeDate,@IncomeDescription)