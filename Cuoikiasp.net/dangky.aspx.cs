using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cuoikiasp.net
{
    public partial class dangky : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["cuoiki"].ConnectionString;
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public bool check()
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqlcheck = "select COUNT(*) from NhanVien where UserName='" + txtuser.Text + "'";
            SqlCommand com = new SqlCommand(sqlcheck, conn);
            int sl = (int)com.ExecuteScalar();
            if (sl >= 1)
            return true;
            return false;

        }

        protected void txtdangky_Click(object sender, EventArgs e)
        {

            conn = new SqlConnection(ConnectionString);
            conn.Open();
            if (check() == false)
            {
                string sqlthem = "insert into NhanVien values(@UserName,@PassWord,@TenNV,@DiaChi,@GioiTinh,@SoDienThoai,@Pic.t00ure)";
                SqlCommand com = new SqlCommand(sqlthem, conn);
                com.Parameters.AddWithValue("UserName", txtuser.Text);
                com.Parameters.AddWithValue("PassWord", txtpass.Text);
                com.Parameters.AddWithValue("TenNV", txtten.Text);
                com.Parameters.AddWithValue("DiaChi", txtdiachi.Text);
                com.Parameters.AddWithValue("GioiTinh", txtgioitinh.Text);
                com.Parameters.AddWithValue("SoDienThoai", txtsdt.Text);
                com.Parameters.AddWithValue("Picture", txthinh.Text);
                com.ExecuteNonQuery();
               Label3.Text="Đăng ký thành công";
            }
            else
               Label3.Text= "Tài khoản đã tồn tại";
        }
    }
}