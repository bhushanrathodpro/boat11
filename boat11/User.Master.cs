using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace boat11
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Response.Write("<script> alert ('User logged out'); </script>");
            Server.Transfer("/default.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartNumber();
            if (Session["Username"] != null)
            {
                btnlogout.Visible = true;
                btnLogin.Visible = false;
                Button1.Text = "Current User : " + Session["Username"].ToString().ToUpper();
            }
            else
            {
                btnlogout.Visible = false;
                btnLogin.Visible = true;
                Response.Redirect("~/Login.aspx");
            }
        } 
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignIn.aspx");
        }
        public void BindCartNumber()
        {
            if (Request.Cookies["CartPID"] != null)
            {

            }
            else
            {
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userhome.aspx");
        }
    }
}