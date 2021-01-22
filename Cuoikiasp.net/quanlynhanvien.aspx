<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quanlynhanvien.aspx.cs" Inherits="Cuoikiasp.net.quanlynhanvien" %>

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
            width: 415px;
         height: 22px;
     }
        .auto-style5 {
            width: 158px;
         height: 22px;
     }
        .auto-style7 {
            margin-left: 40px;
        }
        .auto-style8 {
         width: 124px;
         height: 26px;
     }
     .auto-style9 {
         height: 26px;
     }
     .auto-style10 {
         margin-left: 12px;
     }
     .auto-style12 {
         margin-left: 116px;
     }
     .auto-style13 {
         margin-left: 70px;
     }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <b> QUẢN LÝ TÀI KHOẢN</b>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtmadmin" runat="server" CssClass="auto-style13" placeholder="Nhập mã Admin" TextMode="Password"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="PassWord"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password" PLACEHOLDER="*********"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Tên Nhân Viên"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Địa Chỉ"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>    
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="Giới tính"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="16px">
                        <asp:ListItem Value="Nam">Nam</asp:ListItem>
                        <asp:ListItem Value="Nữ">Nữ</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label5" runat="server" Text="Số Điện Thoại"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9"></td>
            </tr>
              <tr>
                <td class="auto-style8">
                    <asp:Label ID="lable" runat="server" Text="Hình ảnh"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txthinh" runat="server" placeholder="Nhập tên ảnh"></asp:TextBox>
                </td>
                <td class="auto-style9"></td>
           </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnluu" runat="server" CssClass="auto-style12" Height="25px" Text="Lưu" OnClick="btnluu_Click" />
                    <asp:Button ID="btnxoa" runat="server" CssClass="auto-style10" Text="Xóa" OnClick="btnxoa_Click" />
                    <asp:Button ID="btntim" runat="server" Text="Tìm kiếm" OnClick="btntim_Click" />
                    <br />
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    </td>
        </table>
        <asp:GridView ID="GridView1" runat="server" Width="722px" Font-Bold="True" Font-Size="Medium" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="UserName">
                    <EditItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblusername" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên Nhân Viên">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblten" runat="server" Text='<%# Eval("TenNV") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Địa Chỉ">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbldiachi" runat="server" Text='<%# Eval("DiaChi") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Giới tính ">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblgioitinh" runat="server" Text='<%# Eval("GioiTinh") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Số điện thoại">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblsdt" runat="server" Text='<%# Eval("SoDienThoai") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ảnh">
                    <EditItemTemplate>
                        <asp:FileUpload ID="editfile" runat="server"  />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Picture") %>' Height="100px" Width="100px"  />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
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
