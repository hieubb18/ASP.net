USE [ShoesStore]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 23/03/2019 10:44:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMIN](
	[UserAdmin] [varchar](30) NOT NULL,
	[PassAdmin] [varchar](30) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY CLUSTERED 
(
	[UserAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITIETDONTHANG]    Script Date: 23/03/2019 10:44:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONTHANG](
	[MaDonHang] [int] NOT NULL,
	[MaGiay] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CTDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 23/03/2019 10:44:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Dathanhtoan] [bit] NULL,
	[Tinhtranggiaohang] [bit] NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaygiao] [datetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GIAY]    Script Date: 23/03/2019 10:44:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIAY](
	[MaGiay] [int] IDENTITY(1,1) NOT NULL,
	[TenGiay] [nvarchar](100) NOT NULL,
	[Giaban] [decimal](18, 0) NULL,
	[Mota] [nvarchar](max) NULL,
	[Anhbia] [varchar](50) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[Soluongton] [int] NULL,
	[MaLoaiGiay] [int] NULL,
	[MaNSX] [int] NULL,
 CONSTRAINT [PK_Giay] PRIMARY KEY CLUSTERED 
(
	[MaGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 23/03/2019 10:44:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Taikhoan] [varchar](50) NULL,
	[Matkhau] [varchar](50) NOT NULL,
	[Email] [varchar](100) NULL,
	[DiachiKH] [nvarchar](200) NULL,
	[DienthoaiKH] [varchar](50) NULL,
	[Ngaysinh] [datetime] NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAIGIAY]    Script Date: 23/03/2019 10:44:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIGIAY](
	[MaLoaiGiay] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiGiay] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiGiay] PRIMARY KEY CLUSTERED 
(
	[MaLoaiGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHASANXUAT]    Script Date: 23/03/2019 10:44:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHASANXUAT](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ADMIN] ([UserAdmin], [PassAdmin], [Hoten]) VALUES (N'Admin', N'conghieu', N'Lương Công Hiếu')
