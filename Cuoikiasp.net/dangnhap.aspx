<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="Cuoikiasp.net.dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<style>
@import url('https://fonts.googleapis.com/css?family=Numans');

html,body{
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}
*{
    margin:0;
    padding:0;
    border:none;
    font-family: 'Open Sans', sans-serif;
}

body {
    overflow: hidden;
    background-color: #ededed;
}
.to {
    display: grid;
    grid-template-columns: repeat(12,1fr);
    grid-template-rows: minmax(100px,auto);
}
 
.form {
    border: 1px solid #80808000;
    grid-column: 6/9;
    grid-row: 3;
    height: 470px;
    width:300px;
    display: flex;
    flex-direction: column;
    align-items: center;
    position: relative;
    border-radius: 20px;
    box-shadow: 0px 0px 14px 0px grey;
    background-color: white;
}
h2 {
    margin-top: 50px;
    margin-bottom: 30px;
}
i.fab.fa-app-store-ios {
    display: block;
    margin-bottom: 50px;
    font-size: 28px;
}
 
label {
    margin-left: -126px;
    display: block;
    font-weight: lighter;
 
}
input{
    display: block;
    border-bottom: 2px solid #00BCD4;
    margin-top: 10px;
    margin-bottom: 10px;
    outline-style: none;
}
input[type="text"] {
    padding: 5px;
    width: 50%;
}
 input[type="password"] {
    padding: 5px;
    width: 50%;
}
input#submit {
    padding: 7px;
    width: 70%;
    border-radius: 10px;
    border: none;
    position: absolute;
    bottom: 90px;
    cursor: pointer;
    background: linear-gradient(to right, #fc00ff, #00dbde);
}
input#submit:hover{
 
    background: linear-gradient(to right, #fc466b, #3f5efb); 
}
 

    </style>
<head>
        <title>Đăng nhập</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Merriweather:300,400,400i|Noto+Sans:400,400i,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet">
    </head>
    <body>
		<form id="form1" runat="server">
        <div class="to">
            <div class="form">
                <h2>LOGIN</h2>
                 <i class="fab fa-app-store-ios"></i>
                <label style="margin-left: 80px;">UserName
                <asp:TextBox ID="txttk" runat="server"></asp:TextBox>
                 PassWord
                 <asp:TextBox ID="txtmk" runat="server" TextMode="Password"></asp:TextBox>
                </label>
                &nbsp;
                
    
                &nbsp;
                 <asp:Button ID="btndangnhap" runat="server" Text="ĐĂNG NHẬP" Height="41px" weight="90px" OnClick="btndangnhap_Click"/>
                 <a href="dangky.aspx">Đăng ký</a>
            </div>                
        </div>
		</form>
    </body>

</html> 