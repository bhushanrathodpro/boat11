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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {
                try
                {
                    SqlConnection con = new SqlConnection(@"Data Source=BLUSH\MARCH05;Initial Catalog=boat11;Integrated Security=True");
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tableuser (Username,Password,Email,Usertype) Values('" + username.Text + "','" + password.Text + "','" + email.Text + "','User')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script> alert('Registration Successfully done');  </script>");
                    lblMsg.Text = "Registration Successful , " +
                                    " now you can login";
                    lblMsg.ForeColor = System.Drawing.Color.Green;
                    clr();
                }
                catch (Exception)
                {
                }


            }

            else
            {
                Response.Write("<script> alert('Registration failed');  </script>");
                lblMsg.Text = "Registration failed";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
        private bool isformvalid()
        {
            if (username.Text == "")
            {
                Response.Write("<script> alert('username not valid');  </script>");
                username.Focus();

                return false;
            }
            else if (password.Text == "")
            {
                Response.Write("<script> alert('Password not valid');  </script>");
                password.Focus();
                return false;
            }
            else if (email.Text == "")
            {
                Response.Write("<script> alert('Email not valid');  </script>");
                email.Focus();
                return false;
            }
            return true;
        }
        private void clr()
        {
            username.Text = string.Empty;
            password.Text = string.Empty;
            email.Text = string.Empty;
        }
    }
}       