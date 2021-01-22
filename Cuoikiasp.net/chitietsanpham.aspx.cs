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
    public partial class chitietsanpham : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["cuoiki"].ConnectionString;
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            load_data();
        }
        public void load_data()
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqltim = "select SanPham.MaSP,TenSP,HeDieuHanh,ManHinh,Camera,CPU,RAM,DungLuongPin,Picture from ChiTietSanPham,SanPham where ChiTietSanPham.MaSP=SanPham.MaSP ";
            SqlCommand com = new SqlCommand(sqltim, conn);
            SqlDataReader dr = com.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
            conn.Close();
        }
        public void Messagebox(string xMessage)
        {
            Response.Write("<script>alert('" + xMessage + "')</script>");
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtma.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[3].Text);
            txtten.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[4].Text);
            txthdh.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[5].Text);
            txtmanhinh.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[6].Text);
            txtcame.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[7].Text);
            txtcpu.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[8].Text);
            txtram.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[9].Text);
            txtpin.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[10].Text);
            Image3.ImageUrl = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[11].Text);
        }
        public bool check()
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqlcheck = "select COUNT(*) from ChiTietSanPham where MaSP='" + txtma.Text + "'";
            SqlCommand com = new SqlCommand(sqlcheck, conn);
            int sl = (int)com.ExecuteScalar();
            if (sl >= 1)
                return true;
            return false;

        }
        protected void btnthem_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            if (check() == false)
            {
                try
                {
                    string sqlthem = "insert into ChiTietSanPham values(@MaSP,@HeDieuHanh,@ManHinh,@Camera,@CPU,@RAM,@DungLuongPin)";
                    SqlCommand com = new SqlCommand(sqlthem, conn);
                    com.Parameters.AddWithValue("MaSP", txtma.Text);
                    com.Parameters.AddWithValue("HeDieuHanh", txthdh.Text);
                    com.Parameters.AddWithValue("ManHinh", txtmanhinh.Text);
                    com.Parameters.AddWithValue("Camera", txtcame.Text);
                    com.Parameters.AddWithValue("CPU", txtcpu.Text);
                    com.Parameters.AddWithValue("RAM", txtram.Text);
                    com.Parameters.AddWithValue("DungLuongPin", txtpin.Text);
                    com.ExecuteNonQuery();
                    Messagebox("Bạn có muốn thêm chi tiết cho sản phẩm có mã: " + txtma.Text + " vào kho không?");
                    Label10.Text = "Thêm chi tiết cho sản phẩm mới thành công";
                }
                catch
                {
                    Label10.Text = "Sản phẩm hiện tại trong kho chưa nhập!";
                }
            }
            else
                Label10.Text = "Sản phẩm đã có thông số,vui lòng thêm sản phẩm khác, vui lòng nhập sản phẩm vào kho";
        }

        protected void btnsua_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqlsua = "UPDATE ChiTietSanPham SET HeDieuHanh=@HeDieuHanh,ManHinh=@ManHinh,Camera=@Camera,CPU=@CPU,RAM=@RAM,DungLuongPin=@DungLuongPin  where MaSP=@MaSP";
            SqlCommand com = new SqlCommand(sqlsua, conn);
            com.Parameters.AddWithValue("MaSP", txtma.Text);
            com.Parameters.AddWithValue("HeDieuHanh", txthdh.Text);
            com.Parameters.AddWithValue("ManHinh", txtmanhinh.Text);
            com.Parameters.AddWithValue("Camera", txtcame.Text);
            com.Parameters.AddWithValue("CPU",txtcpu.Text);
            com.Parameters.AddWithValue("RAM", txtram.Text);
            com.Parameters.AddWithValue("DungLuongPin", txtpin.Text);
            com.ExecuteNonQuery();
            Label10.Text = "Cập nhập thành công";
            if (Label10.Text.Equals("Cập nhập thành công"))
            {
                Response.Redirect("chitietsanpham.aspx");
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqlXoa = "DELETE FROM ChiTietSanPham Where MaSP=@MaSP";
            SqlCommand com = new SqlCommand(sqlXoa, conn);
            com.Parameters.AddWithValue("MaSP", txtma.Text);
            com.ExecuteNonQuery();
            Messagebox("Bạn có muốn chi tiết sản phẩm có mã: " + txtma.Text + " Không?");
            Label10.Text = "Xóa thành công";
        }

        protected void btntim_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqltim = "select SanPham.MaSP,TenSP,HeDieuHanh,ManHinh,Camera,CPU,RAM,DungLuongPin,Picture from ChiTietSanPham,SanPham where ChiTietSanPham.MaSP=SanPham.MaSP and SanPham.MaSP='" + txtma.Text + "'";
            SqlCommand com = new SqlCommand(sqltim, conn);
            SqlDataReader dr = com.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
            conn.Close();
            Label10.Text = "Kết quả tìm thấy cho sản phẩm có mã " + txtma.Text + "";
        }

      
    }
}