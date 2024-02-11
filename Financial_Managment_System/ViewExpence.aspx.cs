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
    public partial class ViewExpence : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            savedExpense();
        }
        protected void savedExpense()
        {
            SqlConnection con = new SqlConnection(strcon);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from  Expense_Table(Expense_ID,ExpenseCatagory,ExpenseAmount,ExpenseDate,ExpenseDescription) values(@Expense_ID,@ExpenseCatagory,@ExpenseAmount,@ExpenseDate,@ExpenseDescription)", con);
           
            con.Close();
            GridView1.DataBind();

        }
    }
}