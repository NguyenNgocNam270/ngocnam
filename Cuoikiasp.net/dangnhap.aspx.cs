using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cuoikiasp.net
{
    public partial class dangnhap : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["cuoiki"].ConnectionString;
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    
        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sql = "Select * from NhanVien where UserName='" + txttk.Text + "' and  PassWord='" + txtmk.Text + "'";
            SqlCommand com = new SqlCommand(sql, conn);
            SqlDataReader dr = com.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("menuquanly.aspx");
            }
            else
                Response.Write("Sai tài khoản hoặc mật khẩu");
        }
    }
}