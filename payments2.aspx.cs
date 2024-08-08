using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Bookar
{
    public partial class payments2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.Items.Add(new ListItem("Fighter"));
                DropDownList1.Items.Add(new ListItem("Article 370"));
                DropDownList1.Items.Add(new ListItem("Dune 2"));
                DropDownList1.Items.Add(new ListItem("Animal"));
                DropDownList1.Items.Add(new ListItem("Madamme Webb"));
                DropDownList1.Items.Add(new ListItem("Teri Baaton Main Uljha Jiya"));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string movieName = DropDownList1.SelectedItem.Text;
            string upiId = TextBox4.Text;
            int numberOfSeats = int.Parse(RadioButtonList1.SelectedValue.Substring(4, 1));
            decimal amount = numberOfSeats * 180;

            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\User\OneDrive\Desktop\Coding\C# Tut\Bookar\App_Data\Orders.mdf';Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO [Order] (MovieName, UpiId, NumberofSeats, Amount) VALUES (@MovieName, @UpiId, @NumberofSeats, @Amount)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@MovieName", movieName);
                    command.Parameters.AddWithValue("@UpiId", upiId);
                    command.Parameters.AddWithValue("@NumberofSeats", numberOfSeats);
                    command.Parameters.AddWithValue("@Amount", amount);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            // Store the values in session variables
            Session["MovieName"] = movieName;
            Session["SelectedSeats"] = numberOfSeats;
            Session["Amount"] = amount;
            Session["UpiId"] = upiId;

            // Redirect the user to the Order.aspx page
            Response.Redirect("Order.aspx");
        }
    }
}
