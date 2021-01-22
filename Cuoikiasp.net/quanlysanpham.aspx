<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quanlysanpham.aspx.cs" Inherits="Cuoikiasp.net.quanlysanpham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            width: 673px;
         height: 22px;
        margin-left: 80px;
    }
        .auto-style5 {
            width: 158px;
         height: 22px;
     }
        .auto-style7 {
            margin-left: 40px;
        }
        .auto-style10 {
         margin-left: 20px;
     }
     .auto-style11 {
         margin-left: 5px;
     }
     .auto-style13 {
        width: 100%;
        margin-bottom: 0px;
    }
    .auto-style14 {
        width: 122px;
        height: 26px;
    }
    .auto-style15 {
        height: 26px;
    }
    .auto-style16 {
        margin-left: 0px;
    }
    .auto-style17 {
        margin-left: 23px;
    }
    .auto-style18 {
        margin-left: 79px;
    }
    .auto-style20 {
        width: 124px;
        height: 26px;
    }
    .auto-style21 {
        margin-left: 40px;
        height: 26px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <b> QUẢN LÝ SẢN PHẨM<br />
        Loại sản phẩm:&nbsp; </b>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="16px" CssClass="auto-style17" Font-Bold="True" Font-Size="Small" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="140px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="LAPTOP">LAPTOP</asp:ListItem>
                        <asp:ListItem Value="SMARTPHONE">SMARTPHONE</asp:ListItem>
                        <asp:ListItem Value="TABLET">TABLET</asp:ListItem>
        </asp:DropDownList>
&nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label2" runat="server" Text="Hãng Sản Xuất"></asp:Label>
                </td>
                <td class="auto-style15">               
                      &nbsp;               
                      <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="HangSanXuat" DataValueField="MaLoai" Height="16px" Width="225px" AutoPostBack="True" Font-Bold="True">
                    </asp:DropDownList>                
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cuoikiasp.netConnectionString8 %>" SelectCommand="SELECT [HangSanXuat], [MaLoai] FROM [LoaiSanPham]"></asp:SqlDataSource>
                </td>
            </tr>
          
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Mã Sản Phẩm"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="txtmasp" runat="server"></asp:TextBox>
                </td>
                <td></td>
            </tr>
          
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Tên Sản Phẩm"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="txttensp" runat="server" Width="202px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>    
            <tr>
                <td class="auto-style20">
                    <asp:Label ID="Label6" runat="server" Text="Số lượng"></asp:Label>
                </td>
                <td class="auto-style15">
                    &nbsp;
                    <asp:TextBox ID="txtsoluong" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    </td>
                <td class="auto-style15"></td>
            </tr>
                 <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Đơn  giá"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="txtdongia" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
               </tr>
                 <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Hình ảnh"></asp:Label>
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" />
                    <asp:TextBox ID="txthinh" runat="server" placeholder="Tên file ảnh"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
        <table class="auto-style13">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style18" OnClick="Button1_Click" Text="Thêm sản phẩm" Width="102px" />
                    <asp:Button ID="btnthemsoluong" runat="server" CssClass="auto-style11" Text="Nhập hàng" Width="83px" OnClick="btnthemsoluong_Click"/>
                    <asp:Button ID="btnxuathang" runat="server" CssClass="auto-style10" Text="Xuất hàng" Width="79px" OnClick="btnxuathang_Click"/>
                    <asp:Button ID="btntim" runat="server" Text="Tìm kiếm" CssClass="auto-style16" Width="97px" OnClick="btntim_Click"/>
                    <asp:Button ID="btnchitiet" runat="server" OnClick="btnchitiet_Click" Text="Chi tiết sản phẩm" Width="113px" />
                    <br />
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                </td>
        </table>
        <asp:GridView ID="GridView1" runat="server" Width="712px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
                <asp:TemplateField HeaderText="Hình ảnh">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Picture") %>'  Height="100px" Width="100px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
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
