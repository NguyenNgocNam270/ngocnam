<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quanlykhachhang.aspx.cs" Inherits="Cuoikiasp.net.quanlykhachhang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <title></title>

<style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 122px;
        }
        .auto-style3 {
            width: 124px;
        }
        .auto-style4 {
            width: 415px;
         height: 22px;
     }
        .auto-style5 {
            width: 158px;
         height: 22px;
     }
        .auto-style10 {
         margin-left: 12px;
     }
     .auto-style11 {
         margin-left: 7px;
     }
     .auto-style12 {
         margin-left: 116px;
     }
    .auto-style13 {
        margin-bottom: 0px;
    }
    </style>

</head>
<body>
    <form id="form1" runat="server">
       <b> QUẢN LÝ KHÁCH HÀNG</b>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Mã Khách Hàng"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtma" runat="server"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Tên Khách Hàng"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Địa chỉ"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Số điện thoại"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>    
            
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnluu" runat="server" CssClass="auto-style12" Height="25px" Text="Lưu" OnClick="btnluu_Click" />
                    <asp:Button ID="btncapnhap" runat="server" CssClass="auto-style11" Text="Cập Nhập" OnClick="btncapnhap_Click" />
                    <asp:Button ID="btnxoa" runat="server" CssClass="auto-style10" Text="Xóa" OnClick="btnxoa_Click" />
                    <asp:Button ID="btntim" runat="server" Text="Tìm kiếm" CssClass="auto-style13" OnClick="btntim_Click" style="height: 26px"  />
                    <br />
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    </td>
        </table>
        <asp:GridView ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
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
