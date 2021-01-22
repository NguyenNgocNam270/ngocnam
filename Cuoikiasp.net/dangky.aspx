<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="Cuoikiasp.net.dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>
.button {
  background-color: blue;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
    .auto-style1 {
        width: 100%;
        height: 110px;
    }
    /*.auto-style4 {
        margin-left: 433;
    }*/
    .auto-style13 {
        height: 41px;
    }
    .auto-style14 {
        width: 146px;
        height: 41px;
    }
    .auto-style15 {
        height: 37px;
    }
    .auto-style16 {
        width: 146px;
        height: 37px;
    }
</style>
<form id="form2" runat="server">
<div class="container"> 
    <h1 class="text-center">Đăng ký thành viên</h1> 
 <div class="row"> 
    <div class="col-xs-12 col-sm-12 col-md-4 well well-sm col-md-offset-4"> 
   <legend><a href="#"><i class="glyphicon glyphicon-globe"></i></a> Nhập đầy đủ thông tin!
   </legend> 
   
     
      <table class="auto-style1">
          <tr>
              <td class="auto-style13"></td>
              <td class="auto-style14">
                  <asp:TextBox ID="txtuser" runat="server" CssClass="auto-style4" placeholder="UserName"></asp:TextBox>
              </td>
              <td class="auto-style13">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuser" ErrorMessage="Vui lòng nhập UserName"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style15"></td>
              <td class="auto-style16">
                  <asp:TextBox ID="txtpass" runat="server"  placeholder="PassWord" TextMode="Password"></asp:TextBox>
              </td>
              <td class="auto-style15">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="Vui lòng nhập PassWord"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style15"></td>
              <td class="auto-style16">
                  <asp:TextBox ID="txtnlpass" runat="server"  placeholder="Nhập lại PassWord" TextMode="Password" Height="22px"></asp:TextBox>
              </td>
              <td class="auto-style15">
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnlpass" ControlToValidate="txtpass" ErrorMessage="Mật khẩu nhập lại không trùng khớp"></asp:CompareValidator>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtnlpass" ErrorMessage="Nhập lại PassWord"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style15"></td>
              <td class="auto-style16">
                  <asp:TextBox ID="txtten" runat="server"  placeholder="Tên thành viên"></asp:TextBox>
              </td>
              <td class="auto-style15">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtten" ErrorMessage="Vui lòng nhập họ tên"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style15"></td>
              <td class="auto-style16">
                  <asp:TextBox ID="txtdiachi" runat="server"  placeholder="Địa chỉ"></asp:TextBox>
              </td>
              <td class="auto-style15">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtdiachi" ErrorMessage="Vui lòng nhập địa chỉ"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style15"></td>
              <td class="auto-style16">
                  <asp:TextBox ID="txtgioitinh" runat="server"  placeholder="Giới tính"></asp:TextBox>
              </td>
              <td class="auto-style15">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtgioitinh" ErrorMessage="Vui lòng nhập giới tính"></asp:RequiredFieldValidator>
              </td>      
          </tr>
          <tr>
              <td class="auto-style15"></td>
              <td class="auto-style16">
                  <asp:TextBox ID="txtsdt" runat="server"  placeholder="Số điện thoại"></asp:TextBox>
              </td>
              <td class="auto-style15">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtsdt" ErrorMessage="Nhập SĐT"></asp:RequiredFieldValidator>
              </td>      
          </tr>
           <tr>
              <td class="auto-style15"></td>
              <td class="auto-style16">
                  <asp:TextBox ID="txthinh" runat="server"  placeholder="Tên ảnh"></asp:TextBox>
              </td>
              <td class="auto-style15">
                  &nbsp;</td>      
          </tr>
           <tr>
              <td class="auto-style15"></td>
              <td class="auto-style16">
                  <asp:Button ID="txtdangky" runat="server" Text="ĐĂNG KÝ" Width="182px" OnClick="txtdangky_Click"></asp:Button>
                  <asp:Label ID="Label3" runat="server"></asp:Label>
              </td>
              <td class="auto-style15"></td>      
          </tr>
      </table>
  </div> 
 </div>
</div>
</form>
</html>
