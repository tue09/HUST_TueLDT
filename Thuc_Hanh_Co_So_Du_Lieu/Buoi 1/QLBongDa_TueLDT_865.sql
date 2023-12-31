USE [master]
GO
/****** Object:  Database [QLBongDa_TueLDT_865]    Script Date: 10/31/2023 1:58:20 PM ******/
CREATE DATABASE [QLBongDa_TueLDT_865]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBongDa_TueLDT_865', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QLBongDa_TueLDT_865.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBongDa_TueLDT_865_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QLBongDa_TueLDT_865_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBongDa_TueLDT_865].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET RECOVERY FULL 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET  MULTI_USER 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLBongDa_TueLDT_865', N'ON'
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLBongDa_TueLDT_865]
GO
/****** Object:  Table [dbo].[BANGXH_TueLDT]    Script Date: 10/31/2023 1:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANGXH_TueLDT](
	[MACLB_0909] [varchar](5) NOT NULL,
	[NAM_0909] [int] NOT NULL,
	[VONG_0909] [int] NOT NULL,
	[SOTRAN_0909] [int] NOT NULL,
	[THANG_0909] [int] NOT NULL,
	[HOA_0909] [int] NOT NULL,
	[THUA_0909] [int] NOT NULL,
	[HIEUSO_0909] [varchar](5) NOT NULL,
	[DIEM_0909] [int] NOT NULL,
	[HANG_0909] [int] NOT NULL,
 CONSTRAINT [PK_BANGXH_TueLDT] PRIMARY KEY CLUSTERED 
(
	[MACLB_0909] ASC,
	[NAM_0909] ASC,
	[VONG_0909] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAULACBO_TueLDT]    Script Date: 10/31/2023 1:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAULACBO_TueLDT](
	[MACLB_0909] [varchar](5) NOT NULL,
	[TENCLB_0909] [nvarchar](100) NOT NULL,
	[MASAN_0909] [varchar](5) NOT NULL,
	[MATINH_0909] [varchar](5) NOT NULL,
 CONSTRAINT [PK_CAULACBO_TueLDT] PRIMARY KEY CLUSTERED 
(
	[MACLB_0909] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAUTHU_TueLDT]    Script Date: 10/31/2023 1:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAUTHU_TueLDT](
	[MACT_0909] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[HOTEN_0909] [nvarchar](100) NOT NULL,
	[VITRI_0909] [nvarchar](20) NOT NULL,
	[NGAYSINH_0909] [datetime] NULL,
	[DIACHI_0909] [nvarchar](200) NULL,
	[MACLB_0909] [varchar](5) NOT NULL,
	[MAQG_0909] [varchar](5) NOT NULL,
	[SO_0909] [int] NOT NULL,
 CONSTRAINT [PK_CAUTHU_TueLDT] PRIMARY KEY CLUSTERED 
(
	[MACT_0909] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HLV_CLB_TueLDT]    Script Date: 10/31/2023 1:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HLV_CLB_TueLDT](
	[MAHLV_0909] [varchar](5) NOT NULL,
	[MACLB_0909] [varchar](5) NOT NULL,
	[VAITRO_0909] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_HLV_CLB_TueLDT] PRIMARY KEY CLUSTERED 
(
	[MAHLV_0909] ASC,
	[MACLB_0909] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HUANLUYENVIEN_TueLDT]    Script Date: 10/31/2023 1:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HUANLUYENVIEN_TueLDT](
	[MAHLV_0909] [varchar](5) NOT NULL,
	[TENHLV_0909] [nvarchar](100) NOT NULL,
	[NGAYSINH_0909] [datetime] NULL,
	[DIACHI_0909] [nvarchar](200) NULL,
	[DIENTHOAI_0909] [nvarchar](20) NULL,
	[MAQG_0909] [varchar](5) NOT NULL,
 CONSTRAINT [PK_HUANLUYENVIEN_TueLDT] PRIMARY KEY CLUSTERED 
(
	[MAHLV_0909] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUOCGIA_TueLDT]    Script Date: 10/31/2023 1:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUOCGIA_TueLDT](
	[MAQG_0909] [varchar](5) NOT NULL,
	[TENQG_0909] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_QUOCGIA_TueLDT] PRIMARY KEY CLUSTERED 
(
	[MAQG_0909] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANVD_TueLDT]    Script Date: 10/31/2023 1:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANVD_TueLDT](
	[MASAN_0909] [varchar](5) NOT NULL,
	[TENSAN_0909] [nvarchar](100) NOT NULL,
	[DIACHI_0909] [nvarchar](200) NULL,
 CONSTRAINT [PK_SANVD_TueLDT] PRIMARY KEY CLUSTERED 
(
	[MASAN_0909] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TINH_TueLDT]    Script Date: 10/31/2023 1:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINH_TueLDT](
	[MATINH_0909] [varchar](5) NOT NULL,
	[TENTINH_0909] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_TINH_TueLDT] PRIMARY KEY CLUSTERED 
(
	[MATINH_0909] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANDAU_TueLDT]    Script Date: 10/31/2023 1:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANDAU_TueLDT](
	[MATRAN_0909] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[NAM_0909] [int] NOT NULL,
	[VONG_0909] [int] NOT NULL,
	[NGAYTD_0909] [datetime] NOT NULL,
	[MACLB1_0909] [varchar](5) NOT NULL,
	[MACLB2_0909] [varchar](5) NOT NULL,
	[MASAN_0909] [varchar](5) NOT NULL,
	[KETQUA_0909] [varchar](5) NOT NULL,
 CONSTRAINT [PK_TRANDAU_TueLDT] PRIMARY KEY CLUSTERED 
(
	[MATRAN_0909] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'BBD', 2009, 1, 1, 1, 0, 0, N'3-0', 3, 1)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'BBD', 2009, 2, 2, 1, 0, 1, N'3-5', 3, 2)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'BBD', 2009, 3, 3, 2, 0, 1, N'4-5', 6, 1)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'BBD', 2009, 4, 4, 2, 1, 1, N'6-7', 7, 1)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'GDT', 2009, 1, 1, 0, 1, 0, N'1-1', 1, 3)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'GDT', 2009, 2, 1, 0, 1, 0, N'1-1', 1, 4)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'GDT', 2009, 3, 2, 1, 1, 0, N'3-1', 4, 2)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'GDT', 2009, 4, 3, 1, 2, 0, N'5-1', 5, 2)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'KKH', 2009, 1, 1, 0, 1, 0, N'1-1', 1, 2)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'KKH', 2009, 2, 2, 0, 2, 0, N'3-3', 2, 3)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'KKH', 2009, 3, 3, 0, 2, 1, N'3-4', 2, 4)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'KKH', 2009, 4, 4, 1, 2, 1, N'4-4', 5, 3)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'SDN', 2009, 1, 1, 0, 0, 1, N'0-3', 0, 5)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'SDN', 2009, 2, 2, 1, 1, 0, N'2-5', 1, 5)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'SDN', 2009, 3, 2, 1, 1, 0, N'2-5', 1, 5)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'SDN', 2009, 4, 2, 1, 1, 0, N'2-5', 1, 5)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'TPY', 2009, 1, 0, 0, 0, 0, N'0-0', 0, 4)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'TPY', 2009, 2, 1, 1, 0, 0, N'5-0', 3, 1)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'TPY', 2009, 3, 2, 1, 0, 1, N'5-2', 3, 3)
INSERT [dbo].[BANGXH_TueLDT] ([MACLB_0909], [NAM_0909], [VONG_0909], [SOTRAN_0909], [THANG_0909], [HOA_0909], [THUA_0909], [HIEUSO_0909], [DIEM_0909], [HANG_0909]) VALUES (N'TPY', 2009, 4, 3, 1, 0, 2, N'5-3', 3, 4)
GO
INSERT [dbo].[CAULACBO_TueLDT] ([MACLB_0909], [TENCLB_0909], [MASAN_0909], [MATINH_0909]) VALUES (N'BBD', N'BECAMEX BÌNH DUONG', N'GD', N'BD')
INSERT [dbo].[CAULACBO_TueLDT] ([MACLB_0909], [TENCLB_0909], [MASAN_0909], [MATINH_0909]) VALUES (N'GDT', N'GẠCH ÐỒNG TÂM LONG AN', N'LA', N'LA')
INSERT [dbo].[CAULACBO_TueLDT] ([MACLB_0909], [TENCLB_0909], [MASAN_0909], [MATINH_0909]) VALUES (N'HAGL', N'HOÀNG ANH GIA LAI', N'PL', N'GL')
INSERT [dbo].[CAULACBO_TueLDT] ([MACLB_0909], [TENCLB_0909], [MASAN_0909], [MATINH_0909]) VALUES (N'KKH', N'KHATOCO KHÁNH HÒA', N'NT', N'KH')
INSERT [dbo].[CAULACBO_TueLDT] ([MACLB_0909], [TENCLB_0909], [MASAN_0909], [MATINH_0909]) VALUES (N'SDN', N'SHB ÐÀ NẴNG', N'CL', N'DN')
INSERT [dbo].[CAULACBO_TueLDT] ([MACLB_0909], [TENCLB_0909], [MASAN_0909], [MATINH_0909]) VALUES (N'TPY', N'THÉP PHÚ YÊN', N'TH', N'PY')
GO
SET IDENTITY_INSERT [dbo].[CAUTHU_TueLDT] ON 

INSERT [dbo].[CAUTHU_TueLDT] ([MACT_0909], [HOTEN_0909], [VITRI_0909], [NGAYSINH_0909], [DIACHI_0909], [MACLB_0909], [MAQG_0909], [SO_0909]) VALUES (CAST(1 AS Numeric(18, 0)), N'Nguyễn Vũ Phong', N'Tiền vệ', CAST(N'1990-02-20T00:00:00.000' AS DateTime), NULL, N'BBD', N'VN', 17)
INSERT [dbo].[CAUTHU_TueLDT] ([MACT_0909], [HOTEN_0909], [VITRI_0909], [NGAYSINH_0909], [DIACHI_0909], [MACLB_0909], [MAQG_0909], [SO_0909]) VALUES (CAST(2 AS Numeric(18, 0)), N'Nguyễn Công Vinh', N'Tiền đạo', CAST(N'1992-03-10T00:00:00.000' AS DateTime), NULL, N'HAGL', N'VN', 9)
INSERT [dbo].[CAUTHU_TueLDT] ([MACT_0909], [HOTEN_0909], [VITRI_0909], [NGAYSINH_0909], [DIACHI_0909], [MACLB_0909], [MAQG_0909], [SO_0909]) VALUES (CAST(3 AS Numeric(18, 0)), N'Trần Tấn Tài', N'Tiền vệ', CAST(N'1989-11-12T00:00:00.000' AS DateTime), NULL, N'BBD', N'VN', 8)
INSERT [dbo].[CAUTHU_TueLDT] ([MACT_0909], [HOTEN_0909], [VITRI_0909], [NGAYSINH_0909], [DIACHI_0909], [MACLB_0909], [MAQG_0909], [SO_0909]) VALUES (CAST(4 AS Numeric(18, 0)), N'Phan Hồng Sơn', N'Thủ môn', CAST(N'1991-06-10T00:00:00.000' AS DateTime), NULL, N'HAGL', N'VN', 1)
INSERT [dbo].[CAUTHU_TueLDT] ([MACT_0909], [HOTEN_0909], [VITRI_0909], [NGAYSINH_0909], [DIACHI_0909], [MACLB_0909], [MAQG_0909], [SO_0909]) VALUES (CAST(5 AS Numeric(18, 0)), N'Ronaldo', N'Tiền vệ', CAST(N'1989-12-12T00:00:00.000' AS DateTime), NULL, N'SDN', N'BRA', 7)
INSERT [dbo].[CAUTHU_TueLDT] ([MACT_0909], [HOTEN_0909], [VITRI_0909], [NGAYSINH_0909], [DIACHI_0909], [MACLB_0909], [MAQG_0909], [SO_0909]) VALUES (CAST(6 AS Numeric(18, 0)), N'Robinho', N'Tiền vệ', CAST(N'1989-10-12T00:00:00.000' AS DateTime), NULL, N'SDN', N'BRA', 8)
INSERT [dbo].[CAUTHU_TueLDT] ([MACT_0909], [HOTEN_0909], [VITRI_0909], [NGAYSINH_0909], [DIACHI_0909], [MACLB_0909], [MAQG_0909], [SO_0909]) VALUES (CAST(7 AS Numeric(18, 0)), N'Vidic', N'Hậu vệ', CAST(N'1987-10-15T00:00:00.000' AS DateTime), NULL, N'HAGL', N'ANH', 3)
INSERT [dbo].[CAUTHU_TueLDT] ([MACT_0909], [HOTEN_0909], [VITRI_0909], [NGAYSINH_0909], [DIACHI_0909], [MACLB_0909], [MAQG_0909], [SO_0909]) VALUES (CAST(8 AS Numeric(18, 0)), N'Trần Văn Santos', N'Thủ môn', CAST(N'1990-10-21T00:00:00.000' AS DateTime), NULL, N'BBD', N'BRA', 1)
INSERT [dbo].[CAUTHU_TueLDT] ([MACT_0909], [HOTEN_0909], [VITRI_0909], [NGAYSINH_0909], [DIACHI_0909], [MACLB_0909], [MAQG_0909], [SO_0909]) VALUES (CAST(9 AS Numeric(18, 0)), N'Nguyễn Trường Sơn', N'Hậu vệ', CAST(N'1993-08-26T00:00:00.000' AS DateTime), NULL, N'BBD', N'VN', 4)
SET IDENTITY_INSERT [dbo].[CAUTHU_TueLDT] OFF
GO
INSERT [dbo].[HLV_CLB_TueLDT] ([MAHLV_0909], [MACLB_0909], [VAITRO_0909]) VALUES (N'HLV01', N'BBD', N'HLV Chính')
INSERT [dbo].[HLV_CLB_TueLDT] ([MAHLV_0909], [MACLB_0909], [VAITRO_0909]) VALUES (N'HLV02', N'SDN', N'HLV Chính')
INSERT [dbo].[HLV_CLB_TueLDT] ([MAHLV_0909], [MACLB_0909], [VAITRO_0909]) VALUES (N'HLV03', N'HAGL', N'HLV Chính')
INSERT [dbo].[HLV_CLB_TueLDT] ([MAHLV_0909], [MACLB_0909], [VAITRO_0909]) VALUES (N'HLV04', N'KKH', N'HLV Chính')
INSERT [dbo].[HLV_CLB_TueLDT] ([MAHLV_0909], [MACLB_0909], [VAITRO_0909]) VALUES (N'HLV05', N'GDT', N'HLV Chính')
INSERT [dbo].[HLV_CLB_TueLDT] ([MAHLV_0909], [MACLB_0909], [VAITRO_0909]) VALUES (N'HLV06', N'BBD', N'HLV thủ môn')
GO
INSERT [dbo].[HUANLUYENVIEN_TueLDT] ([MAHLV_0909], [TENHLV_0909], [NGAYSINH_0909], [DIACHI_0909], [DIENTHOAI_0909], [MAQG_0909]) VALUES (N'HLV01', N'Vital', CAST(N'1955-10-15T00:00:00.000' AS DateTime), NULL, N'0918011075', N'BDN')
INSERT [dbo].[HUANLUYENVIEN_TueLDT] ([MAHLV_0909], [TENHLV_0909], [NGAYSINH_0909], [DIACHI_0909], [DIENTHOAI_0909], [MAQG_0909]) VALUES (N'HLV02', N'Lê Huỳnh Đức', CAST(N'1972-05-20T00:00:00.000' AS DateTime), NULL, N'01223456789', N'VN')
INSERT [dbo].[HUANLUYENVIEN_TueLDT] ([MAHLV_0909], [TENHLV_0909], [NGAYSINH_0909], [DIACHI_0909], [DIENTHOAI_0909], [MAQG_0909]) VALUES (N'HLV03', N'Kiatisuk', CAST(N'1970-12-11T00:00:00.000' AS DateTime), NULL, N'01990123456', N'THA')
INSERT [dbo].[HUANLUYENVIEN_TueLDT] ([MAHLV_0909], [TENHLV_0909], [NGAYSINH_0909], [DIACHI_0909], [DIENTHOAI_0909], [MAQG_0909]) VALUES (N'HLV04', N'Hoàng Anh Tuấn', CAST(N'1970-06-10T00:00:00.000' AS DateTime), NULL, N'0989112233', N'VN')
INSERT [dbo].[HUANLUYENVIEN_TueLDT] ([MAHLV_0909], [TENHLV_0909], [NGAYSINH_0909], [DIACHI_0909], [DIENTHOAI_0909], [MAQG_0909]) VALUES (N'HLV05', N'Trần Công Minh', CAST(N'1973-07-07T00:00:00.000' AS DateTime), NULL, N'0909099990', N'VN')
INSERT [dbo].[HUANLUYENVIEN_TueLDT] ([MAHLV_0909], [TENHLV_0909], [NGAYSINH_0909], [DIACHI_0909], [DIENTHOAI_0909], [MAQG_0909]) VALUES (N'HLV06', N'Trần Văn Phúc', CAST(N'1965-03-02T00:00:00.000' AS DateTime), NULL, N'01650101234', N'VN')
GO
INSERT [dbo].[QUOCGIA_TueLDT] ([MAQG_0909], [TENQG_0909]) VALUES (N'Anh', N'Anh Quốc')
INSERT [dbo].[QUOCGIA_TueLDT] ([MAQG_0909], [TENQG_0909]) VALUES (N'BDN', N'Bồ Đào Nha')
INSERT [dbo].[QUOCGIA_TueLDT] ([MAQG_0909], [TENQG_0909]) VALUES (N'BRA', N'Bra-xin')
INSERT [dbo].[QUOCGIA_TueLDT] ([MAQG_0909], [TENQG_0909]) VALUES (N'ITA', N'Ý')
INSERT [dbo].[QUOCGIA_TueLDT] ([MAQG_0909], [TENQG_0909]) VALUES (N'TBN', N'Tây Ban Nha')
INSERT [dbo].[QUOCGIA_TueLDT] ([MAQG_0909], [TENQG_0909]) VALUES (N'THA', N'Thái Lan')
INSERT [dbo].[QUOCGIA_TueLDT] ([MAQG_0909], [TENQG_0909]) VALUES (N'VN', N'Việt Nam')
GO
INSERT [dbo].[SANVD_TueLDT] ([MASAN_0909], [TENSAN_0909], [DIACHI_0909]) VALUES (N'CL', N'Chi Lang', N'127 Võ Văn Tần, Ðà Nẵng')
INSERT [dbo].[SANVD_TueLDT] ([MASAN_0909], [TENSAN_0909], [DIACHI_0909]) VALUES (N'GD', N'Gò Ðậu', N'123 QL1, TX Thủ Dầu Một, Bình Dương')
INSERT [dbo].[SANVD_TueLDT] ([MASAN_0909], [TENSAN_0909], [DIACHI_0909]) VALUES (N'LA', N'Long An', N'102 Hùng Vương, TP Tân An, Long An')
INSERT [dbo].[SANVD_TueLDT] ([MASAN_0909], [TENSAN_0909], [DIACHI_0909]) VALUES (N'NT', N'Nha Trang', N'128 Phan Chu Trinh, Nha Trang, Khánh Hòa')
INSERT [dbo].[SANVD_TueLDT] ([MASAN_0909], [TENSAN_0909], [DIACHI_0909]) VALUES (N'PL', N'Pleiku', N'22 Hồ Tùng Mậu, Thống Nhất, Thị xã Pleiku, Gia Lai')
INSERT [dbo].[SANVD_TueLDT] ([MASAN_0909], [TENSAN_0909], [DIACHI_0909]) VALUES (N'TH', N'Tuy Hòa', N'57 Tru?ng Chinh, Tuy Hòa, Phú Yên')
GO
INSERT [dbo].[TINH_TueLDT] ([MATINH_0909], [TENTINH_0909]) VALUES (N'BD', N'Bình Dương')
INSERT [dbo].[TINH_TueLDT] ([MATINH_0909], [TENTINH_0909]) VALUES (N'DN', N'Ðà Nẵng')
INSERT [dbo].[TINH_TueLDT] ([MATINH_0909], [TENTINH_0909]) VALUES (N'GL', N'Gia Lai')
INSERT [dbo].[TINH_TueLDT] ([MATINH_0909], [TENTINH_0909]) VALUES (N'KH', N'Khánh Hòa')
INSERT [dbo].[TINH_TueLDT] ([MATINH_0909], [TENTINH_0909]) VALUES (N'LA', N'Long An')
INSERT [dbo].[TINH_TueLDT] ([MATINH_0909], [TENTINH_0909]) VALUES (N'PY', N'Phú Yên')
GO
SET IDENTITY_INSERT [dbo].[TRANDAU_TueLDT] ON 

INSERT [dbo].[TRANDAU_TueLDT] ([MATRAN_0909], [NAM_0909], [VONG_0909], [NGAYTD_0909], [MACLB1_0909], [MACLB2_0909], [MASAN_0909], [KETQUA_0909]) VALUES (CAST(1 AS Numeric(18, 0)), 2009, 1, CAST(N'2009-02-07T00:00:00.000' AS DateTime), N'BBD', N'SDN', N'GD', N'3-0')
INSERT [dbo].[TRANDAU_TueLDT] ([MATRAN_0909], [NAM_0909], [VONG_0909], [NGAYTD_0909], [MACLB1_0909], [MACLB2_0909], [MASAN_0909], [KETQUA_0909]) VALUES (CAST(2 AS Numeric(18, 0)), 2009, 1, CAST(N'2009-02-07T00:00:00.000' AS DateTime), N'KKH', N'GDT', N'NT', N'1-1')
INSERT [dbo].[TRANDAU_TueLDT] ([MATRAN_0909], [NAM_0909], [VONG_0909], [NGAYTD_0909], [MACLB1_0909], [MACLB2_0909], [MASAN_0909], [KETQUA_0909]) VALUES (CAST(3 AS Numeric(18, 0)), 2009, 2, CAST(N'2009-02-16T00:00:00.000' AS DateTime), N'SDN', N'KKH', N'CL', N'2-2')
INSERT [dbo].[TRANDAU_TueLDT] ([MATRAN_0909], [NAM_0909], [VONG_0909], [NGAYTD_0909], [MACLB1_0909], [MACLB2_0909], [MASAN_0909], [KETQUA_0909]) VALUES (CAST(4 AS Numeric(18, 0)), 2009, 2, CAST(N'2009-02-16T00:00:00.000' AS DateTime), N'TPY', N'BBD', N'TH', N'5-0')
INSERT [dbo].[TRANDAU_TueLDT] ([MATRAN_0909], [NAM_0909], [VONG_0909], [NGAYTD_0909], [MACLB1_0909], [MACLB2_0909], [MASAN_0909], [KETQUA_0909]) VALUES (CAST(5 AS Numeric(18, 0)), 2009, 3, CAST(N'2009-03-01T00:00:00.000' AS DateTime), N'TPY', N'GDT', N'TH', N'0-2')
INSERT [dbo].[TRANDAU_TueLDT] ([MATRAN_0909], [NAM_0909], [VONG_0909], [NGAYTD_0909], [MACLB1_0909], [MACLB2_0909], [MASAN_0909], [KETQUA_0909]) VALUES (CAST(6 AS Numeric(18, 0)), 2009, 3, CAST(N'2009-03-01T00:00:00.000' AS DateTime), N'KKH', N'BBD', N'NT', N'0-1')
INSERT [dbo].[TRANDAU_TueLDT] ([MATRAN_0909], [NAM_0909], [VONG_0909], [NGAYTD_0909], [MACLB1_0909], [MACLB2_0909], [MASAN_0909], [KETQUA_0909]) VALUES (CAST(7 AS Numeric(18, 0)), 2009, 4, CAST(N'2009-03-07T00:00:00.000' AS DateTime), N'KKH', N'TPY', N'NT', N'1-0')
INSERT [dbo].[TRANDAU_TueLDT] ([MATRAN_0909], [NAM_0909], [VONG_0909], [NGAYTD_0909], [MACLB1_0909], [MACLB2_0909], [MASAN_0909], [KETQUA_0909]) VALUES (CAST(8 AS Numeric(18, 0)), 2009, 4, CAST(N'2009-03-07T00:00:00.000' AS DateTime), N'BBD', N'GDT', N'GD', N'2-2')
SET IDENTITY_INSERT [dbo].[TRANDAU_TueLDT] OFF
GO
ALTER TABLE [dbo].[BANGXH_TueLDT]  WITH CHECK ADD  CONSTRAINT [FK_BANGXH_TueLDT_CAULACBO_TueLDT] FOREIGN KEY([MACLB_0909])
REFERENCES [dbo].[CAULACBO_TueLDT] ([MACLB_0909])
GO
ALTER TABLE [dbo].[BANGXH_TueLDT] CHECK CONSTRAINT [FK_BANGXH_TueLDT_CAULACBO_TueLDT]
GO
ALTER TABLE [dbo].[CAULACBO_TueLDT]  WITH CHECK ADD  CONSTRAINT [FK_CAULACBO_TueLDT_SANVD_TueLDT] FOREIGN KEY([MASAN_0909])
REFERENCES [dbo].[SANVD_TueLDT] ([MASAN_0909])
GO
ALTER TABLE [dbo].[CAULACBO_TueLDT] CHECK CONSTRAINT [FK_CAULACBO_TueLDT_SANVD_TueLDT]
GO
ALTER TABLE [dbo].[CAULACBO_TueLDT]  WITH CHECK ADD  CONSTRAINT [FK_CAULACBO_TueLDT_TINH_TueLDT] FOREIGN KEY([MATINH_0909])
REFERENCES [dbo].[TINH_TueLDT] ([MATINH_0909])
GO
ALTER TABLE [dbo].[CAULACBO_TueLDT] CHECK CONSTRAINT [FK_CAULACBO_TueLDT_TINH_TueLDT]
GO
ALTER TABLE [dbo].[CAUTHU_TueLDT]  WITH CHECK ADD  CONSTRAINT [FK_CAUTHU_TueLDT_CAULACBO_TueLDT] FOREIGN KEY([MACLB_0909])
REFERENCES [dbo].[CAULACBO_TueLDT] ([MACLB_0909])
GO
ALTER TABLE [dbo].[CAUTHU_TueLDT] CHECK CONSTRAINT [FK_CAUTHU_TueLDT_CAULACBO_TueLDT]
GO
ALTER TABLE [dbo].[CAUTHU_TueLDT]  WITH CHECK ADD  CONSTRAINT [FK_CAUTHU_TueLDT_QUOCGIA_TueLDT] FOREIGN KEY([MAQG_0909])
REFERENCES [dbo].[QUOCGIA_TueLDT] ([MAQG_0909])
GO
ALTER TABLE [dbo].[CAUTHU_TueLDT] CHECK CONSTRAINT [FK_CAUTHU_TueLDT_QUOCGIA_TueLDT]
GO
ALTER TABLE [dbo].[HLV_CLB_TueLDT]  WITH CHECK ADD  CONSTRAINT [FK_HLV_CLB_TueLDT_CAULACBO_TueLDT] FOREIGN KEY([MACLB_0909])
REFERENCES [dbo].[CAULACBO_TueLDT] ([MACLB_0909])
GO
ALTER TABLE [dbo].[HLV_CLB_TueLDT] CHECK CONSTRAINT [FK_HLV_CLB_TueLDT_CAULACBO_TueLDT]
GO
ALTER TABLE [dbo].[HLV_CLB_TueLDT]  WITH CHECK ADD  CONSTRAINT [FK_HLV_CLB_TueLDT_HUANLUYENVIEN_TueLDT] FOREIGN KEY([MAHLV_0909])
REFERENCES [dbo].[HUANLUYENVIEN_TueLDT] ([MAHLV_0909])
GO
ALTER TABLE [dbo].[HLV_CLB_TueLDT] CHECK CONSTRAINT [FK_HLV_CLB_TueLDT_HUANLUYENVIEN_TueLDT]
GO
ALTER TABLE [dbo].[HUANLUYENVIEN_TueLDT]  WITH CHECK ADD  CONSTRAINT [FK_HUANLUYENVIEN_TueLDT_QUOCGIA_TueLDT] FOREIGN KEY([MAQG_0909])
REFERENCES [dbo].[QUOCGIA_TueLDT] ([MAQG_0909])
GO
ALTER TABLE [dbo].[HUANLUYENVIEN_TueLDT] CHECK CONSTRAINT [FK_HUANLUYENVIEN_TueLDT_QUOCGIA_TueLDT]
GO
ALTER TABLE [dbo].[TRANDAU_TueLDT]  WITH CHECK ADD  CONSTRAINT [FK_TRANDAU_TueLDT_CAULACBO_TueLDT] FOREIGN KEY([MACLB1_0909])
REFERENCES [dbo].[CAULACBO_TueLDT] ([MACLB_0909])
GO
ALTER TABLE [dbo].[TRANDAU_TueLDT] CHECK CONSTRAINT [FK_TRANDAU_TueLDT_CAULACBO_TueLDT]
GO
ALTER TABLE [dbo].[TRANDAU_TueLDT]  WITH CHECK ADD  CONSTRAINT [FK_TRANDAU_TueLDT_CAULACBO_TueLDT1] FOREIGN KEY([MACLB2_0909])
REFERENCES [dbo].[CAULACBO_TueLDT] ([MACLB_0909])
GO
ALTER TABLE [dbo].[TRANDAU_TueLDT] CHECK CONSTRAINT [FK_TRANDAU_TueLDT_CAULACBO_TueLDT1]
GO
ALTER TABLE [dbo].[TRANDAU_TueLDT]  WITH CHECK ADD  CONSTRAINT [FK_TRANDAU_TueLDT_SANVD_TueLDT] FOREIGN KEY([MASAN_0909])
REFERENCES [dbo].[SANVD_TueLDT] ([MASAN_0909])
GO
ALTER TABLE [dbo].[TRANDAU_TueLDT] CHECK CONSTRAINT [FK_TRANDAU_TueLDT_SANVD_TueLDT]
GO
USE [master]
GO
ALTER DATABASE [QLBongDa_TueLDT_865] SET  READ_WRITE 
GO
