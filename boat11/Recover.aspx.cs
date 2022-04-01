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
    public partial class Recover : System.Web.UI.Page
    {
        private String GUIDvalue;
        private DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["boat11ConnectionString"].ConnectionString))
            {
                Int64 Uid = Convert.ToInt64(Request.QueryString["Uid"]);
                GUIDvalue = Convert.ToString(Uid);
                if (GUIDvalue != null)
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("Select * from ForgotPass where Id=@Id", con);
                    cmd.Parameters.AddWithValue("@Id", GUIDvalue);

                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt11 = new DataTable();

                    sda.Fill(dt11);

                    //int Uid = Convert.ToInt32(dt.Rows[0][0]);
                    //string ASS = dt11.Rows[1][2].ToString();
                    //GUIDvalue = ASS;

                    if (dt.Rows.Count != 0)
                    {
                        Uid = Convert.ToInt32(dt11.Rows[0][1]);
                    }
                    else
                    {
                        lblmsg.Text = "Your Password Reset Link is Expired or Invalid...try again";
                        lblmsg.ForeColor = System.Drawing.Color.Red;
                    }

                }
                else
                {
                    Response.Redirect("~/default.aspx");
                }

            }

            if (!IsPostBack)
            {
                if (dt.Rows.Count == 0)
                {
                    uname1.Visible = true;
                    passc.Visible = true;
                    pass.Visible = true;
                    Label4.Visible = true;
                    Label5.Visible = true;

                    btn1.Visible = true;
                    lblmsg.Visible = false;
                }
                else
                {
                    uname1.Visible = false;
                    passc.Visible = false;
                    pass.Visible = false;
                    Label4.Visible = false;
                    Label5.Visible = false;

                    btn1.Visible = false;
                    lblmsg.Text = "Your Password Reset Link is Expired or Invalid...try again";
                    lblmsg.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
        private void clr()
        {
            uname1.Text = string.Empty;
            pass.Text = string.Empty;
            passc.Text = string.Empty;
        }
        protected void btn1_Click(object sender, EventArgs e)
        {
            if (pass.Text == passc.Text)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["boat11ConnectionString"].ConnectionString))
                {
                    con.Open();
                    string ass = pass.Text;
                    string ass2 = uname1.Text;

                    SqlCommand cmd = new SqlCommand("Update tableuser Set Password='" + ass + "' where Username=@uname", con);
                    //SqlCommand cmd = new SqlCommand("Update tableuser set Password=@p where Uid=@Uid", con);
                    cmd.Parameters.AddWithValue("@uname", ass2);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Password Reset Successfully done');  </script>");
                    clr();
                    Server.Transfer("~/Login.aspx");
                }
            }
        }
    }
}