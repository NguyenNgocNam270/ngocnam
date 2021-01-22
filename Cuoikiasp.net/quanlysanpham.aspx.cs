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
    public partial class quanlysanpham : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["cuoiki"].ConnectionString;
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load_data();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "select SanPham.MaSP,SanPham.MaLoai,TenLoai,TenSP,SoLuong,DonGia,Picture from ChiTietSanPham,SanPham,LoaiSanPham where SanPham.MaSP=ChiTietSanPham.MaSP and SanPham.MaLoai=LoaiSanPham.MaLoai and TenLoai='" + DropDownList1.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, ConnectionString);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        public void load_data()
        {

            if (!IsPostBack)
            {
                conn = new SqlConnection(ConnectionString);
                conn.Open();
                string sql = "select SanPham.MaSP,SanPham.MaLoai,TenLoai,TenSP,SoLuong,DonGia,Picture from SanPham,LoaiSanPham where  SanPham.MaLoai=LoaiSanPham.MaLoai ";
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtmasp.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[3].Text);
            DropDownList2.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[4].Text);
            DropDownList1.Text= HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[5].Text);
            txttensp.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[6].Text);
            txtsoluong.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[7].Text);
            txtdongia.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[8].Text);
            Image2.ImageUrl = GridView1.SelectedRow.Cells[9].Text;
            txthinh.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[9].Text);
        }
        public bool check()
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqlcheck = "select COUNT(*) from SanPham where MaSP='" + txtmasp.Text + "'";
            SqlCommand com = new SqlCommand(sqlcheck, conn);
            int sl = (int)com.ExecuteScalar();
            if (sl >= 1)
                return true;
            return false;

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            if (check() == false)
            {
                string sqlthem = "insert into SanPham values(@MaSP,@TenSP,@MaLoai,@SoLuong,@DonGia,@Picture)";
                SqlCommand com = new SqlCommand(sqlthem, conn);
                com.Parameters.AddWithValue("MaSP", txtmasp.Text);
                com.Parameters.AddWithValue("TenSP", txttensp.Text);
                com.Parameters.AddWithValue("MaLoai", DropDownList2.SelectedValue);
                com.Parameters.AddWithValue("SoLuong", txtsoluong.Text);
                com.Parameters.AddWithValue("DonGia", txtdongia.Text);
                com.Parameters.AddWithValue("Picture", "pic/"+txthinh.Text);
                com.ExecuteNonQuery();
                Messagebox("Bạn có muốn thêm sản phẩm: " + txttensp.Text + " vào kho không?");
                Label7.Text = "Thêm sản phẩm mới thành công";
            }
            else
                Label7.Text = "Sản phẩm đã tồn tại, không thể thêm mới";
        }

        protected void btnthemsoluong_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqlsua = "Update SanPham Set SoLuong=SoLuong + '"+txtsoluong.Text+"' where MaSP=@MaSP";
            SqlCommand com = new SqlCommand(sqlsua, conn);
            com.Parameters.AddWithValue("MaSP", txtmasp.Text);
            com.ExecuteNonQuery();
            Messagebox("Bạn có muốn nhập " + txtsoluong.Text + "  sản phẩm: " + txttensp.Text + " vào kho?");
            Label7.Text = "Nhập hàng thành công";
           
        }

        protected void btnxuathang_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqlsua = "Update SanPham Set SoLuong=SoLuong - '" + txtsoluong.Text + "' where MaSP=@MaSP";
            SqlCommand com = new SqlCommand(sqlsua, conn);
            com.Parameters.AddWithValue("MaSP", txtmasp.Text);
            com.ExecuteNonQuery();
            Messagebox("Bạn có muốn xuất " + txtsoluong.Text + "  sản phẩm: " + txttensp.Text + " ra khỏi kho?");
            Label7.Text = "Xuất kho thành công";
        }

        protected void btntim_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqltim = "select SanPham.MaSP,SanPham.MaLoai,TenLoai,TenSP,SoLuong,DonGia,Picture  from SanPham,LoaiSanPham where  SanPham.MaLoai=LoaiSanPham.MaLoai and MaSP='" + txtmasp.Text + "'";
            SqlCommand com = new SqlCommand(sqltim, conn);
            SqlDataReader dr = com.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
            conn.Close();
            Label7.Text = "Kết quả tìm thấy cho sản phẩm có mã " + txtmasp.Text + "";
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqlXoa = "DELETE FROM SanPham Where MaSP=@MaSP";
            SqlCommand com = new SqlCommand(sqlXoa, conn);
            com.Parameters.AddWithValue("MaSP", txtmasp.Text);
            com.ExecuteNonQuery();
            Messagebox("Bạn có muốn xóa sản phẩm:" + txtmasp.Text +"ra kho không?");
            Label7.Text = "Xóa thành công";
            load_data();

        }

        protected void btnchitiet_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqltim = "select TenSP,HeDieuHanh,ManHinh,Camera,CPU,RAM,DungLuongPin,Picture from ChiTietSanPham,SanPham where ChiTietSanPham.MaSP=SanPham.MaSP and SanPham.MaSP='"+ txtmasp.Text + "'";
            SqlCommand com = new SqlCommand(sqltim, conn);
            SqlDataReader dr = com.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
            conn.Close();
            Label7.Text = "Chi tiết sản phẩm có mã :" + txtmasp.Text + "";
        }
      
    }
}