using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Globalization;
using System.Threading;

namespace boat11
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["boat11ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                BindProductRepeater();
            }
        }

        private void BindProductRepeater()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("BindAllProducts", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrProducts.DataSource = dt;
                        rptrProducts.DataBind();
                    }
                }
            }
        }
        protected void txtFilterGrid1Record_TextChanged(object sender, EventArgs e)
        {
            if (txtFilterGrid1Record.Text != string.Empty)
            {
                SqlConnection con = new SqlConnection(CS);
                con.Open();
                string qr = "select A.*,B.*,A.PPrice-A.PSelPrice as DiscAmount,B.Name as ImageName from tblProducts A cross apply( select top 1 * from tblProductImage B where B.PID= A.PID order by B.PID desc )B where  A.PName like '" + txtFilterGrid1Record.Text + "%' order by A.PID desc";
                SqlDataAdapter da = new SqlDataAdapter(qr, con);
                string text = ((TextBox)sender).Text;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    rptrProducts.DataSource = ds.Tables[0];
                    rptrProducts.DataBind();
                }
                else
                {

                }
            }
        }
    }
}