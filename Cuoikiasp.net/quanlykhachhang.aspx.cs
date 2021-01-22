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
    public partial class quanlykhachhang : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["cuoiki"].ConnectionString;
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            load_data();
        }
        public void load_data()
        {
            if (!IsPostBack)
            {
                conn = new SqlConnection(ConnectionString);
                conn.Open();
                string sql = "select * from KhachHang";
                SqlCommand com = new SqlCommand(sql, conn);
                SqlDataReader dr = com.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                dr.Close();
                conn.Close();
            }
        }
        public void Messagebox(string xMessage)
        {
            Response.Write("<script>alert('" + xMessage + "')</script>");
        }
        public bool check()
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqlcheck = "select COUNT(*) from KhachHang where MaKH='" + txtma.Text + "'";
            SqlCommand com = new SqlCommand(sqlcheck, conn);
            int sl = (int)com.ExecuteScalar();
            if (sl >= 1)
                return true;
            return false;

        }

        protected void btnluu_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            if (check() == false)
            {
                string sqlthem = "insert into KhachHang values(@MaKH,@TenKH,@DiaChi,@SoDienThoai)";
                SqlCommand com = new SqlCommand(sqlthem, conn);
                com.Parameters.AddWithValue("MaKH", txtma.Text);
                com.Parameters.AddWithValue("TenKH", txtten.Text);
                com.Parameters.AddWithValue("DiaChi", txtdiachi.Text);
                com.Parameters.AddWithValue("SoDienThoai", txtsdt.Text);
                com.ExecuteNonQuery();
                Messagebox("Bạn có muốn đăng ký với MãKH: " + txtma.Text + " Không?");
                Label7.Text = "Đăng ký thành công";
            }
            else
                Label7.Text = "Tài khoản đã tồn tại";
        }

        protected void btncapnhap_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqlsua = "UPDATE KhachHang SET TenKH=@TenKH,DiaChi=@DiaChi,SoDienThoai=@SoDienThoai where MaKH=@MaKH";
            SqlCommand com = new SqlCommand(sqlsua, conn);
            com.Parameters.AddWithValue("MaKH", txtma.Text);
            com.Parameters.AddWithValue("TenKH", txtten.Text);
            com.Parameters.AddWithValue("DiaChi", txtdiachi.Text);
            com.Parameters.AddWithValue("SoDienThoai", txtsdt.Text);
            com.ExecuteNonQuery();
            Label7.Text = "Cập nhập thành công";
            if (Label7.Text.Equals("Cập nhập thành công"))
            {
                Response.Redirect("quanlykhachhang.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtma.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[2].Text);
            txtten.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[3].Text);
            txtdiachi.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[4].Text);
            txtsdt.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[5].Text);
        }
        public void xoa()
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqlXoa = "DELETE FROM KhachHang Where MaKH=@MaKH";
            SqlCommand com = new SqlCommand(sqlXoa, conn);
            com.Parameters.AddWithValue("MaKH", txtma.Text);
            com.ExecuteNonQuery();
            Messagebox("Bạn có muốn đăng ký với MãKH: " + txtma.Text + "Không?");
            Label7.Text = "Xóa thành công";
         }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            xoa();
        }

        protected void btnxoa_Click(object sender, EventArgs e)
        {
            xoa();
        }

        protected void btntim_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqltim = "select * from KhachHang where MaKH='" + txtma.Text + "'";
            SqlCommand com = new SqlCommand(sqltim, conn);
            SqlDataReader dr = com.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
            conn.Close();
        }
    }
}