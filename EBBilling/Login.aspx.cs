using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EBBilling
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblLoginMessage.Text = "";
            lblNote.Text = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text.ToLower() == "admin" && txtPassword.Text.ToLower() == "admin")
            {
                Response.Redirect("LoginSuccess.aspx");
            }
            else
            {
                txtUserName.Text = "";
                txtPassword.Text = "";
                txtUserName.Focus();
                lblLoginMessage.Text = "Invalid Username or Invalid Password";
                lblNote.Text = "Note: username and password should be admin/admin";
            }
        }
    }
}