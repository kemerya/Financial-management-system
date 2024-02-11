using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Financial_Managment_System
{
    public partial class Expense : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        protected void saveExpense()
        {

            SqlConnection con = new SqlConnection(strcon);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO  Expense_Table(Expense_ID,ExpenseCatagory,ExpenseAmount,ExpenseDate,ExpenseDescription) values(@Expense_ID,@ExpenseCatagory,@ExpenseAmount,@ExpenseDate,@ExpenseDescription)", con);

            cmd.Parameters.AddWithValue("@Expense_ID", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@ExpenseCatagory", DropDownList1.Text.Trim());
            cmd.Parameters.AddWithValue("@ExpenseAmount", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@ExpenseDate", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@ExpenseDescription", TextBox4.Text.Trim());


            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Inserted successfuly.');</script>");
            GridView1.DataBind();

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            saveExpense();
        }
    }
}

