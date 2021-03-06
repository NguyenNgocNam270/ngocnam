USE [cuoikiasp.net]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 01/10/2021 23:06:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[UserName] [nchar](50) NOT NULL,
	[PassWord] [nchar](50) NULL,
	[TenNV] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[picture] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhanVien] ([UserName], [PassWord], [TenNV], [DiaChi], [GioiTinh], [SoDienThoai], [picture]) VALUES (N'NV1                                               ', N'NV1                                               ', N'', N'', N'', N'', N'pic/1.jpg')
INSERT [dbo].[NhanVien] ([UserName], [PassWord], [TenNV], [DiaChi], [GioiTinh], [SoDienThoai], [picture]) VALUES (N'NV10                                              ', N'nv10                                              ', N'Lý Tiểu Long', N'Trung Quốc', N'Nam', N'0336156100', NULL)
INSERT [dbo].[NhanVien] ([UserName], [PassWord], [TenNV], [DiaChi], [GioiTinh], [SoDienThoai], [picture]) VALUES (N'NV2                                               ', N'NV2                                               ', N'Châu Hiền Trân', N'Phu Cát-Bình Định', N'Nữ', N'0378712321', NULL)
INSERT [dbo].[NhanVien] ([UserName], [PassWord], [TenNV], [DiaChi], [GioiTinh], [SoDienThoai], [picture]) VALUES (N'NV3                                               ', N'NV3                                               ', N'Nguyễn Lê Phương', N'Cầu Bầ Di', N'Nam', N'0923110081', NULL)
INSERT [dbo].[NhanVien] ([UserName], [PassWord], [TenNV], [DiaChi], [GioiTinh], [SoDienThoai], [picture]) VALUES (N'NV4                                               ', N'NV4                                               ', N'Trần Trương Vi', N'Hoài Nhơn-Bình Định', N'Nữ', N'0982412011', NULL)
INSERT [dbo].[NhanVien] ([UserName], [PassWord], [TenNV], [DiaChi], [GioiTinh], [SoDienThoai], [picture]) VALUES (N'NV5                                               ', N'NV5                                               ', N'Phương Nhật', N'Tuy An- Phú Yên', N'Nữ', N'0859992393', NULL)
INSERT [dbo].[NhanVien] ([UserName], [PassWord], [TenNV], [DiaChi], [GioiTinh], [SoDienThoai], [picture]) VALUES (N'NV6                                               ', N'NV6                                               ', N'Le Cong Tri', N'Phú Yên', N'Nam', N'0982640106', NULL)
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 01/10/2021 23:06:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoai] [nchar](10) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[HangSanXuat] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'LT1       ', N'LAPTOP', N'DELL')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'LT2       ', N'LAPTOP', N'APPLE')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'LT3       ', N'LAPTOP', N'ASUS')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'LT4       ', N'LAPTOP', N'HP')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'LT5       ', N'LAPTOP', N'LENOVO')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'LT6       ', N'LAPTOP', N'SAMSUNG')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'SMP1      ', N'SMARTPHONE', N'APPLE')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'SMP2      ', N'SMARTPHONE', N'SAMSUNG')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'SMP3      ', N'SMARTPHONE', N'NOKIA')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'SMP4      ', N'SMARTPHONE', N'BLACKBERRY')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'SMP5      ', N'SMARTPHONE', N'HUAWEI')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'SMP6      ', N'SMARTPHONE', N'OPPO')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'TABL1     ', N'TABLET', N'APPLE')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'TABL2     ', N'TABLET', N'SAMSUNG')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'TABL3     ', N'TABLET', N'LENOVO')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'TABL4     ', N'TABLET', N'MOBELL')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'TABL5     ', N'TABLET', N'HUAWEI')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [HangSanXuat]) VALUES (N'TABL6     ', N'TABLET', N'XIAOMI')
/****** Object:  Table [dbo].[KhachHang]    Script Date: 01/10/2021 23:06:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [char](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDienThoai] [char](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'KH2       ', N'Đặng Long', N'An Chấn-Phú Yên', N'0912378691                                        ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'KH3       ', N'Lê Duy Anh', N'Sơn Hòa-Phú Yên', N'0982112021                                        ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'KH4       ', N'Phạm Anh Thảo', N'Phú Yên', N'0982640106                                        ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'KH5       ', N'Nguyễn Ngọc Đức', N'Quy Nhơn', N'0857612381                                        ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai]) VALUES (N'KH6       ', N'Hoàng Văn Tới ', N'Quảng Trị', N'0039821312                                        ')
/****** Object:  Table [dbo].[SanPham]    Script Date: 01/10/2021 23:06:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nchar](10) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[MaLoai] [nchar](10) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[picture] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [SoLuong], [DonGia], [picture]) VALUES (N'123       ', N'qqq', N'LT1       ', -1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [SoLuong], [DonGia], [picture]) VALUES (N'SP1       ', N'Iphone 11 Pro Max 256GB', N'SMP1      ', 3, 37990000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [SoLuong], [DonGia], [picture]) VALUES (N'SP10      ', N'Huawei P30 Lite', N'SMP5      ', 10, 6020000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [SoLuong], [DonGia], [picture]) VALUES (N'SP2       ', N'Apple MacBook Air 2018', N'LT2       ', 3, 35900000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [SoLuong], [DonGia], [picture]) VALUES (N'SP3       ', N'iPad 10.2 inch Wifi 128GB', N'TABL1     ', 8, 8900000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [SoLuong], [DonGia], [picture]) VALUES (N'SP4       ', N'BlackBerry KEY2 LE', N'SMP4      ', 1, 7900000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [SoLuong], [DonGia], [picture]) VALUES (N'SP5       ', N'Samsung Galaxy A30s', N'SMP2      ', 5, 9000000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [SoLuong], [DonGia], [picture]) VALUES (N'SP6       ', N'Lenovo Ideapad S145 15IWL', N'LT5       ', 6, 1000000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [SoLuong], [DonGia], [picture]) VALUES (N'SP7       ', N'Samsung Galaxy Tab S3', N'TABL2     ', 6, 9000000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [SoLuong], [DonGia], [picture]) VALUES (N'SP8       ', N'Xiaomi Mi Pad 4', N'TABL6     ', 2, 4000500, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [SoLuong], [DonGia], [picture]) VALUES (N'SP9       ', N'HP Pavilion x360 ', N'LT4       ', 5, 12390000, NULL)
/****** Object:  Table [dbo].[HoaDon]    Script Date: 01/10/2021 23:06:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[SoHoaDon] [nchar](10) NOT NULL,
	[MaKH] [char](10) NULL,
	[MaSP] [nchar](10) NULL,
	[NgayBan] [nvarchar](50) NULL,
	[SoLuongBan] [int] NULL,
	[DonGia] [int] NULL,
	[TienThanhToan] [int] NULL,
	[UserName] [nchar](50) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[SoHoaDon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[HoaDon] ([SoHoaDon], [MaKH], [MaSP], [NgayBan], [SoLuongBan], [DonGia], [TienThanhToan], [UserName]) VALUES (N'SHD2      ', N'KH2       ', N'SP2       ', N'10/10/2019', 1, 35900000, 35900000, N'NV2                                               ')
INSERT [dbo].[HoaDon] ([SoHoaDon], [MaKH], [MaSP], [NgayBan], [SoLuongBan], [DonGia], [TienThanhToan], [UserName]) VALUES (N'SHD3      ', N'KH3       ', N'SP3       ', N'17/10/2018', 1, 8900000, 8900000, N'NV3                                               ')
INSERT [dbo].[HoaDon] ([SoHoaDon], [MaKH], [MaSP], [NgayBan], [SoLuongBan], [DonGia], [TienThanhToan], [UserName]) VALUES (N'SHD4      ', N'KH4       ', N'SP4       ', N'9/12/2017', 3, 7900000, 0, N'NV4                                               ')
INSERT [dbo].[HoaDon] ([SoHoaDon], [MaKH], [MaSP], [NgayBan], [SoLuongBan], [DonGia], [TienThanhToan], [UserName]) VALUES (N'SHD5      ', N'KH2       ', N'SP4       ', N'17/9/2018', 1, 1000000, 10000000, N'NV6                                               ')
/****** Object:  Table [dbo].[ChiTietSanPham]    Script Date: 01/10/2021 23:06:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPham](
	[MaSP] [nchar](10) NOT NULL,
	[HeDieuHanh] [nvarchar](50) NULL,
	[ManHinh] [nvarchar](50) NULL,
	[Camera] [nvarchar](50) NULL,
	[CPU] [nvarchar](50) NULL,
	[RAM] [nvarchar](50) NULL,
	[DungLuongPin] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThongSo] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietSanPham] ([MaSP], [HeDieuHanh], [ManHinh], [Camera], [CPU], [RAM], [DungLuongPin]) VALUES (N'SP1       ', N'iOS 13', N'OLED  6.5''', N'12 MP', N'Apple A13 Bionic 6 nhân', N'128 GB', N'3969 mAh, có sạc nhanh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [HeDieuHanh], [ManHinh], [Camera], [CPU], [RAM], [DungLuongPin]) VALUES (N'SP10      ', N'Android 9.0 (Pie)', N'IPS LCD, 6.15", Full HD+', N'32 MP', N'Kirin 710', N'6 GB', N'3340 mAh, có sạc nhanh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [HeDieuHanh], [ManHinh], [Camera], [CPU], [RAM], [DungLuongPin]) VALUES (N'SP2       ', N'iOS 13', N'13.3 inchs, Retina (2560 x 1600 Pixels)', N'8 MP', N'Intel, Core i5', N'8 GB', N'32.4 Wh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [HeDieuHanh], [ManHinh], [Camera], [CPU], [RAM], [DungLuongPin]) VALUES (N'SP3       ', N'iOS 13', N'LED backlit LCD, 10.2', N'8 MP', N'Apple A10 Fusion 4 nhân, 2.34 GHz', N'8 GB', N'32.4 Wh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [HeDieuHanh], [ManHinh], [Camera], [CPU], [RAM], [DungLuongPin]) VALUES (N'SP4       ', N'Android 8.1 (Oreo)', N'IPS LCD, 4.5', N'8 MP', N'Snapdragon 636 8 nhân', N'4 GB', N'3000 mAh, có sạc nhanh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [HeDieuHanh], [ManHinh], [Camera], [CPU], [RAM], [DungLuongPin]) VALUES (N'SP5       ', N'Android 8.1 (Oreo)', N'Super AMOLE, 6.4', N'12 MP', N'Snapdragon 636 8 nhân', N'8 GB', N'3000 mAh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [HeDieuHanh], [ManHinh], [Camera], [CPU], [RAM], [DungLuongPin]) VALUES (N'SP6       ', N'Windows 10 Home SL', N'NULL15.6 inch, Full HD (1920 x 1080)', N'8 MP', N'Intel Core i7 Coffee Lake', N'8 GB', N'khoảng 6 giờ')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [HeDieuHanh], [ManHinh], [Camera], [CPU], [RAM], [DungLuongPin]) VALUES (N'SP7       ', N'Android 7', N'9.7 inches, độ phân giải 2K 2048*1536', N'12 MP', N' Snapdragon 820', N'4 GB', N'6000 mAh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [HeDieuHanh], [ManHinh], [Camera], [CPU], [RAM], [DungLuongPin]) VALUES (N'SP8       ', N'Android 8.1', N'8.0 inches', N'13 MP, Selfie: 5 MP', N'Snapdragon 660', N'4 GB', N'6000 mAh')
INSERT [dbo].[ChiTietSanPham] ([MaSP], [HeDieuHanh], [ManHinh], [Camera], [CPU], [RAM], [DungLuongPin]) VALUES (N'SP9       ', N'Win 10 home', N'14 Inch Full HD', N'1MP, HP TrueVision Webcam', N'Intel Core i3 8145U', N'4 GB ', N'3 Cell')
/****** Object:  ForeignKey [FK_ChiTietSanPham_SanPham]    Script Date: 01/10/2021 23:06:59 ******/
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_ChiTietSanPham_SanPham]
GO
/****** Object:  ForeignKey [FK_HoaDon_KhachHang1]    Script Date: 01/10/2021 23:06:59 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang1] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang1]
GO
/****** Object:  ForeignKey [FK_HoaDon_NhanVien1]    Script Date: 01/10/2021 23:06:59 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien1] FOREIGN KEY([UserName])
REFERENCES [dbo].[NhanVien] ([UserName])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien1]
GO
/****** Object:  ForeignKey [FK_HoaDon_SanPham1]    Script Date: 01/10/2021 23:06:59 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_SanPham1] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_SanPham1]
GO
/****** Object:  ForeignKey [FK_SanPham_LoaiSanPham1]    Script Date: 01/10/2021 23:06:59 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham1] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPham] ([MaLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham1]
GO
