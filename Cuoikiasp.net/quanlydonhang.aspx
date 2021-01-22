<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quanlydonhang.aspx.cs" Inherits="Cuoikiasp.net.quanlydonhang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 41px;
        }
        .auto-style2 {
            margin-left: 40px;
            width: 755px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            margin-left: 68px;
        }
        .auto-style5 {
            margin-left: 52px;
        }
        .auto-style6 {
            margin-left: 55px;
        }
        .auto-style7 {
            margin-left: 87px;
        }
        .auto-style8 {
            width: 755px;
        }
        .auto-style9 {
            height: 23px;
            width: 755px;
        }
        .auto-style10 {
            margin-left: 40px;
        }
        .auto-style12 {
            margin-left: 0px;
        }
        .auto-style13 {
            margin-left: 42px;
        }
        .auto-style14 {
            margin-left: 40px;
            width: 755px;
            height: 29px;
        }
        .auto-style15 {
            height: 29px;
        }
        .auto-style16 {
            margin-left: 14px;
        }
        .auto-style17 {
            margin-left: 80px;
            width: 755px;
        }
        .auto-style18 {
            margin-left: 44px;
        }
        .auto-style19 {
            height: 26px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <b>QUẢN LÝ HÓA ĐƠN</b></div>
        <table style="width:100%;">
            <b>
                <tr>
                    <td class="auto-style14">
                        <b>
                            <asp:Label ID="Label11" runat="server" Text="Danh sách khách hàng"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                        <asp:DropDownList ID="dropmakh" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenKH" DataValueField="MaKH" AutoPostBack="True" Font-Bold="True">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cuoikiasp.netConnectionString %>" SelectCommand="SELECT [MaKH], [TenKH] FROM [KhachHang]"></asp:SqlDataSource>
                        <br />
                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Danh sách sản phẩm hiện có"></asp:Label>

                        <asp:DropDownList ID="dropmasp" runat="server" DataSourceID="SqlDataSource2" DataTextField="TenSP" DataValueField="MaSP" AutoPostBack="True" Font-Bold="True">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cuoikiasp.netConnectionString13 %>" SelectCommand="SELECT [MaSP], [TenSP] FROM [SanPham]"></asp:SqlDataSource>
                        <b>
                            <br />
                            <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Nhân viên lập hóa đơn"></asp:Label>
                        </b>
                        <asp:DropDownList ID="dropmanv" runat="server" CssClass="auto-style13" DataSourceID="SqlDataSource3" DataTextField="TenNV" DataValueField="UserName" AutoPostBack="True" Font-Bold="True">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cuoikiasp.netConnectionString %>" SelectCommand="SELECT [UserName], [TenNV] FROM [NhanVien]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                </tr>
            </b>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label1" runat="server" Text="Số hóa đơn"></asp:Label>
                    <asp:TextBox ID="txtshd" runat="server" CssClass="auto-style4"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Địa chỉ giao"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtdiachi" runat="server" CssClass="auto-style16" Height="18px"></asp:TextBox>
                </td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Tên khách hàng"></asp:Label>
                    <asp:TextBox ID="txttenkh" runat="server" CssClass="auto-style10" ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Ngày bán"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtngayban" runat="server" CssClass="auto-style18"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label3" runat="server" Text="Tên sản phẩm"></asp:Label>
                    <asp:TextBox ID="txttensp" runat="server" CssClass="auto-style5" ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Text="Tiền thanh toán"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txttien" runat="server" CssClass="auto-style1" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
               <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label4" runat="server" Text="Số lượng bán"></asp:Label>
                    <asp:TextBox ID="txtsoluong" runat="server" CssClass="auto-style6"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" Text="Thu ngân thanh toán"></asp:Label>
                    <asp:TextBox ID="txttennv" runat="server" CssClass="auto-style1" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
               <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label5" runat="server" Text="Đơn giá"></asp:Label>
                    <asp:TextBox ID="txtdongia" runat="server" CssClass="auto-style7"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
             </tr>
            <%--</tr>--%>
               <tr>
                <td class="auto-style9">
                    <asp:Button ID="btnthem" runat="server" OnClick="Button1_Click" Text="Thêm hóa đơn" />
                    <asp:Button ID="btnsua" runat="server" CssClass="auto-style12" OnClick="btnsua_Click" Text="Sửa hóa đơn" Width="149px" />
                    <asp:Button ID="btnxoa" runat="server" CssClass="auto-style12" OnClick="btnxoa_Click" Text="Xóa hóa đơn" />
                    <asp:Button ID="btntim" runat="server" OnClick="btntim_Click" Text="Tìm" Width="92px" />
                    <asp:Button ID="btnin" runat="server" CssClass="auto-style19" OnClick="btnin_Click" Text="In hóa đơn" />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Lập báo cáo" Width="87px" />
                    <br />
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </form>
    <br />
    <br />
       <li><a href="quanlydonhang.aspx"><span>QUẢN LÝ ĐƠN HÀNG</span></a></li>
   <li class="active has-sub"><a href="quanlysanpham.aspx"><span>QUẢN LÝ SẢN PHẨM</span></a>
   <ul><li class="has-sub"><a href="chitietsanpham.aspx"><span>Thông số kĩ thuật</span></a> </li></ul>
   </li>
   <li><a href="quanlykhachhang.aspx"><span>QUẢN LÝ KHÁCH HÀNG</span></a></li>
   <li><a href="quanlynhanvien.aspx"><span>QUẢN LÝ NHÂN VIÊN</span></a></li>
   <li class="last"><a href="dangnhap.aspx"><span>ĐĂNG XUẤT</span></a></li>
</body>
</html>
