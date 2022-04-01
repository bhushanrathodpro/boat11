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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["boat11ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tableuser where Username=@username and Password=@pwd", con);
                cmd.Parameters.AddWithValue("@username", username.Text);
                cmd.Parameters.AddWithValue("@pwd", password.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    if (rmme.Checked)
                    {
                        Response.Cookies["UNAME"].Value = username.Text;
                        Response.Cookies["UPWD"].Value = password.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(11);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(11);
                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);

                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                    }
                    string Utype;
                    Utype = dt.Rows[0][4].ToString().Trim();

                    if (Utype == "User")
                    {
                        Session["Username"] = username.Text;
                        Response.Redirect("~/Userhome.aspx");
                    }
                    if (Utype == "Admin")
                    {
                        Session["Username"] = username.Text;
                        Response.Redirect("~/Adminhome.aspx");
                    }
                }

                else
                {
                    Response.Write(" <script> alert ('Login failed'); </script>");
                    lblMsg.Text = "invalid username or password.";
                }
                clr();
                con.Close();
            }
        }
        private void clr()
        {
            password.Text = string.Empty;
            username.Text = string.Empty;
            username.Focus();
        }

    }
}