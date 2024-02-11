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
    public partial class Budget : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
          
        }

        protected void button1_Click(object sender, EventArgs e)
        {

            saveBudget();

        }
        protected void saveBudget()
        {

            SqlConnection con = new SqlConnection(strcon);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO  Budget_Table(Monthly_Budget,Date) values(@Budget,@Date)", con);

            cmd.Parameters.AddWithValue("@Budget", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@Date", TextBox3.Text.Trim());


            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Inserted successfuly.');</script>");
            GridView1.DataBind();

        }


    }
}