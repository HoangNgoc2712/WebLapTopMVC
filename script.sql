USE [master]
GO
/****** Object:  Database [WebsiteMayTinhĐT]    Script Date: 1/4/2022 8:09:29 PM ******/
CREATE DATABASE [WebsiteMayTinhĐT]

ALTER DATABASE [WebsiteMayTinhĐT] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebsiteMayTinhĐT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET RECOVERY FULL 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET  MULTI_USER 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebsiteMayTinhĐT', N'ON'
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET QUERY_STORE = OFF
GO
USE [WebsiteMayTinhĐT]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 1/4/2022 8:09:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet](
	[MaBaiViet] [nvarchar](50) NOT NULL,
	[NoiDung] [nvarchar](100) NOT NULL,
	[MaNV] [nvarchar](25) NOT NULL,
	[NgayDang] [date] NOT NULL,
	[TieuDe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BaiViet] PRIMARY KEY CLUSTERED 
(
	[MaBaiViet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BangMau]    Script Date: 1/4/2022 8:09:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangMau](
	[MaMau] [nvarchar](25) NOT NULL,
	[TenMau] [nvarchar](50) NOT NULL,
	[MaSP] [nvarchar](25) NOT NULL,
	[MaDong] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_MauSac] PRIMARY KEY CLUSTERED 
(
	[MaMau] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 1/4/2022 8:09:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[MaSP] [nvarchar](25) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[TongTien] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTDonHang]    Script Date: 1/4/2022 8:09:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDonHang](
	[MaSP] [nvarchar](25) NOT NULL,
	[MaDonHang] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [int] NOT NULL,
 CONSTRAINT [PK_CTDonHang] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHoaDonNhap]    Script Date: 1/4/2022 8:09:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHoaDonNhap](
	[MaSP] [nvarchar](25) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaNhap] [int] NOT NULL,
	[MaHDNhap] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_CTHoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaHDNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaChiNhanHang]    Script Date: 1/4/2022 8:09:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChiNhanHang](
	[MaDiaChi] [nvarchar](25) NOT NULL,
	[DiaChiNhan] [nvarchar](100) NOT NULL,
	[SDTNhan] [nvarchar](10) NOT NULL,
	[TenNguoiNhan] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_DiaChiNhanHang] PRIMARY KEY CLUSTERED 
(
	[MaDiaChi] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongSanPham]    Script Date: 1/4/2022 8:09:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongSanPham](
	[MaDong] [nvarchar](25) NOT NULL,
	[TenDong] [nvarchar](50) NOT NULL,
	[HeDieuHanh] [nvarchar](50) NOT NULL,
	[ManHinh] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaThuongHieu] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_DongSanPham] PRIMARY KEY CLUSTERED 
