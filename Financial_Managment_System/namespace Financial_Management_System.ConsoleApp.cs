using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Financial_Managment_System
{
    public class namespace_Financial_Management_System

    {
        static void Main(string[] args)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("INSERT INTO SignUp_Table (FirstName, LastName, Email, UserName, Password, Role) " +
                        "VALUES (@FirstName, @LastName, @Email, @UserName, @Password, @Role)", con);

                    cmd.Parameters.AddWithValue("@FirstName", "kemerys");
                    cmd.Parameters.AddWithValue("@LastName", "zeynu");
                    cmd.Parameters.AddWithValue("@Email", "kemer.@testing.com");
                    cmd.Parameters.AddWithValue("@UserName", "kemer.zeynu");
                    cmd.Parameters.AddWithValue("@Password", "securepassword");
                    cmd.Parameters.AddWithValue("@Role", "User");

                    cmd.ExecuteNonQuery();

                    Console.WriteLine("Sign Up successful. Go to User Login to log in.");

                    con.Close();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
            }

            Console.ReadLine(); // Pause the console to view the result
        }
    }
}
