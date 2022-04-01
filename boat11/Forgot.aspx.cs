using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace boat11
{
    public partial class Forgot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["boat11ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tableuser where Email=@email", con);

                cmd.Parameters.AddWithValue("@email", Email.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0]);

                    SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(Id,Uid,RequestDateTime) values('" + myGUID + "','" + Uid + "',GETDATE())", con);
                    cmd1.ExecuteNonQuery();

                    //Send Reset link via Email
                    String ToEmailAddress = dt.Rows[0][3].ToString();
                    String Username = dt.Rows[0][1].ToString();
                    String EmailBody = "Hello user ," + Username + ",<br/><br/>Follow the link below to reset your password<br/> <br/> https://localhost:44356/recover.aspx?id" + myGUID;

                    MailMessage PassRecMail = new MailMessage("b.shaan452@gmail.com", ToEmailAddress);

                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml = true;
                    PassRecMail.Subject = "Reset Password";

                    using (SmtpClient client = new SmtpClient())
                    {
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = new NetworkCredential("bhusanpro34@gmail.com", "pass@123$");
                        client.Host = "smtp.gmail.com";
                        client.Port = 587;
                        client.DeliveryMethod = SmtpDeliveryMethod.Network;

                        client.Send(PassRecMail);

                    }
                    //--------------

                    ibm.Text = "Reset Link send ! Check YOur email for reset password";
                    ibm.ForeColor = System.Drawing.Color.Green;
                    Email.Text = string.Empty;
                }
                else
                {
                    ibm.Text = "OOps! This Email Does not Exist...Try agian ";
                    ibm.ForeColor = System.Drawing.Color.Red;
                    Email.Text = string.Empty;
                    Email.Focus();

                }


            }
        }
    }
}