(
	[MaDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](25) NOT NULL,
	[DiaChiNhan] [nvarchar](50) NOT NULL,
	[NgayDat] [date] NOT NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[MaHDNhap] [nvarchar](25) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[MaNhaCC] [nvarchar](25) NOT NULL,
	[MaNV] [nvarchar](25) NOT NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_HoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaHDNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](25) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[GioiTinh] [nvarchar](510) NOT NULL,
	[Username] [nvarchar](25) NOT NULL,
	[Password] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoai] [nvarchar](25) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNhaCC] [nvarchar](25) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNhaCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](25) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[NgaySinh] [nvarchar](50) NULL,
	[QueQuan] [nvarchar](100) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuBaoHanh]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuBaoHanh](
	[MaDonHang] [nvarchar](25) NOT NULL,
	[NgayAD] [date] NOT NULL,
	[NgayKT] [date] NOT NULL,
	[MaSP] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_PhieuBaoHanh] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[PhanTram] [int] NULL,
	[NgayAD] [date] NULL,
	[NgayKT] [date] NULL,
	[MaSP] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaDong] [nvarchar](25) NULL,
	[MaSP] [nvarchar](25) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[SoMay] [nvarchar](50) NOT NULL,
	[SoSeri] [nvarchar](50) NOT NULL,
	[AnhTo] [nvarchar](25) NULL,
	[AnhNho] [nvarchar](50) NULL,
	[Gia] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongSoKyThuat]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongSoKyThuat](
	[MaSP] [nvarchar](25) NOT NULL,
	[CPU] [nvarchar](50) NULL,
	[RAM] [nvarchar](50) NULL,
	[BoNho] [nvarchar](50) NULL,
	[CamSau] [nvarchar](50) NULL,
	[CamTruoc] [nvarchar](50) NULL,
	[DungLuongPin] [nvarchar](50) NULL,
	[TrongLuong] [float] NULL,
	[DoPhanGiaiManHinh] [nvarchar](50) NULL,
	[Sim] [nvarchar](50) NULL,
	[CongKetNoi] [nvarchar](250) NULL,
	[BaoMat] [nvarchar](250) NULL,
 CONSTRAINT [PK_ThongSoKyThuat] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[MaThuongHieu] [nvarchar](25) NOT NULL,
	[TenThuongHieu] [nvarchar](50) NOT NULL,
	[MaLoai] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[MaThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[MaNV] [nvarchar](25) NOT NULL,
	[Password] [nvarchar](25) NOT NULL,
	[Role] [nvarchar](25) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BangMau] ([MaMau], [TenMau], [MaSP], [MaDong]) VALUES (N'M01', N'Hồng', N'SP04', N'D12')
INSERT [dbo].[BangMau] ([MaMau], [TenMau], [MaSP], [MaDong]) VALUES (N'M02', N'Bạc', N'SP04', N'D12')
INSERT [dbo].[BangMau] ([MaMau], [TenMau], [MaSP], [MaDong]) VALUES (N'M03', N'Đen', N'SP01', N'D04')
INSERT [dbo].[BangMau] ([MaMau], [TenMau], [MaSP], [MaDong]) VALUES (N'M04', N'Trắng', N'SP03', N'D11')
INSERT [dbo].[BangMau] ([MaMau], [TenMau], [MaSP], [MaDong]) VALUES (N'M05', N'Đen', N'SP03', N'D11')
INSERT [dbo].[BangMau] ([MaMau], [TenMau], [MaSP], [MaDong]) VALUES (N'M06', N'Vàng', N'SP04', N'D12')
INSERT [dbo].[BangMau] ([MaMau], [TenMau], [MaSP], [MaDong]) VALUES (N'M07', N'Xám', N'SP04', N'D12')
INSERT [dbo].[BangMau] ([MaMau], [TenMau], [MaSP], [MaDong]) VALUES (N'M08', N'Đen', N'SP05', N'D06')
GO
INSERT [dbo].[CTDonHang] ([MaSP], [MaDonHang], [SoLuong], [DonGia]) VALUES (N'SP01', N'DH01', 1, 24500000)
INSERT [dbo].[CTDonHang] ([MaSP], [MaDonHang], [SoLuong], [DonGia]) VALUES (N'SP02', N'DH02', 1, 4000000)
INSERT [dbo].[CTDonHang] ([MaSP], [MaDonHang], [SoLuong], [DonGia]) VALUES (N'SP02', N'DH03', 1, 4000000)
INSERT [dbo].[CTDonHang] ([MaSP], [MaDonHang], [SoLuong], [DonGia]) VALUES (N'SP03', N'DH02', 1, 20900000)
INSERT [dbo].[CTDonHang] ([MaSP], [MaDonHang], [SoLuong], [DonGia]) VALUES (N'SP04', N'DH03', 2, 4200000)
GO
INSERT [dbo].[CTHoaDonNhap] ([MaSP], [SoLuong], [GiaNhap], [MaHDNhap]) VALUES (N'SP01', 2, 23000000, N'HDN01')
INSERT [dbo].[CTHoaDonNhap] ([MaSP], [SoLuong], [GiaNhap], [MaHDNhap]) VALUES (N'SP02', 4, 3500000, N'HDN02')
INSERT [dbo].[CTHoaDonNhap] ([MaSP], [SoLuong], [GiaNhap], [MaHDNhap]) VALUES (N'SP02', 5, 3500000, N'HDN05')
INSERT [dbo].[CTHoaDonNhap] ([MaSP], [SoLuong], [GiaNhap], [MaHDNhap]) VALUES (N'SP03', 3, 19000000, N'HDN01')
INSERT [dbo].[CTHoaDonNhap] ([MaSP], [SoLuong], [GiaNhap], [MaHDNhap]) VALUES (N'SP03', 4, 19000000, N'HDN05')
INSERT [dbo].[CTHoaDonNhap] ([MaSP], [SoLuong], [GiaNhap], [MaHDNhap]) VALUES (N'SP04', 3, 3800000, N'HDN02')
INSERT [dbo].[CTHoaDonNhap] ([MaSP], [SoLuong], [GiaNhap], [MaHDNhap]) VALUES (N'SP05', 1, 50000000, N'HDN06')
INSERT [dbo].[CTHoaDonNhap] ([MaSP], [SoLuong], [GiaNhap], [MaHDNhap]) VALUES (N'SP06', 2, 28000000, N'HDN03')
INSERT [dbo].[CTHoaDonNhap] ([MaSP], [SoLuong], [GiaNhap], [MaHDNhap]) VALUES (N'SP07', 5, 10000000, N'HDN04')
INSERT [dbo].[CTHoaDonNhap] ([MaSP], [SoLuong], [GiaNhap], [MaHDNhap]) VALUES (N'SP08', 1, 9000000, N'HDN07')
INSERT [dbo].[CTHoaDonNhap] ([MaSP], [SoLuong], [GiaNhap], [MaHDNhap]) VALUES (N'SP09', 1, 12000000, N'HDN08')
INSERT [dbo].[CTHoaDonNhap] ([MaSP], [SoLuong], [GiaNhap], [MaHDNhap]) VALUES (N'SP10', 1, 5000000, N'HDN08')
INSERT [dbo].[CTHoaDonNhap] ([MaSP], [SoLuong], [GiaNhap], [MaHDNhap]) VALUES (N'SP11', 1, 13500000, N'HDN08')
GO
INSERT [dbo].[DiaChiNhanHang] ([MaDiaChi], [DiaChiNhan], [SDTNhan], [TenNguoiNhan], [MaKH]) VALUES (N'DC01', N'Trường ĐHSPKTHY ,Mỹ Hào, Hưng Yên', N'0123456789', N'Hoàng Ngọc', N'KH01')
INSERT [dbo].[DiaChiNhanHang] ([MaDiaChi], [DiaChiNhan], [SDTNhan], [TenNguoiNhan], [MaKH]) VALUES (N'DC02', N'Minh Tân, Phù Cừ, Hưng Yên', N'0123456789', N'Hoàng Ngọc', N'KH01')
INSERT [dbo].[DiaChiNhanHang] ([MaDiaChi], [DiaChiNhan], [SDTNhan], [TenNguoiNhan], [MaKH]) VALUES (N'DC03', N'Trường ĐHSPKTHY ,Mỹ Hào, Hưng Yên', N'0397434883', N'Nguyễn Thúy Hiền', N'KH02')
INSERT [dbo].[DiaChiNhanHang] ([MaDiaChi], [DiaChiNhan], [SDTNhan], [TenNguoiNhan], [MaKH]) VALUES (N'DC04', N'Từ Sơn, Bắc Ninh', N'0389472624', N'Nguyễn Đình Kiên', N'KH03')
INSERT [dbo].[DiaChiNhanHang] ([MaDiaChi], [DiaChiNhan], [SDTNhan], [TenNguoiNhan], [MaKH]) VALUES (N'DC05', N'Đoàn Đào, Phù Cừ, Hưng Yên', N'0332429734', N'Hoành Minh Hiếu', N'KH04')
INSERT [dbo].[DiaChiNhanHang] ([MaDiaChi], [DiaChiNhan], [SDTNhan], [TenNguoiNhan], [MaKH]) VALUES (N'DC06', N'Nhân Hòa, Mỹ Hào, Hưng Yên', N'0398434223', N'Trần Kim Anh', N'KH05')
GO
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D01', N'SamSung Galaxy A', N'Android', N'6.5', 5, N'TH03')
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D02', N'SamSung Galaxy S', N'Android', N'6.8', 10, N'TH03')
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D03', N'Iphone 6', N'IOS 12', N'4.7', 10, N'TH06')
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D04', N'Dell Inspiron', N'Window 10', N'14.5', 5, N'TH02')
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D05', N'HP Elitebook', N'Window 10', N'14', 6, N'TH01')
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D06', N'Dell XPS', N'Window 10', N'13.4', 5, N'TH02')
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D07', N'HP Pavilion', N'Window 10', N'13.3', 7, N'TH01')
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D08', N'Acer Aspire', N'Window 10', N'15.6', 6, N'TH08')
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D09', N'Acer Nitro', N'Window 10', N'15.6', 5, N'TH08')
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D10', N'SamSung Galaxy Note', N'Android', N'6.7', 5, N'TH03')
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D11', N'Iphone 12', N'IOS 14', N'6.1', 10, N'TH06')
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D12', N'Iphone 6s', N'IOS 14', N'4.7', 8, N'TH06')
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D13', N'Nokia 3.4', N'Android', N'6.39', 8, N'TH07')
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D14', N'Xiaomi Redmi', N'Android', N'6.67', 12, N'TH04')
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D15', N'Huawei P', N'Emui 10.1', N'6.58', 15, N'TH05')
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D16', N'HP EnVy', N'Window 10', N'13.3', 5, N'TH01')
INSERT [dbo].[DongSanPham] ([MaDong], [TenDong], [HeDieuHanh], [ManHinh], [SoLuong], [MaThuongHieu]) VALUES (N'D17', N'Asus ZenBook', N'Window 10', N'14.5', 2, N'TH09')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [MaKH], [DiaChiNhan], [NgayDat], [ThanhTien]) VALUES (N'DH01', N'KH01', N'Trường ĐHSPKTHY ,Mỹ Hào, Hưng Yên', CAST(N'2021-11-13' AS Date), NULL)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKH], [DiaChiNhan], [NgayDat], [ThanhTien]) VALUES (N'DH02', N'KH02', N'Trường ĐHSPKTHY ,Mỹ Hào, Hưng Yên', CAST(N'2021-11-15' AS Date), NULL)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKH], [DiaChiNhan], [NgayDat], [ThanhTien]) VALUES (N'DH03', N'KH03', N'Từ Sơn, Bắc Ninh', CAST(N'2021-11-15' AS Date), NULL)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKH], [DiaChiNhan], [NgayDat], [ThanhTien]) VALUES (N'DH04', N'KH05', N'Phù Cừ, Hưng Yên', CAST(N'2021-12-28' AS Date), NULL)
GO
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [NgayNhap], [MaNhaCC], [MaNV], [TongTien]) VALUES (N'HDN01', CAST(N'2021-11-20' AS Date), N'NCC01', N'NV03', NULL)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [NgayNhap], [MaNhaCC], [MaNV], [TongTien]) VALUES (N'HDN02', CAST(N'2021-11-25' AS Date), N'NCC01', N'NV01', NULL)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [NgayNhap], [MaNhaCC], [MaNV], [TongTien]) VALUES (N'HDN03', CAST(N'2021-11-25' AS Date), N'NCC02', N'NV06', NULL)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [NgayNhap], [MaNhaCC], [MaNV], [TongTien]) VALUES (N'HDN04', CAST(N'2021-12-01' AS Date), N'NCC02', N'NV01', NULL)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [NgayNhap], [MaNhaCC], [MaNV], [TongTien]) VALUES (N'HDN05', CAST(N'2021-12-02' AS Date), N'NCC01', N'NV03', NULL)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [NgayNhap], [MaNhaCC], [MaNV], [TongTien]) VALUES (N'HDN06', CAST(N'2021-12-06' AS Date), N'NCC02', N'NV01', NULL)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [NgayNhap], [MaNhaCC], [MaNV], [TongTien]) VALUES (N'HDN07', CAST(N'2021-12-10' AS Date), N'NCC01', N'NV01', NULL)
INSERT [dbo].[HoaDonNhap] ([MaHDNhap], [NgayNhap], [MaNhaCC], [MaNV], [TongTien]) VALUES (N'HDN08', CAST(N'2021-12-10' AS Date), N'NCC02', N'NV02', NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [GioiTinh], [Username], [Password]) VALUES (N'KH01', N'Hoàng Thị Ngọc', N'0123456789', N'Phù Cừ, Hưng Yên', N'Nữ', N'Hoangngoc01', N'123')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [GioiTinh], [Username], [Password]) VALUES (N'KH02', N'Nguyễn Thúy Hiền', N'0397434883', N'Tiên Lữ, Hưng Yên', N'Nữ', N'Thuyhien98', N'1234')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [GioiTinh], [Username], [Password]) VALUES (N'KH03', N'Nguyễn Đình Kiên', N'0389472624', N'Văn Lâm, Hưng Yên', N'Nam', N'Dinhkien95', N'1245')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [GioiTinh], [Username], [Password]) VALUES (N'KH04', N'Hoành Minh Hiếu', N'0332429734', N'Mỹ Hào, Hưng Yên', N'Nam', N'Minhhieupro', N'2001')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [GioiTinh], [Username], [Password]) VALUES (N'KH05', N'Trần Kim Anh', N'0398434223', N'Mỹ Hào, Hưng Yên', N'Nữ', N'Kimanh2002', N'2002')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'L01', N'Máy Tính')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'L02', N'Điện Thoại')
GO
INSERT [dbo].[NhaCungCap] ([MaNhaCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC01', N'Công Ty TNHH Công Nghệ Máy Tính An Phát ', N'Số 19, Ngõ 178 Thái Hà - Đống Đa - Tp. Hà Nội', N'0971151111')
INSERT [dbo].[NhaCungCap] ([MaNhaCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC02', N'Công Ty TNHH Tin Học Minh An', N'426 Nguyễn Trực, Bích Hòa, Thanh Oai, Tp. Hà Nội', N'0243877777')
INSERT [dbo].[NhaCungCap] ([MaNhaCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC03', N'Công Ty TNHH Thế Giới Di Động', N'P. 13, Q. Tân Bình, Tp. Hồ Chí Minh', N'0381259606')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [Email], [NgaySinh], [QueQuan]) VALUES (N'NV01', N'Nguyễn Duy Khoa', N'0978359322', N'Duykhoahy@gmail.com', N'1999-12-04', N'Phù Cừ, Hưng Yên')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [Email], [NgaySinh], [QueQuan]) VALUES (N'NV02', N'Đào Duy Cường', N'0398283477', N'Duycuong00@gmail.com', N'2000-10-09', N'Tiên Lữ, Hưng Yên')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [Email], [NgaySinh], [QueQuan]) VALUES (N'NV03', N'Đỗ Khánh Huyền', N'0337849161', N'Khanhhuyen@gmail.com', N'2000-03-02', N'Mỹ Hào, Hưng Yên')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [Email], [NgaySinh], [QueQuan]) VALUES (N'NV04', N'Trần Thúy An', N'0394667033', N'Thuyan2001@gmail.com', N'2001-10-22', N'Phù Cừ, Hưng Yên')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [Email], [NgaySinh], [QueQuan]) VALUES (N'NV05', N'Hoàng Khánh Linh', N'0399466798', N'Khanhlinhhy@gmail.com', N'2002-12-28', N'Khoái Châu, Hưng Yên')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [Email], [NgaySinh], [QueQuan]) VALUES (N'NV06', N'Nguyễn Thùy Tiên', N'0366762001', N'Thuytienutehy@gmail.com', N'2001-10-21', N'Mỹ Hào, Hưng Yên')
GO
INSERT [dbo].[PhieuBaoHanh] ([MaDonHang], [NgayAD], [NgayKT], [MaSP]) VALUES (N'DH01', CAST(N'2021-11-13' AS Date), CAST(N'2022-11-13' AS Date), N'SP01')
INSERT [dbo].[PhieuBaoHanh] ([MaDonHang], [NgayAD], [NgayKT], [MaSP]) VALUES (N'DH02', CAST(N'2021-11-15' AS Date), CAST(N'2022-11-15' AS Date), N'SP01')
INSERT [dbo].[PhieuBaoHanh] ([MaDonHang], [NgayAD], [NgayKT], [MaSP]) VALUES (N'DH02', CAST(N'2021-11-15' AS Date), CAST(N'2022-11-15' AS Date), N'SP02')
INSERT [dbo].[PhieuBaoHanh] ([MaDonHang], [NgayAD], [NgayKT], [MaSP]) VALUES (N'DH03', CAST(N'2021-11-15' AS Date), CAST(N'2022-11-15' AS Date), N'SP02')
GO
INSERT [dbo].[Sale] ([PhanTram], [NgayAD], [NgayKT], [MaSP]) VALUES (24500000, CAST(N'2021-11-23' AS Date), CAST(N'2022-02-02' AS Date), N'SP01')
INSERT [dbo].[Sale] ([PhanTram], [NgayAD], [NgayKT], [MaSP]) VALUES (4000000, CAST(N'2021-11-23' AS Date), CAST(N'2022-02-02' AS Date), N'SP02')
INSERT [dbo].[Sale] ([PhanTram], [NgayAD], [NgayKT], [MaSP]) VALUES (20900000, CAST(N'2021-11-20' AS Date), CAST(N'2022-01-29' AS Date), N'SP03')
INSERT [dbo].[Sale] ([PhanTram], [NgayAD], [NgayKT], [MaSP]) VALUES (4200000, CAST(N'2021-11-20' AS Date), CAST(N'2022-01-25' AS Date), N'SP04')
INSERT [dbo].[Sale] ([PhanTram], [NgayAD], [NgayKT], [MaSP]) VALUES (53000000, CAST(N'2021-10-11' AS Date), CAST(N'2022-01-23' AS Date), N'SP05')
INSERT [dbo].[Sale] ([PhanTram], [NgayAD], [NgayKT], [MaSP]) VALUES (30000000, CAST(N'2021-10-11' AS Date), CAST(N'2022-01-23' AS Date), N'SP06')
INSERT [dbo].[Sale] ([PhanTram], [NgayAD], [NgayKT], [MaSP]) VALUES (12000000, CAST(N'2021-10-11' AS Date), CAST(N'2023-01-23' AS Date), N'SP07')
INSERT [dbo].[Sale] ([PhanTram], [NgayAD], [NgayKT], [MaSP]) VALUES (10900000, CAST(N'2021-10-11' AS Date), CAST(N'2023-01-23' AS Date), N'SP08')
GO
INSERT [dbo].[SanPham] ([MaDong], [MaSP], [TenSP], [SoMay], [SoSeri], [AnhTo], [AnhNho], [Gia]) VALUES (N'D02', N'111', N'adsgg', N'12526', N'afdsgd', N'', N'', 12346)
INSERT [dbo].[SanPham] ([MaDong], [MaSP], [TenSP], [SoMay], [SoSeri], [AnhTo], [AnhNho], [Gia]) VALUES (N'D02', N'12314', N'samsung', N'124525', N'2425', N'', N'', 2526)
INSERT [dbo].[SanPham] ([MaDong], [MaSP], [TenSP], [SoMay], [SoSeri], [AnhTo], [AnhNho], [Gia]) VALUES (N'D04', N'SP01', N'Laptop Dell Inspiron 3501', N'111', N'111', N'dell_inspiron_3501.jpg', N'inspiron_1.jpg', 24500000)
INSERT [dbo].[SanPham] ([MaDong], [MaSP], [TenSP], [SoMay], [SoSeri], [AnhTo], [AnhNho], [Gia]) VALUES (N'D03', N'SP02', N'Iphone 6', N'222', N'222', N'ip6.jpg', N'ip6.jpg', 4000000)
INSERT [dbo].[SanPham] ([MaDong], [MaSP], [TenSP], [SoMay], [SoSeri], [AnhTo], [AnhNho], [Gia]) VALUES (N'D11', N'SP03', N'Iphone 12', N'333', N'333', N'ip12.jpg', N'ip12.jpg', 20900000)
INSERT [dbo].[SanPham] ([MaDong], [MaSP], [TenSP], [SoMay], [SoSeri], [AnhTo], [AnhNho], [Gia]) VALUES (N'D12', N'SP04', N'Iphone 6s', N'444', N'444', N'ip6s.PNG', N'ip6s.jpg', 4200000)
INSERT [dbo].[SanPham] ([MaDong], [MaSP], [TenSP], [SoMay], [SoSeri], [AnhTo], [AnhNho], [Gia]) VALUES (N'D06', N'SP05', N'Laptop Dell XPS 13 9310', N'12335', N'2355', N'dell-xps-13-9310.PNG', N'dell-xps-13-9310.PNG', 53000000)
INSERT [dbo].[SanPham] ([MaDong], [MaSP], [TenSP], [SoMay], [SoSeri], [AnhTo], [AnhNho], [Gia]) VALUES (N'D04', N'SP06', N'LapTop Dell Inspiron 7400', N'1237', N'1276', N'dell-inspiron-7400.jpg', N'dell-inspiron-7400.jpg', 30000000)
INSERT [dbo].[SanPham] ([MaDong], [MaSP], [TenSP], [SoMay], [SoSeri], [AnhTo], [AnhNho], [Gia]) VALUES (N'D16', N'SP07', N'LapTop HP Envy 13', N'3241', N'3251', N'HP_Envy13.jpg', N'HP_Envy13.jpg', 12000000)
INSERT [dbo].[SanPham] ([MaDong], [MaSP], [TenSP], [SoMay], [SoSeri], [AnhTo], [AnhNho], [Gia]) VALUES (N'D01', N'SP08', N'Samsung Galaxy A52s 5G', N'2567', N'2457', N'galaxy-a52s-5g.jpg', N'galaxy-a52s-5g.jpg', 10900000)
INSERT [dbo].[SanPham] ([MaDong], [MaSP], [TenSP], [SoMay], [SoSeri], [AnhTo], [AnhNho], [Gia]) VALUES (N'D02', N'SP09', N'Samsung Galaxy S20', N'13424', N'1425', N'galaxy-s20.jpg', N'galaxy-s20.jpg', 13500000)
INSERT [dbo].[SanPham] ([MaDong], [MaSP], [TenSP], [SoMay], [SoSeri], [AnhTo], [AnhNho], [Gia]) VALUES (N'D01', N'SP10', N'Samsung Galaxy A32 4G', N'2425', N'4255', N'galaxy-a32-4g.jpg', N'galaxy-a32-4g.jpg', 6000000)
INSERT [dbo].[SanPham] ([MaDong], [MaSP], [TenSP], [SoMay], [SoSeri], [AnhTo], [AnhNho], [Gia]) VALUES (N'D17', N'SP11', N'Laptop Asus ZenBook', N'24145', N'14255', N'asus.PNG', N'asus1.PNG', 15000000)
GO
INSERT [dbo].[ThongSoKyThuat] ([MaSP], [CPU], [RAM], [BoNho], [CamSau], [CamTruoc], [DungLuongPin], [TrongLuong], [DoPhanGiaiManHinh], [Sim], [CongKetNoi], [BaoMat]) VALUES (N'SP01', N'Intel Core i5-1135G7', N'8GB', N'512 GB', NULL, NULL, N'	65 W', 1.96, N'1920 x 1080 Pixel', NULL, NULL, NULL)
INSERT [dbo].[ThongSoKyThuat] ([MaSP], [CPU], [RAM], [BoNho], [CamSau], [CamTruoc], [DungLuongPin], [TrongLuong], [DoPhanGiaiManHinh], [Sim], [CongKetNoi], [BaoMat]) VALUES (N'SP02', N'Apple A8 2 nhân', N'1 GB', N'16GB', N'8 MP', N'1.2 MP', N'1810 mAh', 0.124, N'750 x 1334 Pixels', N'1 Nano SIM', NULL, NULL)
INSERT [dbo].[ThongSoKyThuat] ([MaSP], [CPU], [RAM], [BoNho], [CamSau], [CamTruoc], [DungLuongPin], [TrongLuong], [DoPhanGiaiManHinh], [Sim], [CongKetNoi], [BaoMat]) VALUES (N'SP03', N'A14 Bionic', N'4 GB', N'64 GB', N'12.0 MP + 12.0 MP', N'12.0 MP', N'2815 mAh', 0.164, N'2532 x 1170 Pixel', N'2, 1 eSIM, 1 Nano SIM', NULL, NULL)
INSERT [dbo].[ThongSoKyThuat] ([MaSP], [CPU], [RAM], [BoNho], [CamSau], [CamTruoc], [DungLuongPin], [TrongLuong], [DoPhanGiaiManHinh], [Sim], [CongKetNoi], [BaoMat]) VALUES (N'SP04', N'Apple A9', N'2 GB', N'16 GB', N'5 MP', N'12 MP', N'1715 mAh', 0.143, N'750 x 1334 Pixels', N'1 Nano SIM', NULL, NULL)
INSERT [dbo].[ThongSoKyThuat] ([MaSP], [CPU], [RAM], [BoNho], [CamSau], [CamTruoc], [DungLuongPin], [TrongLuong], [DoPhanGiaiManHinh], [Sim], [CongKetNoi], [BaoMat]) VALUES (N'SP05', N'Intel Core i7-1065G7', N'16 GB', N'512 GB', NULL, NULL, N'	45 W', 1.32, N'3840 x 2160 Pixel', NULL, NULL, NULL)
INSERT [dbo].[ThongSoKyThuat] ([MaSP], [CPU], [RAM], [BoNho], [CamSau], [CamTruoc], [DungLuongPin], [TrongLuong], [DoPhanGiaiManHinh], [Sim], [CongKetNoi], [BaoMat]) VALUES (N'SP06', N'
i5,1135G72.4GHz', N'16 GB', N'512 GB ', NULL, NULL, N'52 W', 1.35, N'2560 x 1600 Pixel', NULL, NULL, NULL)
INSERT [dbo].[ThongSoKyThuat] ([MaSP], [CPU], [RAM], [BoNho], [CamSau], [CamTruoc], [DungLuongPin], [TrongLuong], [DoPhanGiaiManHinh], [Sim], [CongKetNoi], [BaoMat]) VALUES (N'SP07', N'Intel Core i5-1135G7', N'8 GB', N'512 GB', NULL, NULL, N'	65 W', 1.31, N'1920 x 1080 Pixel', NULL, NULL, NULL)
INSERT [dbo].[ThongSoKyThuat] ([MaSP], [CPU], [RAM], [BoNho], [CamSau], [CamTruoc], [DungLuongPin], [TrongLuong], [DoPhanGiaiManHinh], [Sim], [CongKetNoi], [BaoMat]) VALUES (N'SP08', N'Snapdragon 750G 5G', N'8 GB', N'128 GB', N'Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP', N'32 MP', N'4500 mAh', 0.189, N'1080 x 2400 Pixels', N'2 Nano SIM', NULL, NULL)
INSERT [dbo].[ThongSoKyThuat] ([MaSP], [CPU], [RAM], [BoNho], [CamSau], [CamTruoc], [DungLuongPin], [TrongLuong], [DoPhanGiaiManHinh], [Sim], [CongKetNoi], [BaoMat]) VALUES (N'SP09', N'Snapdragon 865', N'
8 GB', N'
256 GB', N'Chính 12 MP & Phụ 12 MP, 8 MP', NULL, N'4500 mAh', 0.19, N'1080 x 2400 Pixels', N'2 Nano SIM', NULL, NULL)
GO
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [MaLoai]) VALUES (N'TH01', N'HP', N'L01')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [MaLoai]) VALUES (N'TH02', N'DELL', N'L01')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [MaLoai]) VALUES (N'TH03', N'SAMSUNG', N'L02')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [MaLoai]) VALUES (N'TH04', N'XIAOMI', N'L02')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [MaLoai]) VALUES (N'TH05', N'HUAWEI', N'L02')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [MaLoai]) VALUES (N'TH06', N'APPLE', N'L02')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [MaLoai]) VALUES (N'TH07', N'NOKIA', N'L02')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [MaLoai]) VALUES (N'TH08', N'ACER', N'L01')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [MaLoai]) VALUES (N'TH09', N'ASUS', N'L01')
GO
INSERT [dbo].[Users] ([MaNV], [Password], [Role]) VALUES (N'NV01', N'123', N'admin')
INSERT [dbo].[Users] ([MaNV], [Password], [Role]) VALUES (N'NV02', N'1234', N'Bán hàng 1')
INSERT [dbo].[Users] ([MaNV], [Password], [Role]) VALUES (N'NV03', N'nhaphang', N'Nhập hàng')
INSERT [dbo].[Users] ([MaNV], [Password], [Role]) VALUES (N'NV04', N'thungan', N'Thu ngân')
INSERT [dbo].[Users] ([MaNV], [Password], [Role]) VALUES (N'NV05', N'banhang2', N'Bán hàng 2')
INSERT [dbo].[Users] ([MaNV], [Password], [Role]) VALUES (N'NV06', N'nhaphang2', N'Nhập hàng 2')
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_NhanVien]
GO
ALTER TABLE [dbo].[BangMau]  WITH CHECK ADD  CONSTRAINT [FK_BangMau_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BangMau] CHECK CONSTRAINT [FK_BangMau_SanPham]
GO
ALTER TABLE [dbo].[CTDonHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDonHang_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[CTDonHang] CHECK CONSTRAINT [FK_CTDonHang_DonHang]
GO
ALTER TABLE [dbo].[CTDonHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDonHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTDonHang] CHECK CONSTRAINT [FK_CTDonHang_SanPham]
GO
ALTER TABLE [dbo].[CTHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTHoaDonNhap_HoaDonNhap] FOREIGN KEY([MaHDNhap])
REFERENCES [dbo].[HoaDonNhap] ([MaHDNhap])
GO
ALTER TABLE [dbo].[CTHoaDonNhap] CHECK CONSTRAINT [FK_CTHoaDonNhap_HoaDonNhap]
GO
ALTER TABLE [dbo].[CTHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTHoaDonNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTHoaDonNhap] CHECK CONSTRAINT [FK_CTHoaDonNhap_SanPham]
GO
ALTER TABLE [dbo].[DiaChiNhanHang]  WITH CHECK ADD  CONSTRAINT [FK_DiaChiNhanHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DiaChiNhanHang] CHECK CONSTRAINT [FK_DiaChiNhanHang_KhachHang]
GO
ALTER TABLE [dbo].[DongSanPham]  WITH CHECK ADD  CONSTRAINT [FK_DongSanPham_ThuongHieu] FOREIGN KEY([MaThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([MaThuongHieu])
GO
ALTER TABLE [dbo].[DongSanPham] CHECK CONSTRAINT [FK_DongSanPham_ThuongHieu]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_NhaCungCap] FOREIGN KEY([MaNhaCC])
REFERENCES [dbo].[NhaCungCap] ([MaNhaCC])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_User] FOREIGN KEY([MaNV])
REFERENCES [dbo].[Users] ([MaNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_User]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_GiaBan_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_GiaBan_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DongSanPham] FOREIGN KEY([MaDong])
REFERENCES [dbo].[DongSanPham] ([MaDong])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DongSanPham]
GO
ALTER TABLE [dbo].[ThongSoKyThuat]  WITH CHECK ADD  CONSTRAINT [FK_ThongSoKyThuat_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ThongSoKyThuat] CHECK CONSTRAINT [FK_ThongSoKyThuat_SanPham]
GO
ALTER TABLE [dbo].[ThuongHieu]  WITH CHECK ADD  CONSTRAINT [FK_ThuongHieu_LoaiSanPham] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPham] ([MaLoai])
GO
ALTER TABLE [dbo].[ThuongHieu] CHECK CONSTRAINT [FK_ThuongHieu_LoaiSanPham]
GO
/****** Object:  StoredProcedure [dbo].[DSSPTheoLoai]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DSSPTheoLoai]
@maloai nvarchar(25)
as
begin
	if(not exists(select sp.*from SanPham sp join DongSanPham dsp on sp.MaDong=dsp.MaDong join ThuongHieu th on dsp.MaThuongHieu=th.MaThuongHieu join LoaiSanPham l
	on th.MaLoai=l.MaLoai
	where l.MaLoai=@maloai))
	begin
		print N'Loại '+ @maloai + N' không có sản phẩm nào'
		return -1
	end
	select sp.*from SanPham sp join DongSanPham dsp on sp.MaDong=dsp.MaDong join ThuongHieu th on dsp.MaThuongHieu=th.MaThuongHieu join LoaiSanPham l
	on th.MaLoai=l.MaLoai
	where l.MaLoai=@maloai
end
GO
/****** Object:  StoredProcedure [dbo].[DSSPTheoThuongHieu]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 4.Lấy ra danh sách sp theo thương hiệu
CREATE proc [dbo].[DSSPTheoThuongHieu]
@maTH nvarchar(25)
as
begin
	if(not exists(select sp.*from SanPham sp join DongSanPham dsp on sp.MaDong=dsp.MaDong join ThuongHieu th on dsp.MaThuongHieu=th.MaThuongHieu
	where dsp.MaThuongHieu=@maTH))
	begin
		print N'Thương hiệu '+ @maTH + N' không có sản phẩm nào'
		return -1
	end
	select sp.*from SanPham sp join DongSanPham dsp on sp.MaDong=dsp.MaDong join ThuongHieu th on dsp.MaThuongHieu=th.MaThuongHieu
	where dsp.MaThuongHieu=@maTH
end
GO
/****** Object:  StoredProcedure [dbo].[GetSanPham]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetSanPham]
( @PageIndex INT, @pageSize INT, @productName nvarchar(50))   
As  
 Begin  
 DECLARE @RecordCount INT;	
   SELECT *INTO #Results  FROM SanPham 
        where ((TenSP='') or (TenSP like '%' + @productName +'%')) 
   select * from #Results  ORDER BY MaSP OFFSET @PageSize*(@PageIndex-1)
	  ROWS FETCH NEXT @PageSize ROWS ONLY;  
 
	 SELECT count(*) as totalCount FROM SanPham; 
	 DROP TABLE #Results    
 End
GO
/****** Object:  StoredProcedure [dbo].[GetSanPhamTD]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetSanPhamTD]
( @madong nvarchar (25), @PageIndex INT, @pageSize INT, @productName nvarchar(100))   
As  
 Begin  
 DECLARE @RecordCount INT;	
 
 if(@madong='')
   begin
   SELECT S.* INTO #Results  FROM SanPham as S
        where ((TenSP='') or (TenSP like '%' + @productName +'%')) 
   select * from #Results  ORDER BY MaSP OFFSET @PageSize*(@PageIndex-1)
	  ROWS FETCH NEXT @PageSize ROWS ONLY;  
 
	 SELECT count(*) as totalCount FROM SanPham; 
	 DROP TABLE #Results 
	 end;
 else
    begin
     SELECT S.* INTO #Result  FROM SanPham as S
         where (MaDong = @madong ) and ((TenSP='') or (TenSP like '%' + @productName +'%'))
	 select * from #Result  ORDER BY MaSP OFFSET @PageSize*(@PageIndex-1)
	  ROWS FETCH NEXT @PageSize ROWS ONLY;  
 
	 SELECT count(*) as totalCount FROM SanPham; 
	 DROP TABLE #Result 
	 end;
 End
GO
/****** Object:  StoredProcedure [dbo].[SanPhamBanChay]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SanPhamBanChay]
--@soluong int
as
begin
	select* from SanPham where (MaSP in (select top 4 MaSP from CTDonHang
	where MaDonHang in(select MaDonHang from DonHang)
	group by MaSP order by sum (SoLuong) desc))
end
GO
/****** Object:  StoredProcedure [dbo].[SanPhamMoi]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[SanPhamMoi]
 as
 begin
	select * from SanPham where (MaSP in (select top 4 MaSP from CTHoaDonNhap
	where MaHDNhap in (select MaHDNhap from HoaDonNhap where DATEDIFF(MONTH,NgayNhap, getdate()) <=1)
	group by MaSP))
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TimKiemTheoTen]    Script Date: 1/4/2022 8:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_TimKiemTheoTen](@tensp nvarchar(50))
as
begin
	if( not exists (select* from SanPham sp where sp.TenSP like '%' + @tensp +'%'))
	begin 
	print N'Sản phẩm '+@tensp+ N'không tồn tại'
	return -1
	end
	if( exists (select* from SanPham sp where sp.TenSP like '%' + @tensp +'%'))
	begin 
		select* from SanPham sp  where sp.TenSP like '%' + @tensp +'%'
	end
end
GO
USE [master]
GO
ALTER DATABASE [WebsiteMayTinhĐT] SET  READ_WRITE 
GO
