﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menuquanly.aspx.cs" Inherits="Cuoikiasp.net.menuquanly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <style>
@import url(http://fonts.googleapis.com/css?family=Lato:300,400,700);
/* Starter CSS for Flyout Menu */
#cssmenu,
#cssmenu ul,
#cssmenu ul li,
#cssmenu ul ul {
  list-style: none;
  margin: 0;
  padding: 0;
  border: 0;
}
#cssmenu ul {
  position: relative;
  z-index: 597;
  float: left;
}
#cssmenu ul li {
  float: left;
  min-height: 1px;
  line-height: 1em;
  vertical-align: middle;
}
#cssmenu ul li.hover,
#cssmenu ul li:hover {
  position: relative;
  z-index: 599;
  cursor: default;
}
#cssmenu ul ul {
  margin-top: 1px;
  visibility: hidden;
  position: absolute;
  top: 1px;
  left: 99%;
  z-index: 598;
  width: 100%;
}
#cssmenu ul ul li {
  float: none;
}
#cssmenu ul ul ul {
  top: 1px;
  left: 99%;
}
#cssmenu ul li:hover > ul {
  visibility: visible;
}
#cssmenu ul li {
  float: none;
}
#cssmenu ul ul li {
  font-weight: normal;
}
/* Custom CSS Styles */
#cssmenu {
  font-family: 'Lato', sans-serif;
  font-size: 18px;
  width: 200px;
}
#cssmenu ul a,
#cssmenu ul a:link,
#cssmenu ul a:visited {
  display: block;
  color: #848889;
  text-decoration: none;
  font-weight: 300;
}
#cssmenu > ul {
  float: none;
}
#cssmenu ul {
  background: #fff;
}
#cssmenu > ul > li {
  border-left: 3px solid #d7d8da;
}
#cssmenu > ul > li > a {
  padding: 10px 20px;
}
#cssmenu > ul > li:hover {
  border-left: 3px solid #3dbd99;
}
#cssmenu ul li:hover > a {
  color: #3dbd99;
}
#cssmenu > ul > li:hover {
  background: #f6f6f6;
}
/* Sub Menu */
#cssmenu ul ul a:link,
#cssmenu ul ul a:visited {
  font-weight: 400;
  font-size: 14px;
}
#cssmenu ul ul {
  width: 180px;
  background: none;
  border-left: 100px solid transparent;
}
#cssmenu ul ul a {
  padding: 8px 0;
  border-bottom: 1px solid #eeeeee;
}
#cssmenu ul ul li {
  padding: 0 20px;
  background: #fff;
}
#cssmenu ul ul li:last-child {
  border-bottom: 3px solid #d7d8da;
  padding-bottom: 10px;
}
#cssmenu ul ul li:first-child {
  padding-top: 10px;
}
#cssmenu ul ul li:last-child > a {
  border-bottom: none;
}
#cssmenu ul ul li:first-child:after {
  content: '';
  display: block;
  width: 0;
  height: 0;
  position: absolute;
  left: -20px;
  top: 13px;
  border-left: 10px solid transparent;
  border-right: 10px solid #fff;
  border-bottom: 10px solid transparent;
  border-top: 10px solid transparent;
}
</style>
<html lang="en">
<head>
  <title>QUẢN LÝ ADMIN CÔNG TY </title>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>CSS MenuMaker</title>
</head>
<body>

<div id="cssmenu">
<ul>
   <li><a href="quanlydonhang.aspx"><span>QUẢN LÝ ĐƠN HÀNG</span></a></li>
   <li class="active has-sub"><a href="quanlysanpham.aspx"><span>QUẢN LÝ SẢN PHẨM</span></a>
   <ul><li class="has-sub"><a href="chitietsanpham.aspx"><span>Thông số kĩ thuật</span></a> </li></ul>
   </li>
   <li><a href="quanlykhachhang.aspx"><span>QUẢN LÝ KHÁCH HÀNG</span></a></li>
   <li><a href="quanlynhanvien.aspx"><span>QUẢN LÝ NHÂN VIÊN</span></a></li>
   <li class="last"><a href="dangnhap.aspx"><span>ĐĂNG XUẤT</span></a></li>
</ul>
</div>
</body>
</html>
