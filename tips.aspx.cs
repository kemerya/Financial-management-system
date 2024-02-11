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
    public partial class tips : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO  Tip_table(AdminName,Tip) values(@AdminName,@Tip)", con);

            cmd.Parameters.AddWithValue("@AdminName", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Tip", TextBox2.Text.Trim());

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('posted successfuly.');</script>");
           GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Update button clicked
            if (GridView1.SelectedIndex >= 0)
            {
                // Get the selected row
                GridViewRow selectedRow = GridView1.Rows[GridView1.SelectedIndex];

                // Get the AdminName from the selected row
                string adminName = selectedRow.Cells[0].Text;

                // Get the updated tip content from TextBox2
                string updatedTip = TextBox2.Text;

                // Update the tip in the database using the adminName
                // Perform your database update logic here
                // Example: UpdateTipInDatabase(adminName, updatedTip);

                // Rebind the GridView to refresh the data
                GridView1.DataBind();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // Delete button clicked
            if (GridView1.SelectedIndex >= 0)
            {
                // Get the selected row
                GridViewRow selectedRow = GridView1.Rows[GridView1.SelectedIndex];

                // Get the AdminName from the selected row
                string adminName = selectedRow.Cells[0].Text;

                // Delete the tip from the database using the adminName
                // Perform your database delete logic here
                // Example: DeleteTipFromDatabase(adminName);

                // Clear the form fields
                TextBox1.Text = "";
                TextBox2.Text = "";

                // Rebind the GridView to refresh the data
                GridView1.DataBind();
            }
        }


        protected void SqlDataSource1_Selecting2(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
        {

        }
    }
}



