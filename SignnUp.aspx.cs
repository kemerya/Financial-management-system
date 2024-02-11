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
    public partial class SignnUp : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //signup button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(checkMemberExists())
            {
                Response.Write("<script>alert('Member Already Exist With this Email ID. Try Other ID');</script>");
            }
            else
            {
                signUpNewMember();
            }        
        }
        //user defined method
        bool checkMemberExists() 
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from  SignUp_Table Where Email='" + TextBox3.Text.Trim() + "';", con); 
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
               return false;
            }    
        }
        void signUpNewMember()
        {

              


                try
                {
                    SqlConnection con = new SqlConnection(strcon);

                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("INSERT INTO  SignUp_Table(FirstName,LastName,Email,Username,Password,Role) values(@FirstName,@LastName,@Email,@Username,@Password,@Role)", con);

                    cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@LastName", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@Username", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@Role", DropDownList1.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Sign Up successfuly.');</script>");
                    Response.Redirect("SignnIn.aspx");
            }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");



                }
            }
        



        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}


