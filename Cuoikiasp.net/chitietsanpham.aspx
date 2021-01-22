<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chitietsanpham.aspx.cs" Inherits="Cuoikiasp.net.chitietsanpham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 45px;
        }
        .auto-style8 {
            width: 120px;
        }
        .auto-style14 {
            margin-left: 0px;
        }
        .auto-style16 {
            height: 30px;
            margin-left: 160px;
        }
        .auto-style17 {
            width: 120px;
            height: 30px;
        }
        .auto-style19 {
            width: 85px;
        }
        .auto-style20 {
            width: 85px;
            height: 30px;
        }
        .auto-style21 {
            width: 85px;
            height: 20px;
        }
        .auto-style22 {
            height: 20px;
        }
        .auto-style23 {
            width: 120px;
            height: 20px;
        }
        .auto-style24 {
            height: 30px;
        }
        .auto-style25 {
            width: 726px;
            height: 492px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style25">
        <div>
          <b>  CHI TIẾT SẢN PHẨM</b></div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style20">
                    <asp:Label ID="Label1" runat="server" Text="Mã sản phẩm"></asp:Label>
                </td>
                <td class="auto-style24">
                    <asp:TextBox ID="txtma" runat="server" CssClass="auto-style14"></asp:TextBox>
                
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                    <asp:Label ID="Label5" runat="server" Text="Camera"></asp:Label>
                &nbsp;
                    <asp:TextBox ID="txtcame" runat="server"></asp:TextBox>
               
                </td>
                     <asp:Image ID="Image2" runat="server" />
                <td class="auto-style17">
                    </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="Label2" runat="server" Text="Tên sản phẩm"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtten" runat="server" Height="22px"></asp:TextBox>
         
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
                    <asp:Label ID="Label6" runat="server" Text=" CPU"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtcpu" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style8">
                         &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:Label ID="Label3" runat="server" Text="Hệ điều hành"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="txthdh" runat="server"></asp:TextBox>
            
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
                    <asp:Label ID="Label9" runat="server" Text="RAM"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtram" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="Label4" runat="server" Text="Màn hình"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmanhinh" runat="server"></asp:TextBox>
              
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                    <asp:Label ID="Label8" runat="server" Text="PIN"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
                    <br />
                    </td>
            <tr>
                <td class="auto-style21">

                </td>
                <td class="auto-style22">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Text="Hình ảnh"></asp:Label>
                </td>
                <td>
                    <asp:Image ID="Image3" runat="server" Height="150px" Width="150px" />
                    <asp:Button ID="btnthem" runat="server" Text="Thêm chi tiết" OnClick="btnthem_Click" />
                    <asp:Button ID="btnsua" runat="server" Text="Sửa" Width="90px" OnClick="btnsua_Click" />
                    <asp:Button ID="btntim" runat="server" Text="Tìm" Width="63px" OnClick="btntim_Click" />
                <td>
                    &nbsp;<td>
                    &nbsp;<td>
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>&nbsp;</td>
       &nbsp;</td>
            </tr>
                    <tr>
                    
                    <br />
                    <asp:Label ID="Label10" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style23"></td>
            </tr>
            </table>
        <asp:GridView ID="GridView1" runat="server" CellPadding="7" Height="147px" Width="647px" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
                <asp:TemplateField HeaderText="Hình ảnh">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Picture") %>' Height="100px" Width="100px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </form>
</body>
</html>
