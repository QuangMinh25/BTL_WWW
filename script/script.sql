USE [master]
GO
/****** Object:  Database [shopdienthoai2]    Script Date: 5/13/2022 6:32:12 PM ******/
CREATE DATABASE [shopdienthoai2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'shopdienthoai2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\shopdienthoai2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'shopdienthoai2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\shopdienthoai2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [shopdienthoai2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shopdienthoai2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shopdienthoai2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shopdienthoai2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shopdienthoai2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shopdienthoai2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shopdienthoai2] SET ARITHABORT OFF 
GO
ALTER DATABASE [shopdienthoai2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [shopdienthoai2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shopdienthoai2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shopdienthoai2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shopdienthoai2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shopdienthoai2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shopdienthoai2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shopdienthoai2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shopdienthoai2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shopdienthoai2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [shopdienthoai2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shopdienthoai2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shopdienthoai2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shopdienthoai2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shopdienthoai2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shopdienthoai2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shopdienthoai2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shopdienthoai2] SET RECOVERY FULL 
GO
ALTER DATABASE [shopdienthoai2] SET  MULTI_USER 
GO
ALTER DATABASE [shopdienthoai2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shopdienthoai2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [shopdienthoai2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [shopdienthoai2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [shopdienthoai2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [shopdienthoai2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'shopdienthoai2', N'ON'
GO
ALTER DATABASE [shopdienthoai2] SET QUERY_STORE = OFF
GO
USE [shopdienthoai2]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 5/13/2022 6:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[ma_cthd] [int] IDENTITY(1,1) NOT NULL,
	[soluong] [int] NOT NULL,
	[ma_sp] [int] NOT NULL,
	[ma_hd] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_cthd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DienThoai]    Script Date: 5/13/2022 6:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DienThoai](
	[ma_sp] [int] IDENTITY(1,1) NOT NULL,
	[bonhotrong] [nvarchar](255) NULL,
	[camara] [nvarchar](255) NULL,
	[chipxuly] [nvarchar](255) NULL,
	[do_phan_giai] [varchar](255) NULL,
	[dongmay] [varchar](255) NULL,
	[dungluongpin] [nvarchar](255) NULL,
	[giaban] [float] NULL,
	[gianhap] [float] NULL,
	[hinhanh] [varbinary](max) NULL,
	[mausac] [nvarchar](255) NULL,
	[mota] [nvarchar](2000) NULL,
	[model] [varchar](255) NULL,
	[ram] [nvarchar](255) NULL,
	[soluongton] [int] NULL,
	[xuatxu] [nvarchar](255) NULL,
	[maloai_dienthoai] [int] NULL,
	[ma_nsx] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_sp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/13/2022 6:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ma_hd] [int] IDENTITY(1,1) NOT NULL,
	[ngay_laphd] [date] NULL,
	[ma_kh] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_hd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/13/2022 6:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ma_kh] [int] IDENTITY(1,1) NOT NULL,
	[diachinha] [nvarchar](255) NULL,
	[email] [varchar](255) NULL,
	[ho] [nvarchar](255) NULL,
	[matkhau] [varchar](255) NULL,
	[phuong] [nvarchar](255) NULL,
	[quan] [nvarchar](255) NULL,
	[sdt] [varchar](255) NULL,
	[ten] [nvarchar](255) NULL,
	[tentaikhoan] [varchar](255) NULL,
	[thanhpho] [nvarchar](255) NULL,
	[tinhtrang] [bit] NULL,
	[ma_vaitro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_kh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiDienThoai]    Script Date: 5/13/2022 6:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDienThoai](
	[maloai] [int] IDENTITY(1,1) NOT NULL,
	[tenloai] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 5/13/2022 6:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[ma_nsx] [int] IDENTITY(1,1) NOT NULL,
	[ten_nsx] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nsx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaiTro]    Script Date: 5/13/2022 6:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaiTro](
	[ma_vaitro] [int] IDENTITY(1,1) NOT NULL,
	[tenvaitro] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_vaitro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FKndw90aof5vee9dj01vvuh1fxc] FOREIGN KEY([ma_hd])
REFERENCES [dbo].[HoaDon] ([ma_hd])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FKndw90aof5vee9dj01vvuh1fxc]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FKot9lc0pv84alo3mrpdqlvvr6e] FOREIGN KEY([ma_sp])
REFERENCES [dbo].[DienThoai] ([ma_sp])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FKot9lc0pv84alo3mrpdqlvvr6e]
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD  CONSTRAINT [FK19fnkfdk1k7p8mtf3ni1rycvb] FOREIGN KEY([ma_nsx])
REFERENCES [dbo].[NhaSanXuat] ([ma_nsx])
GO
ALTER TABLE [dbo].[DienThoai] CHECK CONSTRAINT [FK19fnkfdk1k7p8mtf3ni1rycvb]
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD  CONSTRAINT [FKemokign7ym137tokoqk60wfmr] FOREIGN KEY([maloai_dienthoai])
REFERENCES [dbo].[LoaiDienThoai] ([maloai])
GO
ALTER TABLE [dbo].[DienThoai] CHECK CONSTRAINT [FKemokign7ym137tokoqk60wfmr]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FKmqqq10pfofygwmlhbcmevu19q] FOREIGN KEY([ma_kh])
REFERENCES [dbo].[KhachHang] ([ma_kh])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FKmqqq10pfofygwmlhbcmevu19q]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FKdmrgnkta2ylc971gyco1g9h8e] FOREIGN KEY([ma_vaitro])
REFERENCES [dbo].[VaiTro] ([ma_vaitro])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FKdmrgnkta2ylc971gyco1g9h8e]
GO
USE [master]
GO
ALTER DATABASE [shopdienthoai2] SET  READ_WRITE 
GO
