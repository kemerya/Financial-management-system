using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Financial_Managment_System
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["Role"].Equals("User"))
            //{
            //    LinkButton1.Visible = true;
            //    LinkButton2.Visible = true;
            //    LinkButton3.Visible = true;
            //    LinkButton4.Visible = true;
            //    LinkButton5.Visible = true;
            //    LinkButton6.Visible = true;
            //    LinkButton7.Visible = false;
            //    LinkButton8.Visible = true;
            //    LinkButton9.Visible = true;
            //}

            //else if (Session["Role"].Equals("Admin"))
            //{
            //    LinkButton1.Visible = false;
            //    LinkButton2.Visible = false;
            //    LinkButton3.Visible = false;
            //    LinkButton4.Visible = false;
            //    LinkButton5.Visible = false;
            //    LinkButton6.Visible = true;
            //    LinkButton7.Visible = true;
            //    LinkButton8.Visible = false;
            //    LinkButton9.Visible = false;
            //}



        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Income.aspx");
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Expense.aspx");
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Viewincome.aspx");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewExpence.aspx");
        }
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignOut.aspx");
        }
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("tips.aspx");
        }

        protected void LinkButton4_Click1(object sender, EventArgs e)
        {
            
            Response.Redirect("Viewincome.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Budget.aspx");
            
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("tip_user.aspx");
            
        }
    }
}