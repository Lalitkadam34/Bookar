using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bookar
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSignIn_Click(object sender, EventArgs e)
        {
            string username = Username.Text;
            string password = HashPassword(Loginpassword.Text);

            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\User\OneDrive\Desktop\Coding\C# Tut\Bookar\App_Data\UserDatabase.mdf';Integrated Security=True";
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand("SELECT * FROM Users WHERE Username = @Username AND Password = @Password", connection))
                    {
                        command.Parameters.AddWithValue("@Username", username);
                        command.Parameters.AddWithValue("@Password", password);

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                // If we found a match, then the login is successful.
                                Session["Username"] = username; // Store the username in a session.
                                Response.Redirect("home2.aspx");
                            }
                            else
                            {
                                // If no match was found, then the login failed.
                                Response.Write("<script>alert('Failed to login: Invalid username or password.');</script>");
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // An exception will be thrown if the connection fails.
                Response.Write("<script>alert('Failed to login: " + ex.Message + "');</script>");
            }
        }

        private string HashPassword(string password)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(password));
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }

    }
}