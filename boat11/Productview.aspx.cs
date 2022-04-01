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
    public partial class WebForm9 : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["boat11ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["PID"] != null)
            {
                if (!IsPostBack)
                {

                    BindProductImage();
                    BindProductDetails();
                }
            }
            else
            {
                Response.Redirect("~/products.aspx");
            }
        }

        private void BindProductDetails()
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
                        rptrProductDetails.DataSource = dt;
                        rptrProductDetails.DataBind();
                    }
                }
            }
        }

        private void BindProductImage()
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);

            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblProductImage where PID='" + PID + "'", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrImage.DataSource = dt;
                        rptrImage.DataBind();
                    }
                }
            }
        }

        protected string GetActiveImgClass(int ItemIndex)
        {
            if (ItemIndex == 0)
            {
                return "active";
            }
            else
            {
                return "";

            }
        }



        protected void rptrProductDetails_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}