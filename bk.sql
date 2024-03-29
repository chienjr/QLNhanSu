USE [master]
GO
/****** Object:  Database [QLNhanSu]    Script Date: 6/11/2023 11:52:04 PM ******/
CREATE DATABASE [QLNhanSu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLNhanSu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLNhanSu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLNhanSu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLNhanSu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLNhanSu] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNhanSu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNhanSu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNhanSu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNhanSu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNhanSu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNhanSu] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNhanSu] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLNhanSu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNhanSu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNhanSu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNhanSu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNhanSu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNhanSu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNhanSu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNhanSu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNhanSu] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLNhanSu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNhanSu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNhanSu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNhanSu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNhanSu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNhanSu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNhanSu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNhanSu] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLNhanSu] SET  MULTI_USER 
GO
ALTER DATABASE [QLNhanSu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNhanSu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNhanSu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNhanSu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLNhanSu] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLNhanSu] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLNhanSu] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLNhanSu] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLNhanSu]
GO
/****** Object:  Table [dbo].[tblBaoHiemXH]    Script Date: 6/11/2023 11:52:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBaoHiemXH](
	[MaBHXH] [int] IDENTITY(1,1) NOT NULL,
	[NgayCap] [datetime] NULL,
	[NoiCap] [nvarchar](50) NULL,
	[NoiDKKCB] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBHXH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChuyenMon]    Script Date: 6/11/2023 11:52:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChuyenMon](
	[MaCM] [int] IDENTITY(1,1) NOT NULL,
	[TenCM] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDonVi]    Script Date: 6/11/2023 11:52:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDonVi](
	[MaDV] [int] IDENTITY(1,1) NOT NULL,
	[TenDV] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLuong]    Script Date: 6/11/2023 11:52:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLuong](
	[MaLuong] [int] IDENTITY(1,1) NOT NULL,
	[MaCM] [int] NULL,
	[MaTD] [int] NULL,
	[MaDV] [int] NULL,
	[LuongCoBan] [int] NULL,
	[LuongCBMoi] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[NgaySua] [datetime] NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblThang]    Script Date: 6/11/2023 11:52:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThang](
	[MaThang] [int] IDENTITY(1,1) NOT NULL,
	[TenThang] [nvarchar](200) NOT NULL,
	[GhiChu] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblThongKeLuong]    Script Date: 6/11/2023 11:52:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThongKeLuong](
	[MaTKLuong] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NOT NULL,
	[MaThang] [int] NOT NULL,
	[LuongCoBan] [int] NULL,
	[ThuePhaiDong] [int] NULL,
	[Thuong] [int] NULL,
	[Phat] [int] NULL,
	[TongLuong] [int] NULL,
	[GhiChu] [nvarchar](200) NULL,
	[NgayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTKLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblThueThuNhapCaNhan]    Script Date: 6/11/2023 11:52:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThueThuNhapCaNhan](
	[MaThue] [int] IDENTITY(1,1) NOT NULL,
	[CoQuanQuanLyThue] [nvarchar](100) NULL,
	[MaLuong] [int] NULL,
	[SoTien] [int] NULL,
	[NgayDangKi] [datetime] NULL,
	[GhiChu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTrinhDo]    Script Date: 6/11/2023 11:52:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTrinhDo](
	[MaTD] [int] IDENTITY(1,1) NOT NULL,
	[TenTrinhDo] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTTNhanVien]    Script Date: 6/11/2023 11:52:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTTNhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](30) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[CMND] [char](12) NULL,
	[NoiSinh] [nchar](10) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [char](12) NULL,
	[MaTD] [int] NULL,
	[MaBHXH] [int] NULL,
	[MaLuong] [int] NULL,
	[MaDV] [int] NULL,
	[MaThue] [int] NULL,
	[MaCM] [int] NULL,
	[Email] [nvarchar](100) NULL,
	[Password] [nvarchar](30) NULL,
	[PhanQuyen] [int] NOT NULL,
	[Anh] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](100) NULL,
	[DanToc] [nvarchar](30) NULL,
	[TonGiao] [nvarchar](30) NULL,
	[QuocTich] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblBaoHiemXH] ON 

INSERT [dbo].[tblBaoHiemXH] ([MaBHXH], [NgayCap], [NoiCap], [NoiDKKCB], [GhiChu]) VALUES (1, CAST(N'2016-05-22T00:00:00.000' AS DateTime), N'TP HCM', N'BV Tân Phú', N'Không có')
INSERT [dbo].[tblBaoHiemXH] ([MaBHXH], [NgayCap], [NoiCap], [NoiDKKCB], [GhiChu]) VALUES (2, CAST(N'2016-05-09T00:00:00.000' AS DateTime), N'TP HCM', N'BV Tân Phú', N'Không có')
INSERT [dbo].[tblBaoHiemXH] ([MaBHXH], [NgayCap], [NoiCap], [NoiDKKCB], [GhiChu]) VALUES (3, CAST(N'2016-10-06T00:00:00.000' AS DateTime), N'TP HCM', N'BV Chợ Rẫy', N'Không có')
INSERT [dbo].[tblBaoHiemXH] ([MaBHXH], [NgayCap], [NoiCap], [NoiDKKCB], [GhiChu]) VALUES (4, CAST(N'2016-05-18T00:00:00.000' AS DateTime), N'TP HCM', N'BV Nhi Đồng', N'Không có')
INSERT [dbo].[tblBaoHiemXH] ([MaBHXH], [NgayCap], [NoiCap], [NoiDKKCB], [GhiChu]) VALUES (5, CAST(N'2016-01-01T00:00:00.000' AS DateTime), N'TP HCM', N'BV Thống Nhất', N'BV Thống Nhất')
SET IDENTITY_INSERT [dbo].[tblBaoHiemXH] OFF
GO
SET IDENTITY_INSERT [dbo].[tblChuyenMon] ON 

INSERT [dbo].[tblChuyenMon] ([MaCM], [TenCM], [GhiChu]) VALUES (1, N'Bán Hàng', N'Không')
INSERT [dbo].[tblChuyenMon] ([MaCM], [TenCM], [GhiChu]) VALUES (2, N'CEO', N'Không')
INSERT [dbo].[tblChuyenMon] ([MaCM], [TenCM], [GhiChu]) VALUES (3, N'Kế Toán', N'Không')
INSERT [dbo].[tblChuyenMon] ([MaCM], [TenCM], [GhiChu]) VALUES (4, N'Quản Lý', N'Không')
SET IDENTITY_INSERT [dbo].[tblChuyenMon] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDonVi] ON 

INSERT [dbo].[tblDonVi] ([MaDV], [TenDV], [GhiChu]) VALUES (1, N'Phòng Thủ Kho', N'Không')
INSERT [dbo].[tblDonVi] ([MaDV], [TenDV], [GhiChu]) VALUES (2, N'Phòng Tổ chức lao động', N'Không')
INSERT [dbo].[tblDonVi] ([MaDV], [TenDV], [GhiChu]) VALUES (3, N'Phòng Kế toán - Tài chính', N'Không')
INSERT [dbo].[tblDonVi] ([MaDV], [TenDV], [GhiChu]) VALUES (4, N'Phòng Vật tư', N'Không')
INSERT [dbo].[tblDonVi] ([MaDV], [TenDV], [GhiChu]) VALUES (5, N'Phòng Kế hoạch - Tiêu thụ', N'Không')
INSERT [dbo].[tblDonVi] ([MaDV], [TenDV], [GhiChu]) VALUES (6, N'Phòng Điều hành sản xuất', N'Không')
INSERT [dbo].[tblDonVi] ([MaDV], [TenDV], [GhiChu]) VALUES (7, N'Phòng Kinh Doanh', N'Không')
SET IDENTITY_INSERT [dbo].[tblDonVi] OFF
GO
SET IDENTITY_INSERT [dbo].[tblLuong] ON 

INSERT [dbo].[tblLuong] ([MaLuong], [MaCM], [MaTD], [MaDV], [LuongCoBan], [LuongCBMoi], [NgayNhap], [NgaySua], [GhiChu]) VALUES (1, 1, 1, 1, 45000000, 0, CAST(N'2016-05-22T00:00:00.000' AS DateTime), CAST(N'2016-05-22T00:00:00.000' AS DateTime), N'Không')
INSERT [dbo].[tblLuong] ([MaLuong], [MaCM], [MaTD], [MaDV], [LuongCoBan], [LuongCBMoi], [NgayNhap], [NgaySua], [GhiChu]) VALUES (2, 2, 2, 2, 10000000, 15000000, CAST(N'2016-05-09T00:00:00.000' AS DateTime), CAST(N'2016-05-10T00:00:00.000' AS DateTime), N'Lên Chức')
INSERT [dbo].[tblLuong] ([MaLuong], [MaCM], [MaTD], [MaDV], [LuongCoBan], [LuongCBMoi], [NgayNhap], [NgaySua], [GhiChu]) VALUES (3, 3, 1, 3, 6000000, 12000000, CAST(N'2016-05-09T00:00:00.000' AS DateTime), CAST(N'2016-05-09T00:00:00.000' AS DateTime), N'Xấu trai')
INSERT [dbo].[tblLuong] ([MaLuong], [MaCM], [MaTD], [MaDV], [LuongCoBan], [LuongCBMoi], [NgayNhap], [NgaySua], [GhiChu]) VALUES (4, 4, 1, 4, 8000000, 0, CAST(N'2016-01-01T00:00:00.000' AS DateTime), CAST(N'2016-01-01T00:00:00.000' AS DateTime), N'Không')
SET IDENTITY_INSERT [dbo].[tblLuong] OFF
GO
SET IDENTITY_INSERT [dbo].[tblThang] ON 

INSERT [dbo].[tblThang] ([MaThang], [TenThang], [GhiChu]) VALUES (1, N'Tháng 1', N'Không')
INSERT [dbo].[tblThang] ([MaThang], [TenThang], [GhiChu]) VALUES (2, N'Tháng 2', N'Không')
INSERT [dbo].[tblThang] ([MaThang], [TenThang], [GhiChu]) VALUES (3, N'Tháng 3', N'Không')
INSERT [dbo].[tblThang] ([MaThang], [TenThang], [GhiChu]) VALUES (4, N'Tháng 4', N'Không')
INSERT [dbo].[tblThang] ([MaThang], [TenThang], [GhiChu]) VALUES (5, N'Tháng 5', N'Không')
INSERT [dbo].[tblThang] ([MaThang], [TenThang], [GhiChu]) VALUES (6, N'Tháng 6', N'Không')
INSERT [dbo].[tblThang] ([MaThang], [TenThang], [GhiChu]) VALUES (7, N'Tháng 7', N'Không')
INSERT [dbo].[tblThang] ([MaThang], [TenThang], [GhiChu]) VALUES (8, N'Tháng 8', N'Không')
INSERT [dbo].[tblThang] ([MaThang], [TenThang], [GhiChu]) VALUES (9, N'Tháng 9', N'Không')
INSERT [dbo].[tblThang] ([MaThang], [TenThang], [GhiChu]) VALUES (10, N'Tháng 10', N'Không')
INSERT [dbo].[tblThang] ([MaThang], [TenThang], [GhiChu]) VALUES (11, N'Tháng 11', N'Không')
INSERT [dbo].[tblThang] ([MaThang], [TenThang], [GhiChu]) VALUES (12, N'Tháng 12', N'Không')
SET IDENTITY_INSERT [dbo].[tblThang] OFF
GO
SET IDENTITY_INSERT [dbo].[tblThongKeLuong] ON 

INSERT [dbo].[tblThongKeLuong] ([MaTKLuong], [MaNV], [MaThang], [LuongCoBan], [ThuePhaiDong], [Thuong], [Phat], [TongLuong], [GhiChu], [NgayTao]) VALUES (1, 3, 5, 6000000, 350000, 200000, 100000, 5750000, N'Đi muộn 2 buổi', CAST(N'2023-05-30T13:20:45.577' AS DateTime))
INSERT [dbo].[tblThongKeLuong] ([MaTKLuong], [MaNV], [MaThang], [LuongCoBan], [ThuePhaiDong], [Thuong], [Phat], [TongLuong], [GhiChu], [NgayTao]) VALUES (2, 4, 6, 8000000, 550000, 100000, 100000, 7450000, N'Không', CAST(N'2023-05-30T13:47:46.000' AS DateTime))
INSERT [dbo].[tblThongKeLuong] ([MaTKLuong], [MaNV], [MaThang], [LuongCoBan], [ThuePhaiDong], [Thuong], [Phat], [TongLuong], [GhiChu], [NgayTao]) VALUES (3, 3, 7, 6000000, 350000, 0, 0, 5650000, NULL, CAST(N'2023-05-30T13:56:36.000' AS DateTime))
INSERT [dbo].[tblThongKeLuong] ([MaTKLuong], [MaNV], [MaThang], [LuongCoBan], [ThuePhaiDong], [Thuong], [Phat], [TongLuong], [GhiChu], [NgayTao]) VALUES (4, 2, 4, 10000000, 750000, 0, 0, 9250000, NULL, CAST(N'2023-05-30T13:58:14.000' AS DateTime))
INSERT [dbo].[tblThongKeLuong] ([MaTKLuong], [MaNV], [MaThang], [LuongCoBan], [ThuePhaiDong], [Thuong], [Phat], [TongLuong], [GhiChu], [NgayTao]) VALUES (5, 1, 1, 45000000, 8000000, 0, 0, 37000000, NULL, CAST(N'2023-05-30T13:59:26.470' AS DateTime))
INSERT [dbo].[tblThongKeLuong] ([MaTKLuong], [MaNV], [MaThang], [LuongCoBan], [ThuePhaiDong], [Thuong], [Phat], [TongLuong], [GhiChu], [NgayTao]) VALUES (6, 1, 3, 45000000, 8000000, 100000, 0, 37100000, NULL, CAST(N'2023-06-11T20:19:01.257' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblThongKeLuong] OFF
GO
SET IDENTITY_INSERT [dbo].[tblThueThuNhapCaNhan] ON 

INSERT [dbo].[tblThueThuNhapCaNhan] ([MaThue], [CoQuanQuanLyThue], [MaLuong], [SoTien], [NgayDangKi], [GhiChu]) VALUES (1, N'Cục Thuế Hà Nội', 1, 8000000, CAST(N'2016-05-22T00:00:00.000' AS DateTime), N'Không Có')
INSERT [dbo].[tblThueThuNhapCaNhan] ([MaThue], [CoQuanQuanLyThue], [MaLuong], [SoTien], [NgayDangKi], [GhiChu]) VALUES (2, N'Cục Thuế TPHCM', 2, 750000, CAST(N'2016-12-12T00:00:00.000' AS DateTime), N'Không Có')
INSERT [dbo].[tblThueThuNhapCaNhan] ([MaThue], [CoQuanQuanLyThue], [MaLuong], [SoTien], [NgayDangKi], [GhiChu]) VALUES (3, N'Cục Thuế TPHCM', 3, 350000, CAST(N'2016-12-12T00:00:00.000' AS DateTime), N'Không Có')
INSERT [dbo].[tblThueThuNhapCaNhan] ([MaThue], [CoQuanQuanLyThue], [MaLuong], [SoTien], [NgayDangKi], [GhiChu]) VALUES (4, N'Cục Thuế TPHCM', 4, 550000, CAST(N'2016-12-12T00:00:00.000' AS DateTime), N'Không Có')
SET IDENTITY_INSERT [dbo].[tblThueThuNhapCaNhan] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTrinhDo] ON 

INSERT [dbo].[tblTrinhDo] ([MaTD], [TenTrinhDo], [GhiChu]) VALUES (1, N'CĐ', N'Cao Đẳng')
INSERT [dbo].[tblTrinhDo] ([MaTD], [TenTrinhDo], [GhiChu]) VALUES (2, N'CH', N'Cao Học')
INSERT [dbo].[tblTrinhDo] ([MaTD], [TenTrinhDo], [GhiChu]) VALUES (3, N'ĐH', N'Đại Học')
SET IDENTITY_INSERT [dbo].[tblTrinhDo] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTTNhanVien] ON 

INSERT [dbo].[tblTTNhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [CMND], [NoiSinh], [DiaChi], [SDT], [MaTD], [MaBHXH], [MaLuong], [MaDV], [MaThue], [MaCM], [Email], [Password], [PhanQuyen], [Anh], [GhiChu], [DanToc], [TonGiao], [QuocTich]) VALUES (1, N'Nguyễn Dũng', CAST(N'1995-07-08T00:00:00.000' AS DateTime), N'Nam', N'215487745   ', N'Phú Thọ   ', N'TP HCM', N'01256985471 ', 3, 1, 1, 2, 1, 1, N'dung@gmail.com', N'123456', 1, NULL, N'Đẹp Trai ', N'Kinh', N'Không', N'Việt Nam')
INSERT [dbo].[tblTTNhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [CMND], [NoiSinh], [DiaChi], [SDT], [MaTD], [MaBHXH], [MaLuong], [MaDV], [MaThue], [MaCM], [Email], [Password], [PhanQuyen], [Anh], [GhiChu], [DanToc], [TonGiao], [QuocTich]) VALUES (2, N'Vũ Như Tuấn Hùng', CAST(N'2016-05-09T00:00:00.000' AS DateTime), N'Nam', N'242523652   ', N'Hưng Yên  ', N'TP HCM', N'01665655214 ', 3, 2, 2, 3, 2, 2, N'vuhung@gmail.com', N'123456', 1, NULL, N'Không', N'Kinh', N'Không', N'Việt Nam')
INSERT [dbo].[tblTTNhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [CMND], [NoiSinh], [DiaChi], [SDT], [MaTD], [MaBHXH], [MaLuong], [MaDV], [MaThue], [MaCM], [Email], [Password], [PhanQuyen], [Anh], [GhiChu], [DanToc], [TonGiao], [QuocTich]) VALUES (3, N'Nguyễn Mạnh Hùng', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'212823367   ', N'Phú Thọ   ', N'Hà Nội', N'01667899877 ', 3, 3, 3, 1, 3, 3, N'thihung@gmail.com', N'123456', 3, NULL, N'Không', N'Kinh', N'Không', N'Việt Nam')
INSERT [dbo].[tblTTNhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [CMND], [NoiSinh], [DiaChi], [SDT], [MaTD], [MaBHXH], [MaLuong], [MaDV], [MaThue], [MaCM], [Email], [Password], [PhanQuyen], [Anh], [GhiChu], [DanToc], [TonGiao], [QuocTich]) VALUES (4, N'Nguyễn Thành Đạt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Nam', N'212823367   ', N'Hưng Yên  ', N'Hà Nội', N'01667899877 ', 3, 4, 4, 7, 4, 4, N'dat@gmail.com', N'123456', 2, NULL, N'Không', N'Kinh', N'Không', N'Việt Nam')
INSERT [dbo].[tblTTNhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [CMND], [NoiSinh], [DiaChi], [SDT], [MaTD], [MaBHXH], [MaLuong], [MaDV], [MaThue], [MaCM], [Email], [Password], [PhanQuyen], [Anh], [GhiChu], [DanToc], [TonGiao], [QuocTich]) VALUES (6, N'Tuanhung', CAST(N'2001-09-15T00:00:00.000' AS DateTime), N'Nam', N'123456789   ', N'Hưng Yên  ', N'Hà Nội', N'0399981904  ', 1, 1, 1, 1, 1, 1, N'tuanhung@gmail.com', N'123456', 3, N'/images/avatar3bfdc19e-7d0d-4034-92df-7f1f5b5eaccf_AnhThe.png', NULL, N'Kinh', N'Không', N'Việt Nam')
SET IDENTITY_INSERT [dbo].[tblTTNhanVien] OFF
GO
ALTER TABLE [dbo].[tblLuong]  WITH CHECK ADD  CONSTRAINT [FK_tblLuong_tblChuyenMon] FOREIGN KEY([MaCM])
REFERENCES [dbo].[tblChuyenMon] ([MaCM])
GO
ALTER TABLE [dbo].[tblLuong] CHECK CONSTRAINT [FK_tblLuong_tblChuyenMon]
GO
ALTER TABLE [dbo].[tblLuong]  WITH CHECK ADD  CONSTRAINT [FK_tblLuong_tblDonVi] FOREIGN KEY([MaDV])
REFERENCES [dbo].[tblDonVi] ([MaDV])
GO
ALTER TABLE [dbo].[tblLuong] CHECK CONSTRAINT [FK_tblLuong_tblDonVi]
GO
ALTER TABLE [dbo].[tblLuong]  WITH CHECK ADD  CONSTRAINT [FK_tblLuong_tblTrinhDo] FOREIGN KEY([MaTD])
REFERENCES [dbo].[tblTrinhDo] ([MaTD])
GO
ALTER TABLE [dbo].[tblLuong] CHECK CONSTRAINT [FK_tblLuong_tblTrinhDo]
GO
ALTER TABLE [dbo].[tblThongKeLuong]  WITH CHECK ADD FOREIGN KEY([MaThang])
REFERENCES [dbo].[tblThang] ([MaThang])
GO
ALTER TABLE [dbo].[tblThongKeLuong]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblTTNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblThueThuNhapCaNhan]  WITH CHECK ADD FOREIGN KEY([MaLuong])
REFERENCES [dbo].[tblLuong] ([MaLuong])
GO
ALTER TABLE [dbo].[tblTTNhanVien]  WITH CHECK ADD FOREIGN KEY([MaBHXH])
REFERENCES [dbo].[tblBaoHiemXH] ([MaBHXH])
GO
ALTER TABLE [dbo].[tblTTNhanVien]  WITH CHECK ADD FOREIGN KEY([MaLuong])
REFERENCES [dbo].[tblLuong] ([MaLuong])
GO
ALTER TABLE [dbo].[tblTTNhanVien]  WITH CHECK ADD FOREIGN KEY([MaThue])
REFERENCES [dbo].[tblThueThuNhapCaNhan] ([MaThue])
GO
ALTER TABLE [dbo].[tblTTNhanVien]  WITH CHECK ADD FOREIGN KEY([MaCM])
REFERENCES [dbo].[tblChuyenMon] ([MaCM])
GO
ALTER TABLE [dbo].[tblTTNhanVien]  WITH CHECK ADD FOREIGN KEY([MaDV])
REFERENCES [dbo].[tblDonVi] ([MaDV])
GO
ALTER TABLE [dbo].[tblTTNhanVien]  WITH CHECK ADD FOREIGN KEY([MaTD])
REFERENCES [dbo].[tblTrinhDo] ([MaTD])
GO
USE [master]
GO
ALTER DATABASE [QLNhanSu] SET  READ_WRITE 
GO
