USE [master]
GO
/****** Object:  Database [QuanLiTourDuLich]    Script Date: 11/11/2024 7:42:00 CH ******/
CREATE DATABASE [QuanLiTourDuLich]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLiTourDuLich', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLiTourDuLich.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLiTourDuLich_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLiTourDuLich_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLiTourDuLich] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLiTourDuLich].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLiTourDuLich] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLiTourDuLich] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLiTourDuLich] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLiTourDuLich] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLiTourDuLich] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLiTourDuLich] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLiTourDuLich] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLiTourDuLich] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLiTourDuLich] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLiTourDuLich] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLiTourDuLich] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLiTourDuLich] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLiTourDuLich', N'ON'
GO
ALTER DATABASE [QuanLiTourDuLich] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLiTourDuLich] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuanLiTourDuLich]
GO
/****** Object:  Table [dbo].[ChiTietChuyenTour]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietChuyenTour](
	[MaTour] [nvarchar](100) NOT NULL,
	[MaChuyen] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietTour] PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC,
	[MaChuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chucvu]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chucvu](
	[Machucvu] [int] IDENTITY(1,1) NOT NULL,
	[Tenchucvu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Machucvu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chuyen]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chuyen](
	[MaChuyen] [int] IDENTITY(1,1) NOT NULL,
	[SoXe] [nvarchar](30) NOT NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucKhachSan]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucKhachSan](
	[MaKS] [nvarchar](100) NOT NULL,
	[MaDiaDiem] [int] NOT NULL,
	[TenKS] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoLuong] [int] NULL,
	[MoTa] [nvarchar](200) NULL,
	[HinhAnh] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatTour]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatTour](
	[MaDat] [nvarchar](100) NOT NULL,
	[MaKH] [nvarchar](100) NOT NULL,
	[MaGiamGia] [nvarchar](20) NULL,
	[ThanhTien] [float] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[MaTour] [nvarchar](100) NOT NULL,
	[Mataikhoan] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diadiem]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diadiem](
	[MaDiaDiem] [int] IDENTITY(1,1) NOT NULL,
	[TenDiaDiem] [nvarchar](100) NULL,
	[GiaTien] [int] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDiaDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaDiemTour]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaDiemTour](
	[MaTour] [nvarchar](100) NOT NULL,
	[MaDiaDiem] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiamGia]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiamGia](
	[MaGiamGia] [nvarchar](20) NOT NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[SoLuong] [int] NULL,
	[PhanTram] [float] NULL,
	[Mota] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGiamGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaVe]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaVe](
	[MaGiaVe] [int] IDENTITY(1,1) NOT NULL,
	[SoTien] [float] NULL,
	[TrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGiaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HuongDanVien]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HuongDanVien](
	[MaHDV] [nvarchar](100) NOT NULL,
	[TenHDV] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[Phai] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](100) NOT NULL,
	[TenKh] [nvarchar](100) NULL,
	[Phai] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTour]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTour](
	[MaLoaiTour] [nvarchar](100) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
	[HinhAnh] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManHinh]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManHinh](
	[Mamanhinh] [int] IDENTITY(1,1) NOT NULL,
	[Tenmanhinh] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Mamanhinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Mataikhoan] [nvarchar](100) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[TenTaiKhoan] [nvarchar](100) NULL,
	[MatKhauBam] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[NgayLam] [date] NULL,
	[Phai] [nvarchar](20) NULL,
	[Email] [varchar](100) NULL,
	[SDT] [nvarchar](10) NULL,
	[Machucvu] [int] NOT NULL,
	[ChuoiBam] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Mataikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[Machucvu] [int] NOT NULL,
	[Mamanhinh] [int] NOT NULL,
	[MaQuyen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Machucvu] ASC,
	[MaQuyen] ASC,
	[Mamanhinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiXe]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiXe](
	[MaTaiXe] [nvarchar](100) NOT NULL,
	[TenTaiXe] [nvarchar](100) NULL,
	[Phai] [nvarchar](20) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourDuLich]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourDuLich](
	[MaGiaVe] [int] NOT NULL,
	[MaTour] [nvarchar](100) NOT NULL,
	[TenTour] [nvarchar](100) NULL,
	[MoTa] [nvarchar](200) NULL,
	[MaLoaiTour] [nvarchar](100) NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 11/11/2024 7:42:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xe](
	[SoXe] [nvarchar](30) NOT NULL,
	[HieuXe] [nvarchar](30) NULL,
	[MaHDV] [nvarchar](100) NOT NULL,
	[MaTaiXe] [nvarchar](100) NOT NULL,
	[HinhAnh] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[SoXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Chucvu] ON 

INSERT [dbo].[Chucvu] ([Machucvu], [Tenchucvu]) VALUES (1, N'Trưởng phòng')
INSERT [dbo].[Chucvu] ([Machucvu], [Tenchucvu]) VALUES (2, N'Nhân viên bán vé')
INSERT [dbo].[Chucvu] ([Machucvu], [Tenchucvu]) VALUES (3, N'Nhân viên kế toán')
INSERT [dbo].[Chucvu] ([Machucvu], [Tenchucvu]) VALUES (4, N'Nhân viên Marketing')
INSERT [dbo].[Chucvu] ([Machucvu], [Tenchucvu]) VALUES (5, N'Quản trị viên 2')
SET IDENTITY_INSERT [dbo].[Chucvu] OFF
GO
SET IDENTITY_INSERT [dbo].[Diadiem] ON 

INSERT [dbo].[Diadiem] ([MaDiaDiem], [TenDiaDiem], [GiaTien], [TrangThai], [HinhAnh]) VALUES (1, N'Hà Nội', 1000000, N'Hoạt động', N'hanoi.jpg')
INSERT [dbo].[Diadiem] ([MaDiaDiem], [TenDiaDiem], [GiaTien], [TrangThai], [HinhAnh]) VALUES (2, N'Nha trang', 180000, N'Moiws', N'D:\Desktop\DO_AN_CHUYEN_NGANH\DACN_QuanLiTourDuLich\Views\bin\Debug\IMG\DiaDiem\NhaTrangNew.jpg')
INSERT [dbo].[Diadiem] ([MaDiaDiem], [TenDiaDiem], [GiaTien], [TrangThai], [HinhAnh]) VALUES (3, N'Phú Quốc', 180000, N'Moiws', N'D:\Desktop\DO_AN_CHUYEN_NGANH\DACN_QuanLiTourDuLich\Views\bin\Debug\IMG\DiaDiem\phuquocmoi.jpg')
SET IDENTITY_INSERT [dbo].[Diadiem] OFF
GO
SET IDENTITY_INSERT [dbo].[GiaVe] ON 

INSERT [dbo].[GiaVe] ([MaGiaVe], [SoTien], [TrangThai]) VALUES (3, 1500000, N'Mới')
SET IDENTITY_INSERT [dbo].[GiaVe] OFF
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKh], [Phai], [DiaChi], [SDT], [Email], [NgaySinh]) VALUES (N'KH001', N'Nguyễn Văn A', N'Nam', N'Hà Nội', N'0912345678', N'nguyenvana@gmail.com', CAST(N'1990-01-01' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKh], [Phai], [DiaChi], [SDT], [Email], [NgaySinh]) VALUES (N'KH002', N'Trần Thị B', N'Nam', N'Hồ Chí Minh', N'0912345679', N'tranthib@gmail.com', CAST(N'1985-05-12' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKh], [Phai], [DiaChi], [SDT], [Email], [NgaySinh]) VALUES (N'KH003', N'Lê Văn C', N'Nam', N'Đà Nẵng', N'0912345680', N'levanc@gmail.com', CAST(N'1992-09-10' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKh], [Phai], [DiaChi], [SDT], [Email], [NgaySinh]) VALUES (N'KH004', N'Phạm Thị D', N'Nữ', N'Cần Thơ', N'0912345681', N'phamthid@gmail.com', CAST(N'1988-02-25' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKh], [Phai], [DiaChi], [SDT], [Email], [NgaySinh]) VALUES (N'KH005', N'Hoàng Văn E', N'Nam', N'Bình Dương', N'0912345682', N'hoangvane@gmail.com', CAST(N'1995-12-11' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKh], [Phai], [DiaChi], [SDT], [Email], [NgaySinh]) VALUES (N'KH006', N'Ngô Thị F', N'Nữ', N'Hải Phòng', N'0912345683', N'ngothif@gmail.com', CAST(N'1991-07-15' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKh], [Phai], [DiaChi], [SDT], [Email], [NgaySinh]) VALUES (N'KH007', N'Vũ Văn G', N'Nam', N'Quảng Ninh', N'0912345684', N'vuvang@gmail.com', CAST(N'1993-03-22' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKh], [Phai], [DiaChi], [SDT], [Email], [NgaySinh]) VALUES (N'KH008', N'Đặng Thị H', N'Nữ', N'An Giang', N'0912345685', N'dangthih@gmail.com', CAST(N'1986-11-30' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKh], [Phai], [DiaChi], [SDT], [Email], [NgaySinh]) VALUES (N'KH009', N'Bùi Văn I', N'Nam', N'Kiên Giang', N'0912345686', N'buivani@gmail.com', CAST(N'1994-04-18' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKh], [Phai], [DiaChi], [SDT], [Email], [NgaySinh]) VALUES (N'KH010', N'Tạ Thị J', N'Nữ', N'Thái Bình', N'0912345687', N'tatj@gmail.com', CAST(N'1990-06-05' AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [TenKh], [Phai], [DiaChi], [SDT], [Email], [NgaySinh]) VALUES (N'KH011', N'Chế Chí Đạt', N'Nam', N'Hồ Chí Minh', N'0912121212', N'chedat0000@gmail.com', CAST(N'2003-11-10' AS Date))
GO
INSERT [dbo].[LoaiTour] ([MaLoaiTour], [TenLoai], [HinhAnh]) VALUES (N'LT001', N'Rừng tour', N'D:\Desktop\DO_AN_CHUYEN_NGANH\DACN_QuanLiTourDuLich\Views\bin\Debug\IMG\Loaitour\TourRung.jpg')
GO
SET IDENTITY_INSERT [dbo].[ManHinh] ON 

INSERT [dbo].[ManHinh] ([Mamanhinh], [Tenmanhinh]) VALUES (1, N'Tài xế')
INSERT [dbo].[ManHinh] ([Mamanhinh], [Tenmanhinh]) VALUES (2, N'Hướng dẫn viên')
INSERT [dbo].[ManHinh] ([Mamanhinh], [Tenmanhinh]) VALUES (3, N'Địa điểm')
INSERT [dbo].[ManHinh] ([Mamanhinh], [Tenmanhinh]) VALUES (4, N'Nhân viên')
INSERT [dbo].[ManHinh] ([Mamanhinh], [Tenmanhinh]) VALUES (5, N'Bán vé')
INSERT [dbo].[ManHinh] ([Mamanhinh], [Tenmanhinh]) VALUES (6, N'Khách sạn')
INSERT [dbo].[ManHinh] ([Mamanhinh], [Tenmanhinh]) VALUES (7, N'Khách hàng')
INSERT [dbo].[ManHinh] ([Mamanhinh], [Tenmanhinh]) VALUES (8, N'Tour Du Lịch')
SET IDENTITY_INSERT [dbo].[ManHinh] OFF
GO
INSERT [dbo].[NhanVien] ([Mataikhoan], [HoTen], [TenTaiKhoan], [MatKhauBam], [NgaySinh], [NgayLam], [Phai], [Email], [SDT], [Machucvu], [ChuoiBam]) VALUES (N'NV001', N'Chế Chí Đạt', N'Dat223', N'p16j5JOiucLlr4kZO46WX+RqHf7rwie6pVWQW0b1IBo=', CAST(N'2003-11-18' AS Date), CAST(N'2024-08-07' AS Date), N'Nam', N'chedat0000@gmail.com', N'0968686868', 5, N'b1BITbX9r/RZRGzdLPUN/A==')
INSERT [dbo].[NhanVien] ([Mataikhoan], [HoTen], [TenTaiKhoan], [MatKhauBam], [NgaySinh], [NgayLam], [Phai], [Email], [SDT], [Machucvu], [ChuoiBam]) VALUES (N'NV002', N'Võ Minh Trường', N'Truong123', N'123', CAST(N'2003-11-02' AS Date), CAST(N'2022-11-02' AS Date), N'Nam', N'truongvo2003@gmail.com', N'01010101', 5, NULL)
INSERT [dbo].[NhanVien] ([Mataikhoan], [HoTen], [TenTaiKhoan], [MatKhauBam], [NgaySinh], [NgayLam], [Phai], [Email], [SDT], [Machucvu], [ChuoiBam]) VALUES (N'NV003', N'Nguyễn Y Thiên Đạo', N'Dao123', N'yqnxzGNu7bUk3x12fdxU7BRFBGjchRqL04tAc/P1RCg=', CAST(N'2003-06-05' AS Date), CAST(N'2024-11-13' AS Date), N'Nam', N'dao2@gmail.com', N'097773333', 2, N'udAv4K7GMWSvdNzkapjgng==')
GO
INSERT [dbo].[PhanQuyen] ([Machucvu], [Mamanhinh], [MaQuyen]) VALUES (1, 4, 6)
INSERT [dbo].[PhanQuyen] ([Machucvu], [Mamanhinh], [MaQuyen]) VALUES (2, 5, 1)
INSERT [dbo].[PhanQuyen] ([Machucvu], [Mamanhinh], [MaQuyen]) VALUES (2, 5, 2)
INSERT [dbo].[PhanQuyen] ([Machucvu], [Mamanhinh], [MaQuyen]) VALUES (2, 5, 4)
INSERT [dbo].[PhanQuyen] ([Machucvu], [Mamanhinh], [MaQuyen]) VALUES (5, 1, 6)
INSERT [dbo].[PhanQuyen] ([Machucvu], [Mamanhinh], [MaQuyen]) VALUES (5, 2, 6)
INSERT [dbo].[PhanQuyen] ([Machucvu], [Mamanhinh], [MaQuyen]) VALUES (5, 3, 6)
INSERT [dbo].[PhanQuyen] ([Machucvu], [Mamanhinh], [MaQuyen]) VALUES (5, 4, 6)
INSERT [dbo].[PhanQuyen] ([Machucvu], [Mamanhinh], [MaQuyen]) VALUES (5, 5, 6)
INSERT [dbo].[PhanQuyen] ([Machucvu], [Mamanhinh], [MaQuyen]) VALUES (5, 6, 6)
INSERT [dbo].[PhanQuyen] ([Machucvu], [Mamanhinh], [MaQuyen]) VALUES (5, 7, 6)
INSERT [dbo].[PhanQuyen] ([Machucvu], [Mamanhinh], [MaQuyen]) VALUES (5, 8, 6)
GO
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (1, N'Xem')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (2, N'Thêm')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (3, N'Xóa')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (4, N'Sửa')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (5, N'Tìm kiếm')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (6, N'Tất cả')
SET IDENTITY_INSERT [dbo].[Quyen] OFF
GO
INSERT [dbo].[TaiXe] ([MaTaiXe], [TenTaiXe], [Phai], [NgaySinh], [DiaChi], [SDT]) VALUES (N'TX001', N'Nguyen Van A', N'Nam', CAST(N'1985-05-15' AS Date), N'123 Le Loi, Ha Noi', N'0912345678')
INSERT [dbo].[TaiXe] ([MaTaiXe], [TenTaiXe], [Phai], [NgaySinh], [DiaChi], [SDT]) VALUES (N'TX002', N'Tran Thi B', N'Nữ', CAST(N'1990-10-20' AS Date), N'456 Nguyen Trai, HCM', N'0923456789')
INSERT [dbo].[TaiXe] ([MaTaiXe], [TenTaiXe], [Phai], [NgaySinh], [DiaChi], [SDT]) VALUES (N'TX003', N'Le Van C', N'Nam', CAST(N'1988-12-25' AS Date), N'789 Le Duan, Da Nang', N'0934567890')
INSERT [dbo].[TaiXe] ([MaTaiXe], [TenTaiXe], [Phai], [NgaySinh], [DiaChi], [SDT]) VALUES (N'TX004', N'Pham Thi D', N'Nữ', CAST(N'1992-03-05' AS Date), N'123 Tran Hung Dao, Hue', N'0945678901')
INSERT [dbo].[TaiXe] ([MaTaiXe], [TenTaiXe], [Phai], [NgaySinh], [DiaChi], [SDT]) VALUES (N'TX005', N'Hoang Van E', N'Nam', CAST(N'1986-07-10' AS Date), N'456 Ly Thuong Kiet, HCM', N'0956789012')
INSERT [dbo].[TaiXe] ([MaTaiXe], [TenTaiXe], [Phai], [NgaySinh], [DiaChi], [SDT]) VALUES (N'TX006', N'Bui Thi F', N'Nữ', CAST(N'1991-08-22' AS Date), N'789 Hai Ba Trung, Ha Noi', N'0967890123')
INSERT [dbo].[TaiXe] ([MaTaiXe], [TenTaiXe], [Phai], [NgaySinh], [DiaChi], [SDT]) VALUES (N'TX007', N'Do Van G', N'Nam', CAST(N'1989-04-14' AS Date), N'123 Kim Ma, Ha Noi', N'0978901234')
INSERT [dbo].[TaiXe] ([MaTaiXe], [TenTaiXe], [Phai], [NgaySinh], [DiaChi], [SDT]) VALUES (N'TX008', N'Ngo Thi H', N'Nữ', CAST(N'1993-06-18' AS Date), N'456 Bui Thi Xuan, HCM', N'0989012345')
INSERT [dbo].[TaiXe] ([MaTaiXe], [TenTaiXe], [Phai], [NgaySinh], [DiaChi], [SDT]) VALUES (N'TX009', N'Vu Van I', N'Nam', CAST(N'1987-09-30' AS Date), N'789 Tran Phu, Da Nang', N'0990123456')
INSERT [dbo].[TaiXe] ([MaTaiXe], [TenTaiXe], [Phai], [NgaySinh], [DiaChi], [SDT]) VALUES (N'TX010', N'Phan Thi J', N'Nữ', CAST(N'1994-11-11' AS Date), N'123 Nguyen Hue, Hue', N'0901234567')
INSERT [dbo].[TaiXe] ([MaTaiXe], [TenTaiXe], [Phai], [NgaySinh], [DiaChi], [SDT]) VALUES (N'TX011', N'Chế Chí Đạt', N'Nam', CAST(N'2003-11-18' AS Date), N'Hóc môn, Tp Hồ Chí Minh', N'0913235645')
GO
ALTER TABLE [dbo].[ChiTietChuyenTour]  WITH CHECK ADD FOREIGN KEY([MaChuyen])
REFERENCES [dbo].[Chuyen] ([MaChuyen])
GO
ALTER TABLE [dbo].[ChiTietChuyenTour]  WITH CHECK ADD FOREIGN KEY([MaTour])
REFERENCES [dbo].[TourDuLich] ([MaTour])
GO
ALTER TABLE [dbo].[Chuyen]  WITH CHECK ADD FOREIGN KEY([SoXe])
REFERENCES [dbo].[Xe] ([SoXe])
GO
ALTER TABLE [dbo].[DanhMucKhachSan]  WITH CHECK ADD FOREIGN KEY([MaDiaDiem])
REFERENCES [dbo].[Diadiem] ([MaDiaDiem])
GO
ALTER TABLE [dbo].[DatTour]  WITH CHECK ADD FOREIGN KEY([MaGiamGia])
REFERENCES [dbo].[GiamGia] ([MaGiamGia])
GO
ALTER TABLE [dbo].[DatTour]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DatTour]  WITH CHECK ADD FOREIGN KEY([Mataikhoan])
REFERENCES [dbo].[NhanVien] ([Mataikhoan])
GO
ALTER TABLE [dbo].[DatTour]  WITH CHECK ADD FOREIGN KEY([MaTour])
REFERENCES [dbo].[TourDuLich] ([MaTour])
GO
ALTER TABLE [dbo].[DiaDiemTour]  WITH CHECK ADD FOREIGN KEY([MaDiaDiem])
REFERENCES [dbo].[Diadiem] ([MaDiaDiem])
GO
ALTER TABLE [dbo].[DiaDiemTour]  WITH CHECK ADD FOREIGN KEY([MaTour])
REFERENCES [dbo].[TourDuLich] ([MaTour])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([Machucvu])
REFERENCES [dbo].[Chucvu] ([Machucvu])
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD FOREIGN KEY([Machucvu])
REFERENCES [dbo].[Chucvu] ([Machucvu])
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD FOREIGN KEY([Mamanhinh])
REFERENCES [dbo].[ManHinh] ([Mamanhinh])
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[TourDuLich]  WITH CHECK ADD FOREIGN KEY([MaGiaVe])
REFERENCES [dbo].[GiaVe] ([MaGiaVe])
GO
ALTER TABLE [dbo].[TourDuLich]  WITH CHECK ADD FOREIGN KEY([MaLoaiTour])
REFERENCES [dbo].[LoaiTour] ([MaLoaiTour])
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD FOREIGN KEY([MaHDV])
REFERENCES [dbo].[HuongDanVien] ([MaHDV])
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD FOREIGN KEY([MaTaiXe])
REFERENCES [dbo].[TaiXe] ([MaTaiXe])
GO
USE [master]
GO
ALTER DATABASE [QuanLiTourDuLich] SET  READ_WRITE 
GO
