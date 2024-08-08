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
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {
            string fullName = TextBoxFname.Text;
            string email = TextBoxEmail.Text;
            string username = TextBoxUsername.Text;
            string password = HashPassword(TextBoxPassword.Text);

            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\User\OneDrive\Desktop\Coding\C# Tut\Bookar\App_Data\UserDatabase.mdf';Integrated Security=True";
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand("INSERT INTO Users (FullName, Email, Username, Password) VALUES (@FullName, @Email, @Username, @Password)", connection))
                    {
                        command.Parameters.AddWithValue("@FullName", fullName);
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Username", username);
                        command.Parameters.AddWithValue("@Password", password);
                        command.ExecuteNonQuery();
                    }
                }
               
                Response.Write("<script>alert('Registration successful.');</script>");
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('Failed to register: " + ex.Message + "');</script>");
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