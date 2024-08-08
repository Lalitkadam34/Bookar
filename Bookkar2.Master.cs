using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bookar
{
    public partial class Bookkar2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] == null)
                {
                    // If the user is not logged in, redirect to the login page.
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear the session and redirect to the login page.
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}