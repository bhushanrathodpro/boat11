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
    public partial class WebForm10 : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["boat11ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] != null)
            {
                if (!IsPostBack)
                {
                    getProductDetails();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }



        private void clr()
        {
            //Email.Text = string.Empty;
            //Email0.Text = string.Empty;
            Email1.Text = string.Empty;

        }
        private void getProductDetails()
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);

            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblProducts where PID='" + PID + "'", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rpt1.DataSource = dt;
                        rpt1.DataBind();
                    }
                }
            }
        }



        protected void btn1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["boat11ConnectionString"].ConnectionString))
            {
                foreach (Control item in rpt1.Items)
                {



                    TextBox BookName = (TextBox)item.FindControl("BookName");
                    string bookname = BookName.Text;
                    TextBox EmailFinal = (TextBox)item.FindControl("BookName");
                    string emailfinal = EmailFinal.Text;

                    Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
                    Int64 Uid2 = Convert.ToInt64(Request.QueryString["Uid"]);

                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from tableuser where Email='" + EmailConfirm.Text + "'", con);
                    cmd.Parameters.AddWithValue("@email", EmailConfirm.Text);
                    String ASS = BookName.Text;

                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);

                    //---
                    string book = BookName.Text;
                    //string book =Session[]
                    SqlCommand cmd11 = new SqlCommand("Select * from tblProducts where PName='" + book + "' ", con);
                    //cmd.Parameters.AddWithValue("@bookname",book);
                    string FullName = BookName.Text;

                    SqlDataAdapter sda11 = new SqlDataAdapter(cmd11);
                    DataTable dt11 = new DataTable();
                    sda11.Fill(dt11);

                    //---

                    if (dt.Rows.Count != 0)
                    {
                        SqlCommand cmdut = new SqlCommand("select * from tableuser where Username='" + Session["USERNAME"] + "'", con);
                        cmd.Parameters.AddWithValue("@email", EmailConfirm.Text);
                        SqlDataAdapter user = new SqlDataAdapter(cmdut);
                        DataTable dtut = new DataTable();
                        user.Fill(dtut);


                        int price = Convert.ToInt32(dt11.Rows[0][2]);
                        //int price = dt11.Rows[0][2];

                        //Send  Email
                        string Address = Email1.Text;
                        int Uid = Convert.ToInt32(dt.Rows[0][0]);

                        String ToEmailAddress = dt.Rows[0][3].ToString();
                        String Username = dt.Rows[0][1].ToString();
                        string quality = txt1.Text;

                        String EmailBody = "Hello " + Username + ",<br/>Your Order For :<br/> "+quality+" peices of  " + bookname + " <br/> Worth Rs. " + price + "(* "+quality+")/-. <br/> Has Been Successfully Placed on : " + DateTime.Now + ".<br/> And Will Be Delivered to You at " + Address + " Within 4 Working Days.<br/> Thanks For Shopping With BoAts !";

                        MailMessage PassRecMail = new MailMessage("b.shaan452@gmail.com", ToEmailAddress);

                        PassRecMail.Body = EmailBody;
                        PassRecMail.IsBodyHtml = true;
                        PassRecMail.Subject = "Order Confirmation Email From Boathead";

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


                        ibm.Text = "Order Placed Successfully 👏.";
                        ibm.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        ibm.Text = " something went wrong,Try again ";
                        ibm.ForeColor = System.Drawing.Color.Red;

                    }
                    {


                        Session["Address"] = Email1.Text;
                        Session["PayMethod"] = "Cash On Delivery";
                        SqlCommand cmdut = new SqlCommand("select * from tableuser where Username='" + Session["USERNAME"] + "'", con);
                        cmd.Parameters.AddWithValue("@email", EmailConfirm.Text);
                        SqlDataAdapter user = new SqlDataAdapter(cmdut); int Uid = Convert.ToInt32(dt.Rows[0][0]);
                        DataTable dtut = new DataTable();
                        user.Fill(dtut);


                        int price = Convert.ToInt32(dt11.Rows[0][2]);

                        string PaymentType = "COD";
                        string PaymentStatus = "Not Paid";
                        string EMAILID = EmailConfirm.Text;
                        string quality = txt1.Text;

                        string Address = Email1.Text;

                        SqlCommand cmd3 = new SqlCommand("Insert into tblPurchase (PPrice,UserID,Email,PaymentType,PaymentStatus,Quantity,DateOfPurchase,Name,Address,OrderStatus) values('" + price + "','" + Uid + "','" + EMAILID + "','" + PaymentType + "','" + PaymentStatus + "','"+quality+"',GETDATE(),'" + FullName + "','" + Address + "','Out for delivery')", con);
                        cmd3.ExecuteNonQuery();

                        clr();

                        Response.Write(" <script> alert ('Order Placed Successfully 👏. CONTINUE SHOPPING'); </script>");
                        Server.Transfer("products.aspx");
                    }


                }
            }
        }
    }
}