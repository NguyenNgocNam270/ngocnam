using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace Cuoikiasp.net
{
    public partial class quanlynhanvien : System.Web.UI.Page
    {
        // Chuỗi kết nối
        string ConnectionString = ConfigurationManager.ConnectionStrings["cuoiki"].ConnectionString;
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
          //Hàm chính
            if (!IsPostBack)
            {
                DataBind();
            }
        }
        // Hàm đưa dữ liệu lên gridview
        public void DataBind()
        {
            String sql = "Select * from NhanVien";
            conn = new SqlConnection(ConnectionString);
            SqlCommand com = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader dr = com.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
            conn.Close();

        }
        // Thông báo
        public void Messagebox(string xMessage)
        {
            Response.Write("<script>alert('" + xMessage + "')</script>");
        }
        // Kiểm tra xem UserName đã tồn tại chưa
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
        // Thêm nhân viên
        protected void btnluu_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            if (txtmadmin.Text == "Phapdinh")
            {

                if (check() == false)
                {
                    string sqlthem = "insert into NhanVien values(@UserName,@PassWord,@TenNV,@DiaChi,@GioiTinh,@SoDienThoai,@HinhAnh)";
                    SqlCommand com = new SqlCommand(sqlthem, conn);
                    com.Parameters.AddWithValue("UserName", txtuser.Text);
                    com.Parameters.AddWithValue("PassWord", txtpass.Text);
                    com.Parameters.AddWithValue("TenNV", txtten.Text);
                    com.Parameters.AddWithValue("DiaChi", txtdiachi.Text);
                    com.Parameters.AddWithValue("GioiTinh", DropDownList1.Text);
                    com.Parameters.AddWithValue("SoDienThoai", txtsdt.Text);
                    com.Parameters.AddWithValue("HinhAnh", "pic/" + txthinh.Text);
                    com.ExecuteNonQuery();
                    Messagebox("Bạn có muốn đăng ký với UserName: " + txtuser.Text + " Không?");
                    Label7.Text = "Đăng ký thành công";
                }
                else
                    Label7.Text = "Tài khoản đã tồn tại";
            }
            else
                Label7.Text = "Vui lòng nhập đúng mã Admin để được thao tác!";
        }
        // Xóa một nhân viên theo UserName
         protected void btnxoa_Click(object sender, EventArgs e)
        {
            if (txtmadmin.Text == "Phapdinh")
            {
                conn = new SqlConnection(ConnectionString);
                conn.Open();
                string sqlXoa = "DELETE FROM NhanVien Where UserName=@UserName";
                SqlCommand com = new SqlCommand(sqlXoa, conn);
                com.Parameters.AddWithValue("UserName", txtuser.Text);
                com.ExecuteNonQuery();
                Messagebox("Bạn có muốn xóa UserName: " + txtuser.Text + " Không?");
                Label7.Text = "Xóa thành công";
            }
            else
                Label7.Text = "Vui lòng nhập đúng mã Admin để được thao tác!";
        }

         // Tìm kiếm nhân viên
        protected void btntim_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            string sqltim = "select UserName,TenNV,DiaChi,GioiTinh,SoDienThoai,Picture from NhanVien where UserName='" + txtuser.Text + "'";
            SqlCommand com = new SqlCommand(sqltim, conn);
            SqlDataReader dr = com.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
            conn.Close();
        }
        
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            DataBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            DataBind();
        }
        // Update dữ liệu
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = e.RowIndex;
            // Lấy các toolbox từ template trong Control
            GridViewRow row = (GridViewRow)GridView1.Rows[index];
            TextBox tennv = (TextBox)row.FindControl("TextBox1");
            TextBox diachi = (TextBox)row.FindControl("TextBox2");
            TextBox gioitinh = (TextBox)row.FindControl("TextBox3");
            TextBox sdt = (TextBox)row.FindControl("TextBox4");
            FileUpload fu = (FileUpload)row.FindControl("editfile");
            Label user = (Label)row.FindControl("Label8");

            if (txtmadmin.Text == "Phapdinh")
            {
            conn = new SqlConnection(ConnectionString);
                try
                {
                    fu.SaveAs(Server.MapPath("~/pic/") + Path.GetFileName(fu.FileName));
            String link = "pic/"  + Path.GetFileName(fu.FileName);
            conn.Open();
                
                    string sqlsua = "UPDATE NhanVien SET TenNV=@TenNV,DiaChi=@DiaChi,GioiTinh=@GioiTinh,SoDienThoai=@SoDienThoai,Picture=@Picture where UserName=@UserName";
                    SqlCommand com = new SqlCommand(sqlsua, conn);
                    com.Parameters.AddWithValue("UserName", user.Text);
                    com.Parameters.AddWithValue("TenNV", tennv.Text);
                    com.Parameters.AddWithValue("DiaChi", diachi.Text);
                    com.Parameters.AddWithValue("GioiTinh", gioitinh.Text);
                    com.Parameters.AddWithValue("SoDienThoai", sdt.Text);
                    com.Parameters.AddWithValue("Picture", link);
                    com.ExecuteNonQuery();
                    conn.Close();
                    GridView1.EditIndex = -1;
                    DataBind();
                }
                catch
                {
                    Label7.Text = "Vui lòng chọn hình ảnh";
                }
            }
            else
            Label7.Text = "Vui lòng nhập đúng mã Admin để được thao tác!";
        }
    }
}
