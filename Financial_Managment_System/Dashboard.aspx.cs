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
            maxIncome();

        }


        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            maxIncome();
        }

        void maxIncome()
        { 
            SqlConnection con = new SqlConnection(strcon);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand(" SELECT ExpenseAmount FROM Expense_Table", con);
            //" FROM Expense_Table WHERE ExpenseAmount = SELECT MAX(ExpenseAmount) FROM Expense_Table
            con.Close();



        }
    }
}