INSERT [dbo].[ADMIN] ([UserAdmin], [PassAdmin], [Hoten]) VALUES (N'User', N'123456', N'Đạt Lùn')
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGiay], [Soluong], [Dongia]) VALUES (1, 8, 1, CAST(250000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGiay], [Soluong], [Dongia]) VALUES (2, 4, 1, CAST(590000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGiay], [Soluong], [Dongia]) VALUES (3, 9, 100, CAST(280000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1, 0, 0, CAST(N'2019-03-20 15:56:54.683' AS DateTime), CAST(N'2019-03-21 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (2, 0, 0, CAST(N'2019-03-21 11:08:55.393' AS DateTime), CAST(N'2019-03-23 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (3, 0, 0, CAST(N'2019-03-23 10:23:16.463' AS DateTime), CAST(N'2019-03-20 00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
SET IDENTITY_INSERT [dbo].[GIAY] ON 

INSERT [dbo].[GIAY] ([MaGiay], [TenGiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiGiay], [MaNSX]) VALUES (1, N'Nike Lunar Pren', CAST(3500000 AS Decimal(18, 0)), N'Giày Nike chính hãng, giày chạy bộ Nike Lunar Apparent, mã sản phẩm ….. Thiết kế đơn giản, công nghệ đỉnh cao,ố rất quan trọng.Với gót Lunarlon,', N'p1.jpg', CAST(N'2019-05-25 00:00:00.000' AS DateTime), 100, 1, 1)
INSERT [dbo].[GIAY] ([MaGiay], [TenGiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiGiay], [MaNSX]) VALUES (2, N'Nike Air zoom', CAST(2500000 AS Decimal(18, 0)), N'Giày Nike chính hãng Nike Air Zoom Winflo 5, dòng sản phẩm mới, giày Nike Winflo 5 mã sản phẩm AA7406-401, siêu phẩm trong tầm giá rất phải chăng. ', N'p2.jpg', CAST(N'2019-05-25 00:00:00.000' AS DateTime), 25, 1, 1)
INSERT [dbo].[GIAY] ([MaGiay], [TenGiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiGiay], [MaNSX]) VALUES (3, N'Adidas Smate zoo', CAST(3000000 AS Decimal(18, 0)), N'Giày Adidas Stan Smith tối giản là diện mạo xác định của phong cách tòa án. Những đôi giày này đặt một sự thay đổi tinh tế trên hình bóng cổ điển. ', N'p3.jpg', CAST(N'2019-05-25 00:00:00.000' AS DateTime), 25, 2, 2)
INSERT [dbo].[GIAY] ([MaGiay], [TenGiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiGiay], [MaNSX]) VALUES (4, N'Chuck 1970s Replica Trắng Thấp', CAST(590000 AS Decimal(18, 0)), N'Chuck 1970s Replica Đen Trắng Cao hàng chuẩn Rep

 

Chất liệu: vải ', N'p4.jpg', CAST(N'2019-05-25 00:00:00.000' AS DateTime), 20, 3, 3)
INSERT [dbo].[GIAY] ([MaGiay], [TenGiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiGiay], [MaNSX]) VALUES (5, N'Chuck 1970s Replica đen trắng', CAST(590000 AS Decimal(18, 0)), N'Chuck 1970s Replica Trắng Thấp hàng chuẩn Rep

 

Chất liệu: vải

 

Size: 36 đến 44', N'p5.jpg', CAST(N'2019-05-25 00:00:00.000' AS DateTime), 16, 3, 3)
INSERT [dbo].[GIAY] ([MaGiay], [TenGiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiGiay], [MaNSX]) VALUES (6, N'Chuck 1970s Replica Vàng Cao', CAST(590000 AS Decimal(18, 0)), N'Chuck 1970s Replica Vàng Cao hàng chuẩn Rep

 

Chất liệu: vải

 

Size: 36 đến 44', N'p6.jpg', CAST(N'2019-05-25 00:00:00.000' AS DateTime), 26, 3, 3)
INSERT [dbo].[GIAY] ([MaGiay], [TenGiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiGiay], [MaNSX]) VALUES (8, N'Giày Vans Old School all black F1', CAST(250000 AS Decimal(18, 0)), N'Giày Vans Old School all black hàng F1

 

Chất liệu: vải

 

Size: 36 đến 44', N'p7.jpg', CAST(N'2019-05-25 00:00:00.000' AS DateTime), 28, 7, 7)
INSERT [dbo].[GIAY] ([MaGiay], [TenGiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoaiGiay], [MaNSX]) VALUES (9, N'Giày Vans Old School đen trắng da lộn F1', CAST(280000 AS Decimal(18, 0)), N'Giày Vans old Skool là đôi giày đã được thiết kế từ lâu nhưng thời gian gần đây trào lưu giày vans old skool lại quay trở lại.
Được phân biết với hàng F1, đôi giày SF này được cấu tạo phần đuôi và ', N'p8.jpg', CAST(N'2019-05-25 00:00:00.000' AS DateTime), 22, 7, 7)
SET IDENTITY_INSERT [dbo].[GIAY] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (1, N'Lương Công Hiếu', N'luonghieu184', N'conghieu', N'luonghieu184@gmail.com', N'160 Lã xuân oai, Tăng nhơn phú A, Quận 9', N'0369173043', CAST(N'1998-04-12 00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (2, N'Phạm Quốc Tôn', N'tonpham', N'123456', N'oham@cac.com', N'', N'159', CAST(N'2019-03-22 00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (3, N'Nguyên Van B', N'nguyena', N'', N'oham@casc.com', N'', N'123', CAST(N'2019-03-29 00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (4, N'Lương Công Chúa', N'luonghieu18444', N'conghieu', N'conghieu@gmailcom', N'conghieu', N'0123123', CAST(N'2019-03-11 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[LOAIGIAY] ON 

INSERT [dbo].[LOAIGIAY] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (1, N'Nike')
INSERT [dbo].[LOAIGIAY] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (2, N'Adidas')
INSERT [dbo].[LOAIGIAY] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (3, N'Converse')
INSERT [dbo].[LOAIGIAY] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (4, N'Balenciaga')
INSERT [dbo].[LOAIGIAY] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (5, N'New Balance')
INSERT [dbo].[LOAIGIAY] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (6, N'Puma')
INSERT [dbo].[LOAIGIAY] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (7, N'Vans')
INSERT [dbo].[LOAIGIAY] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (8, N'Air Jordan')
INSERT [dbo].[LOAIGIAY] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (9, N'Reebok')
INSERT [dbo].[LOAIGIAY] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (10, N'Gucci')
SET IDENTITY_INSERT [dbo].[LOAIGIAY] OFF
SET IDENTITY_INSERT [dbo].[NHASANXUAT] ON 

INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (1, N'Vietnam')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (2, N'Mỹ')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (3, N'Thái lan')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (4, N'Nhật bản')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (5, N'Không cập nhật')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (6, N'Không cập nhật')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (7, N'Không cập nhật')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (8, N'Không cập nhật')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (9, N'Không cập nhật')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX]) VALUES (10, N'Không cập nhật')
SET IDENTITY_INSERT [dbo].[NHASANXUAT] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KHACHHAN__7FB3F64FD853ED6A]    Script Date: 23/03/2019 10:44:13 AM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KHACHHAN__A9D10534098C0F60]    Script Date: 23/03/2019 10:44:13 AM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_Khachhang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_Khachhang]
GO
ALTER TABLE [dbo].[GIAY]  WITH CHECK ADD  CONSTRAINT [FK_LoaiGiay] FOREIGN KEY([MaLoaiGiay])
REFERENCES [dbo].[LOAIGIAY] ([MaLoaiGiay])
GO
ALTER TABLE [dbo].[GIAY] CHECK CONSTRAINT [FK_LoaiGiay]
GO
ALTER TABLE [dbo].[GIAY]  WITH CHECK ADD  CONSTRAINT [FK_Nhasanxuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NHASANXUAT] ([MaNSX])
GO
ALTER TABLE [dbo].[GIAY] CHECK CONSTRAINT [FK_Nhasanxuat]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD CHECK  (([Dongia]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD CHECK  (([Soluong]>(0)))
GO
ALTER TABLE [dbo].[GIAY]  WITH CHECK ADD CHECK  (([Giaban]>=(0)))
GO
