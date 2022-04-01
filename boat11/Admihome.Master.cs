using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace boat11
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnLogin.Visible = false;
            if (Session["Username"] != null)
            {
                Button1.Text = "Admin User : " + Session["Username"].ToString().ToUpper();
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            btnlogout.Visible = false;
            btnLogin.Visible = true;
            Session["Username"] = null;
            Session.RemoveAll();
            Response.Write("<script> alert ('Admin logged out'); </script>");
            //C.Visible = false;
            Server.Transfer("/default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminhome.aspx");
        }
    }
}