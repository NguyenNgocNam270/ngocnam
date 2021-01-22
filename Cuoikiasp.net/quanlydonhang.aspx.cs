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
    public partial class quanlydonhang : System.Web.UI.Page
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
            string sqltim = @"select SoHoaDon,TenKH,TenSP,SoLuongBan,HoaDon.DonGia,KhachHang.DiaChi,NgayBan,TienThanhToan,TenNV
                            from HoaDon, SanPham, KhachHang, NhanVien
                            where HoaDon.MaSP = SanPham.MaSP and HoaDon.MaKH = KhachHang.MaKH and HoaDon.UserName = NhanVien.UserName";
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
            txtshd.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[1].Text);
            txttenkh.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[2].Text);
            txttensp.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[3].Text);
            txtsoluong.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[4].Text);
            txtdongia.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[5].Text);
            txtdiachi.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[6].Text);
            txtngayban.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[7].Text);
            txttien.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[8].Text);
            txttennv.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[9].Text);
        }
        public bool check()
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqlcheck = "select COUNT(*) from HoaDon where SoHoaDon='" + txtshd.Text + "'";
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
                try
                {
                    int soluong, dongia;
                    soluong = int.Parse(txtsoluong.Text);
                    dongia = int.Parse(txtdongia.Text);
                    string sqlthem = "insert into HoaDon values(@SoHoaDon,@MaKH,@MaSP,@NgayBan,@SoLuongBan,@DonGia,@TienThanhToan,@UserName)";
                    SqlCommand com = new SqlCommand(sqlthem, conn);
                    com.Parameters.AddWithValue("SoHoaDon", txtshd.Text);
                    com.Parameters.AddWithValue("MaKH",dropmakh.SelectedValue);
                    com.Parameters.AddWithValue("MaSP", dropmasp.SelectedValue);
                    com.Parameters.AddWithValue("NgayBan", txtngayban.Text);
                    com.Parameters.AddWithValue("SoLuongBan", txtsoluong.Text);
                    com.Parameters.AddWithValue("DonGia", txtdongia.Text);
                    com.Parameters.AddWithValue("TienThanhToan", soluong*dongia);
                    com.Parameters.AddWithValue("UserName", dropmanv.SelectedValue);
                    com.ExecuteNonQuery();
                    Messagebox("Bạn có muốn tạo số hóa đơn: " + txtshd.Text + " với  khách hàng:" +dropmakh.Text+ "không?");
                    Label10.Text = "Tạo hóa đơn thành công";
                }
                catch
                {
                    Label10.Text = "Vui lòng nhập thông tin đầy đủ!";
                }
            }
            else
                Label10.Text = "Hóa đơn đã được tạo,vui lòng tạo hóa đơn khác";
        }

        protected void btnsua_Click(object sender, EventArgs e)
        {    
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            try
            {
                int soluong, dongia;
                soluong = int.Parse(txtsoluong.Text);
                dongia = int.Parse(txtdongia.Text);
                string sqlsua = "UPDATE HoaDon SET MaKH=@MaKH,MaSP=@MaSP,NgayBan=@NgayBan,SoLuongBan=@SoLuongBan,DonGia=@DonGia,TienThanhToan=@TienThanhToan,UserName=@UserName  where SoHoaDon=@SoHoaDon";
                SqlCommand com = new SqlCommand(sqlsua, conn);
                com.Parameters.AddWithValue("SoHoaDon", txtshd.Text);
                com.Parameters.AddWithValue("MaKH", dropmakh.SelectedValue);
                com.Parameters.AddWithValue("MaSP", dropmasp.SelectedValue);
                com.Parameters.AddWithValue("NgayBan", txtngayban.Text);
                com.Parameters.AddWithValue("SoLuongBan", txtsoluong.Text);
                com.Parameters.AddWithValue("DonGia", txtdongia.Text);
                com.Parameters.AddWithValue("TienThanhToan", soluong * dongia);
                com.Parameters.AddWithValue("UserName", dropmanv.SelectedValue);
                com.ExecuteNonQuery();
                Label10.Text = "Cập nhập thành công";
            }
            catch
            {
                Label10.Text = "Cập nhập bị lỗi!!!";
            }
            load_data();
        }

        protected void btnxoa_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(ConnectionString);
                conn.Open();
                string sqlxoa = "DELETE from HoaDon where SoHoaDon=@SoHoaDon";
                SqlCommand com = new SqlCommand(sqlxoa, conn);
                com.Parameters.AddWithValue("SoHoaDon", txtshd.Text);
                com.ExecuteNonQuery();
                Messagebox("Bạn có muốn xóa hóa đơn có mã: " + txtshd.Text+"không?");
                Label10.Text = "Xóa hóa đơn thành công";
            }
            catch
            {
                Label10.Text = "Hóa đơn không tồn tại";
            }

        }

        protected void btntim_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            try
            {
                string sqltim = @"select SoHoaDon,TenKH,TenSP,SoLuongBan,HoaDon.DonGia,KhachHang.DiaChi,NgayBan,TienThanhToan,TenNV
                            from HoaDon, SanPham, KhachHang, NhanVien
                            where HoaDon.MaSP = SanPham.MaSP and HoaDon.MaKH = KhachHang.MaKH and HoaDon.UserName = NhanVien.UserName and SoHoaDon='" + txtshd.Text + "'";
                SqlCommand com = new SqlCommand(sqltim, conn);
                SqlDataReader dr = com.ExecuteReader();
               
                Label10.Text = "Kết quả tìm thấy cho hóa đơn có mã " + txtshd.Text + "";
                GridView1.DataSource = dr;
                GridView1.DataBind();
                dr.Close();
                conn.Close();
            }
            catch
            {
                Label10.Text = "Không tìm được!!!";
            }
        }

        protected void btnin_Click(object sender, EventArgs e)
        {
            string sql = @"select SoHoaDon,TenKH,TenSP,SoLuongBan,HoaDon.DonGia,KhachHang.DiaChi,NgayBan,TienThanhToan,TenNV
                            from HoaDon, SanPham, KhachHang, NhanVien
                            where HoaDon.MaSP = SanPham.MaSP and HoaDon.MaKH = KhachHang.MaKH and HoaDon.UserName = NhanVien.UserName and SoHoaDon='" + txtshd.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, ConnectionString);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            ExportToExcel excel = new ExportToExcel();
            // Lấy về nguồn dữ liệu cần Export là 1 DataTable
            // DataTable này mỗi bạn lấy mỗi khác. 
            // Ở đây tôi dùng BindingSouce có tên bs nên tôi ép kiểu như sau:
            // Bạn nào gán trực tiếp vào DataGridView thì ép kiểu DataSource của
            // DataGridView nhé
            excel.Export(dt, "Danh sách", "HÓA ĐƠN THANH TOÁN");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string sql = @"select SoHoaDon,TenKH,TenSP,SoLuongBan,HoaDon.DonGia,KhachHang.DiaChi,NgayBan,TienThanhToan,TenNV
                            from HoaDon, SanPham, KhachHang, NhanVien
                            where HoaDon.MaSP = SanPham.MaSP and HoaDon.MaKH = KhachHang.MaKH and HoaDon.UserName = NhanVien.UserName";
            SqlDataAdapter da = new SqlDataAdapter(sql, ConnectionString);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            ExportToExcel excel = new ExportToExcel();
            // Lấy về nguồn dữ liệu cần Export là 1 DataTable
            // DataTable này mỗi bạn lấy mỗi khác. 
            // Ở đây tôi dùng BindingSouce có tên bs nên tôi ép kiểu như sau:
            // Bạn nào gán trực tiếp vào DataGridView thì ép kiểu DataSource của
            // DataGridView nhé
            excel.Export(dt, "Danh sách", "TỔNG CÁC HÓA ĐƠN ĐÃ ĐƯỢC LẬP");
        }
    }
}