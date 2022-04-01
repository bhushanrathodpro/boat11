using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace boat11
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            vord();
        }

        private void vord()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["boat11ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblPurchase", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrcomp.DataSource = dt;
                        rptrcomp.DataBind();
                    }
                }
            }
        }

        protected void dtlcmp_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["boat11ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("delete from tblPurchase", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrcomp.DataSource = dt;
                        rptrcomp.DataBind();
                    }
                }
            }
        }
       

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Recover.aspx");

        }
    }
}