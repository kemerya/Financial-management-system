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
    public partial class Income : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            saveIncome();
        }
        protected void saveIncome()
        {
            SqlConnection con = new SqlConnection(strcon);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO  Income_Table(Income_ID,IncomeCatagory,IncomeAmount,IncomeDate,IncomeDescription) values(@Income_ID,@IncomeCatagory,@IncomeAmount,@IncomeDate,@IncomeDescription)", con);

            cmd.Parameters.AddWithValue("@Income_ID", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@IncomeCatagory", DropDownList1.Text.Trim());
            cmd.Parameters.AddWithValue("@IncomeAmount", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@IncomeDate", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@IncomeDescription", TextBox3.Text.Trim());


            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Inserted successfuly.');</script>");
            GridView1.DataBind();
        }


    }
}