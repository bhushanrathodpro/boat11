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
    public partial class WebForm11 : System.Web.UI.Page
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

        }
    }
}