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
    public partial class WebForm8 : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["boat11ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void clr()
        {
            txtProductName.Text = string.Empty;
            txtPrice.Text = string.Empty;
            txtsellPrice.Text = string.Empty;
            txtCat.Text = string.Empty;
            txtDescription.Text = string.Empty;

            chFD.Checked = false;
            ch30Ret.Checked = false;
            cbCOD.Checked = false;

            txtProductName.Focus();
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("sp_InsertProduct", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PName", txtProductName.Text);
                cmd.Parameters.AddWithValue("@PCategory", txtCat.Text);

                cmd.Parameters.AddWithValue("@PPrice", txtPrice.Text);
                cmd.Parameters.AddWithValue("@PSelPrice", txtsellPrice.Text);
                cmd.Parameters.AddWithValue("@PDescription", txtDescription.Text);
                if (chFD.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@FreeDelivery", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());
                }

                if (ch30Ret.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@30DayRet", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@30DayRet", 0.ToString());
                }
                if (cbCOD.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@COD", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@COD", 0.ToString());
                }

                if (con.State == ConnectionState.Closed)
                { con.Open(); }
                Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());



                //Insert and upload images

                if (fuImg01.HasFile)
                {
                    string SavePath = Server.MapPath("~/images/bookimg/") + PID;

                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);

                    }
                    string Extention = Path.GetExtension(fuImg01.PostedFile.FileName);
                    fuImg01.SaveAs(SavePath + "\\" + txtProductName.Text.ToString().Trim() + "01" + Extention);
                    //SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString ().Trim () + "01" + "','" + Extention  + "')", con);
                    SqlCommand cmd3 = new SqlCommand("insert into tblProductImage(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
                    cmd3.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
                    cmd3.Parameters.AddWithValue("@Name", txtProductName.Text.ToString().Trim() + "01");
                    cmd3.Parameters.AddWithValue("@Extention", Extention);
                    cmd3.ExecuteNonQuery();

                }

                //2nd fileupload

                if (fuImg02.HasFile)
                {
                    string SavePath = Server.MapPath("~/images/bookimg/") + PID;

                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);

                    }
                    string Extention = Path.GetExtension(fuImg02.PostedFile.FileName);
                    fuImg01.SaveAs(SavePath + "\\" + txtProductName.Text.ToString().Trim() + "02" + Extention);
                    //SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString ().Trim () + "02" + "','" + Extention  + "')", con);
                    SqlCommand cmd3 = new SqlCommand("insert into tblProductImage(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
                    cmd3.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
                    cmd3.Parameters.AddWithValue("@Name", txtProductName.Text.ToString().Trim() + "02");
                    cmd3.Parameters.AddWithValue("@Extention", Extention);
                    cmd3.ExecuteNonQuery();

                }
                clr();
                Response.Write(" <script> alert ('Product Added Successfully 👏. CONTINUE ?'); </script>");


            }
        }
    }
}