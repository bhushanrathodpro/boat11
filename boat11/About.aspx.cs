using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

namespace boat11
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["boat11ConnectionString"].ConnectionString))
            {
                con.Open();
                {
                    if (Radio1.Checked)
                    {
                        {
                            SqlCommand cmd = new SqlCommand("insert into Feedback(Username,RequestDateTime,Suggestion) values(@user,GETDATE(),@fbtype)", con);
                            cmd.Parameters.AddWithValue("@user", username.Text);
                            cmd.Parameters.AddWithValue("@fbtype", fbtext.Text);
                            cmd.ExecuteNonQuery();
                        }
                    }
                    else if (Radio2.Checked)
                    {
                        {
                            SqlCommand cmd = new SqlCommand("insert into Feedback(Username,RequestDateTime,Complaint) values(@user,GETDATE(),@fbtype)", con);
                            cmd.Parameters.AddWithValue("@user", username.Text);
                            cmd.Parameters.AddWithValue("@fbtype", fbtext.Text);
                            cmd.ExecuteNonQuery();
                        }
                    }
                    else
                    {
                        {
                            SqlCommand cmd = new SqlCommand("insert into Feedback(Username,RequestDateTime,Other) values(@user,GETDATE(),@fbtype)", con);
                            cmd.Parameters.AddWithValue("@user", username.Text);
                            cmd.Parameters.AddWithValue("@fbtype", fbtext.Text);
                            cmd.ExecuteNonQuery();
                        }
                    }
                    Response.Write("<script> alert ('your feedback has been recorded. continue shopping.'); </script>");
                }
            }
        }

        protected void cb1_CheckedChanged(object sender, EventArgs e)
        {
            username.Text = ("anonymous");
        }
    }
}