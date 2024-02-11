using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Financial_Managment_System
{
    public partial class testing : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<Script>alert('Testing');</Script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO into test_Table(UserName,Password) values(@UserName,@Password)", con);

                cmd.Parameters.AddWithValue("@UserName", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox2.Text);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up successfuly. Go To User Login to Login');</script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}









