USE [master]
GO
/****** Object:  Database [Kurzusok]    Script Date: 2021. 12. 08. 18:28:59 ******/
CREATE DATABASE [Kurzusok]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Kurzusok', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Kurzusok.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Kurzusok_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Kurzusok_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Kurzusok] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Kurzusok].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Kurzusok] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Kurzusok] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Kurzusok] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Kurzusok] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Kurzusok] SET ARITHABORT OFF 
GO
ALTER DATABASE [Kurzusok] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Kurzusok] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Kurzusok] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Kurzusok] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Kurzusok] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Kurzusok] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Kurzusok] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Kurzusok] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Kurzusok] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Kurzusok] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Kurzusok] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Kurzusok] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Kurzusok] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Kurzusok] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Kurzusok] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Kurzusok] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Kurzusok] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Kurzusok] SET RECOVERY FULL 
GO
ALTER DATABASE [Kurzusok] SET  MULTI_USER 
GO
ALTER DATABASE [Kurzusok] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Kurzusok] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Kurzusok] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Kurzusok] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Kurzusok] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Kurzusok] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Kurzusok', N'ON'
GO
ALTER DATABASE [Kurzusok] SET QUERY_STORE = OFF
GO
USE [Kurzusok]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[course_id] [int] IDENTITY(1,1) NOT NULL,
	[subject_id] [int] NOT NULL,
	[course_type] [varchar](100) NOT NULL,
	[members] [int] NOT NULL,
	[classroom] [varchar](100) NULL,
	[comment] [varchar](max) NULL,
	[neptun_ok] [bit] NOT NULL,
	[software] [varchar](100) NULL,
	[course_code] [int] NOT NULL,
 CONSTRAINT [PK_COURSES] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courses_teachers]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courses_teachers](
	[course_id] [int] NOT NULL,
	[teacher_id] [int] NOT NULL,
	[loads] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[position_id] [int] IDENTITY(1,1) NOT NULL,
	[position_name] [varchar](100) NOT NULL,
	[hoursperweek] [int] NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[position_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgrammeDetails]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgrammeDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[programme_id] [int] NOT NULL,
	[subject_code] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[e_hours] [int] NULL,
	[gy_hours] [int] NULL,
	[lab_hours] [int] NULL,
	[correspond_hours] [int] NULL,
	[credit] [int] NOT NULL,
	[recommended_semester] [int] NULL,
	[obligatory] [bit] NOT NULL,
 CONSTRAINT [PK_ProgrammeDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programmes]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programmes](
	[programme_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[training] [varchar](100) NOT NULL,
 CONSTRAINT [PK_SZAKOK] PRIMARY KEY CLUSTERED 
(
	[programme_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semester](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [varchar](100) NOT NULL,
	[weeks] [int] NOT NULL,
 CONSTRAINT [PK_SEMESTER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subject_programmes]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subject_programmes](
	[subject_id] [int] NOT NULL,
	[programme_id] [int] NOT NULL,
	[obligatory] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[subject_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[e_hours] [int] NULL,
	[gy_hours] [int] NULL,
	[subject_code] [varchar](100) NOT NULL,
	[semester_id] [int] NOT NULL,
	[education_type] [varchar](50) NOT NULL,
	[l_hours] [int] NULL,
	[correspond_hours] [int] NULL,
 CONSTRAINT [PK_SUBJECTS] PRIMARY KEY CLUSTERED 
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 2021. 12. 08. 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[teacher_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[is_working] [bit] NOT NULL,
	[position_id] [int] NOT NULL,
 CONSTRAINT [PK_TEACHERS] PRIMARY KEY CLUSTERED 
(
	[teacher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'3.1.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210927131452_initialsetup', N'3.1.18')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'27f39d9f-91dd-4d30-b278-05469b9286e9', N'Admin', N'ADMIN', N'a67cc832-e099-454a-8a4e-5392d477bed6')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'aab1615a-a81f-467d-9c7d-d37b00398195', N'Felhasználó', N'FELHASZNÁLÓ', N'39def2c3-e7e9-4660-952b-3b8508070299')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'047609da-2f26-494e-bdb8-f7a9f916a2fd', N'27f39d9f-91dd-4d30-b278-05469b9286e9')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'047609da-2f26-494e-bdb8-f7a9f916a2fd', N'Szabolcsoló Varga', N'SZABOLCSOLÓ VARGA', N'varga2szabolcs2@gmail.com', N'VARGA2SZABOLCS2@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEC9noMzmV8EtMBEsdTtcyqmPgQUNUVFvKHCcqp86vQ2AnBLbXwf4WY73lFew5rm9Ww==', N'HHNWUWY4775MEMGBSYO2IYKA64OONY45', N'9af9e8e0-8a69-4ace-a043-a35c1478d9d8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b23a79b4-d794-454b-b5c9-14610a4ee233', N'Zöllei Alex', N'ZÖLLEI ALEX', N'zolleialex@gmail.com', N'ZOLLEIALEX@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKN4SCQteGs0//0imBdSeNUwgFB/6hjL/1xRoV7IHQRZjdeM0Si8fqXj09mG+Ia72A==', N'WSAQKVOVJMC6B76X6E5QX3PXWBGUXDGL', N'36cf5a6e-3fe9-4c74-8648-da2c2aa5f6b9', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (2, 2, N'Elmélet', 250, N'C301', NULL, 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (3, 3, N'Elmélet', 300, NULL, N'[[$Szabolcsoló Varga$]]Úgy kell tervezni a gyakorlatokat, hogy az első néhány hét gyakorlatilag előadás lesz. Ha eléggé előrejutottak az anyagban, akkor tartanak majd tényleges gyakorlatokat. A gyakorlatok ismehetnek sima, nagy létszámú terembe, ha a hallgatók hoznak magukkal laptopot.', 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (4, 3, N'Gyakorlat', 150, NULL, N'[[$Szabolcsoló Varga$]]Úgy kell tervezni a gyakorlatokat, hogy az első néhány hét gyakorlatilag előadás lesz. Ha eléggé előrejutottak az anyagban, akkor tartanak majd tényleges gyakorlatokat. A gyakorlatok ismehetnek sima, nagy létszámú terembe, ha a hallgatók hoznak magukkal laptopot.', 0, NULL, 2)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (5, 3, N'Gyakorlat', 150, NULL, NULL, 0, NULL, 3)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (6, 4, N'Elmélet', 410, N'D104', NULL, 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (7, 4, N'Gyakorlat', 41, N'D104', NULL, 0, NULL, 2)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (8, 4, N'Gyakorlat', 41, N'D104', NULL, 0, NULL, 3)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (9, 4, N'Gyakorlat', 41, N'D104', NULL, 0, NULL, 4)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (10, 4, N'Gyakorlat', 41, N'D104', NULL, 0, NULL, 5)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (11, 4, N'Gyakorlat', 41, N'D104', NULL, 0, NULL, 6)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (12, 4, N'Gyakorlat', 41, N'D104', NULL, 0, NULL, 7)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (13, 4, N'Gyakorlat', 41, N'D104', NULL, 0, NULL, 7)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (14, 4, N'Gyakorlat', 41, N'D104', NULL, 0, NULL, 8)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (15, 4, N'Gyakorlat', 41, N'D104', NULL, 0, NULL, 9)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (16, 4, N'Gyakorlat', 41, N'D104', NULL, 0, NULL, 10)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (17, 4, N'Gyakorlat', 41, N'D104', NULL, 0, NULL, 11)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (18, 5, N'Elmélet', 260, NULL, N'[[$Szabolcsoló Varga$]]Lehetőleg legyen a reggeli órákban.', 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (19, 5, N'Gyakorlat', 260, NULL, N'[[$Szabolcsoló Varga$]]Lehetőleg legyen a reggeli órákban.', 0, NULL, 2)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (20, 6, N'Elmélet', 110, NULL, N'[[$Szabolcsoló Varga$]]Órák egymás után! Villamosmérnököknek ne hirdessük meg alapból, csak ha igény jelentkezik rá a hallgatóktól, és Lencse Gábor hozzájárulását adja a kihirdetéshez!', 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (21, 6, N'Gyakorlat', 110, NULL, NULL, 0, NULL, 2)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (22, 7, N'Elmélet', 70, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (23, 7, N'Gyakorlat', 70, NULL, NULL, 0, NULL, 2)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (24, 8, N'Elmélet', 70, NULL, N'[[$Szabolcsoló Varga$]]Először csak GI-seknek megnyitni! (A többieknek ez csak választható tárgy.)', 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (25, 8, N'Gyakorlat', 35, N'Út220', NULL, 0, NULL, 2)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (26, 8, N'Gyakorlat', 35, N'Út220', NULL, 0, NULL, 3)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (27, 9, N'Elmélet', 100, NULL, N'[[$Szabolcsoló Varga$]]reggel legyen első óra és vagy a hét első napja vagy az utolsó', 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (28, 9, N'Gyakorlat', 100, N'C100', N'[[$Szabolcsoló Varga$]]gyakorlat ha lehet tömbösítve legyen', 0, NULL, 2)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (29, 10, N'Elmélet', 30, NULL, N'[[$Szabolcsoló Varga$]] Informatikai beruházások megtérülése I-gyel (NGB_IN078_1) összevonva! a 2 kurzus összlétszáma legyen 30, korlátozás nélkül', 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (30, 11, N'Elmélet', 40, NULL, N'[[$Szabolcsoló Varga$]]Változásmenedzsmenttel (NGB_IN074_1) összevonni! új kód 40 fő, régi kód 10 fő, összesen 50 fő. 3.nap után létszámkorlát eltörölve Taki kérésére', 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (31, 12, N'Elmélet', 40, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (32, 13, N'Elmélet', 40, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (33, 14, N'Elmélet', 20, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (34, 15, N'Elmélet', 40, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (35, 16, N'Elmélet', 50, NULL, N'[[$Szabolcsoló Varga$]]Mónus Imréné kiírta, de oktató nélkül', 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (36, 17, N'Elmélet', 20, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (37, 18, N'Elmélet', 30, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (38, 19, N'Elmélet', 20, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (39, 20, N'Elmélet', 30, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (40, 21, N'Elmélet', 50, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (41, 22, N'Elmélet', 30, NULL, N'[[$Szabolcsoló Varga$]]•szombati napokon az első blokkban ne legyen óra •az órák amennyire lehet tömbösítve legyenek', 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (42, 23, N'Elmélet', 30, N'D104', NULL, 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (43, 24, N'Elmélet', 30, N'D104', N'[[$Szabolcsoló Varga$]]Összevonva LGB_IN023_2 Web-technológia II-vel.', 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (44, 25, N'Elmélet', 20, NULL, N'[[$Szabolcsoló Varga$]]Az órák szombati napon legyenek', 0, NULL, 1)
INSERT [dbo].[Courses] ([course_id], [subject_id], [course_type], [members], [classroom], [comment], [neptun_ok], [software], [course_code]) VALUES (45, 26, N'Elmélet', 30, NULL, NULL, 0, NULL, 1)
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (2, 1, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (2, 2, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (3, 3, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (4, 3, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (5, 5, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (5, 4, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (6, 6, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (7, 6, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (8, 7, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (9, 8, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (10, 9, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (11, 10, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (12, 10, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (13, 10, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (14, 10, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (15, 10, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (16, 10, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (17, 10, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (18, 11, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (18, 2, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (19, 11, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (19, 2, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (20, 12, 90)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (20, 13, 10)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (21, 12, 90)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (21, 13, 10)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (22, 2, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (23, 15, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (24, 17, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (24, 13, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (25, 13, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (25, 17, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (26, 17, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (26, 13, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (27, 16, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (28, 14, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (28, 4, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (29, 19, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (30, 17, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (37, 21, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (38, 1, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (31, 6, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (32, 6, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (33, 18, 67)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (33, 9, 33)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (34, 2, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (35, 2, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (36, 17, 33)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (36, 20, 67)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (38, 22, 50)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (45, 4, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (39, 22, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (40, 12, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (41, 19, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (42, 23, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (43, 6, 100)
INSERT [dbo].[courses_teachers] ([course_id], [teacher_id], [loads]) VALUES (44, 16, 100)
GO
SET IDENTITY_INSERT [dbo].[Positions] ON 

INSERT [dbo].[Positions] ([position_id], [position_name], [hoursperweek]) VALUES (1, N'Egyetemi, főiskolai tanár', 8)
INSERT [dbo].[Positions] ([position_id], [position_name], [hoursperweek]) VALUES (2, N'Egyetemi, főiskolai docens', 10)
INSERT [dbo].[Positions] ([position_id], [position_name], [hoursperweek]) VALUES (3, N'Adjunktus, tanársegéd, mesteroktató', 12)
INSERT [dbo].[Positions] ([position_id], [position_name], [hoursperweek]) VALUES (4, N'Tanszéki mérnök', 9)
INSERT [dbo].[Positions] ([position_id], [position_name], [hoursperweek]) VALUES (5, N'Tanári munkakörök', 20)
SET IDENTITY_INSERT [dbo].[Positions] OFF
GO
SET IDENTITY_INSERT [dbo].[ProgrammeDetails] ON 

INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (85, 3, N'GKNB_INTM012', N'Számítógépek működése', 3, 2, 0, NULL, 8, 1, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (86, 3, N'GKNB_INTM001', N'Rendszer és irányítás', 2, 0, 0, NULL, 3, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (87, 3, N'GKNB_INTM018', N'Számítógép-hálózatok', 3, 1, 0, NULL, 6, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (88, 3, N'GKNB_INTM021', N'Programozás', 2, 2, 0, NULL, 6, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (89, 3, N'GKNB_INTM022', N'Projektmunka és szoftvertechnológia', 1, 2, 0, NULL, 6, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (90, 3, N'GKNB_INTM020', N'Mikroelektromechanikai rendszerek', 0, 2, 0, NULL, 3, 3, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (91, 3, N'GKNB_INTM024', N'OO programozás és adatbázis-kezelés', 1, 4, 0, NULL, 7, 3, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (92, 3, N'GKNB_INTM025', N'Rendszerüzemeltetés és biztonság', 2, 0, 0, NULL, 3, 3, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (93, 3, N'GKNB_INTM002', N'Mesterséges intelligencia', 2, 2, 0, NULL, 6, 4, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (94, 3, N'GKNB_INTM003', N'Kiberfizikai rendszerek', 2, 2, 0, NULL, 6, 4, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (95, 3, N'GKNB_INTM004', N'Projektmunka 1.', 0, 0, 0, NULL, 6, 4, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (96, 3, N'GKNB_INTM005', N'Projektmunka 2.', 0, 0, 0, NULL, 6, 5, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (97, 3, N'GKNB_INTM006', N'Modern szoftverfejlesztési eszközök', 0, 2, 0, NULL, 3, 5, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (98, 3, N'GKNB_INTM007', N'Vállalati információs rendszerek', 2, 0, 0, NULL, 3, 5, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (99, 3, N'GKNB_INTM019', N'Modellezés és optimalizálás a gyakorlatban', 2, 2, 0, NULL, 6, 5, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (100, 3, N'GKNB_INTM009', N'Korszerű hálózati alkalmazások', 4, 0, 0, NULL, 6, 6, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (101, 3, N'GKNB_INTM096', N'Szakdolgozati konzultáció I.', 0, 0, 0, NULL, 7, 6, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (102, 3, N'GKNB_INTM008', N'IT-szolgáltatások', 2, 0, 0, NULL, 3, 7, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (103, 3, N'GKNB_INTM097', N'Szakdolgozati konzultáció II.', 0, 0, 0, NULL, 8, 7, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (104, 3, N'GKNB_INTM010', N'Adatbázisok', 2, 1, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (105, 3, N'GKNB_INTM011', N'Rendszerfejlesztés', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (106, 3, N'GKNB_INTM013', N'Üzleti célú rendszerek', 2, 1, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (107, 3, N'GKNB_INTM026', N'C++', 1, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (108, 3, N'GKNB_INTM027', N'Emberközpontú infokommunikáció', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (109, 3, N'GKNB_INTM028', N'Felhasználói interfészek tervezése (Sw ergonómia)', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (110, 3, N'GKNB_INTM029', N'Funkcionális programozás', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (111, 3, N'GKNB_INTM030', N'Gyakorlatorientált sw-technológia', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (112, 3, N'GKNB_INTM031', N'Humanoid informatika', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (113, 3, N'GKNB_INTM032', N'Humanoid robotok irányítása', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (114, 3, N'GKNB_INTM033', N'Információ modellezés', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (115, 3, N'GKNB_INTM034', N'Interaktív multimédia alkalmazások', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (116, 3, N'GKNB_INTM035', N'IT a járműgyártásban', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (117, 3, N'GKNB_INTM036', N'IT-változásmenedzsment', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (118, 3, N'GKNB_INTM037', N'Java programozás', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (119, 3, N'GKNB_INTM038', N'Gépi látás', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (120, 3, N'GKNB_INTM039', N'Kiterjesztett kollaboráció a jövő Internetén', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (121, 3, N'GKNB_INTM040', N'Mobilalkalmazás-fejlesztés', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (122, 3, N'GKNB_INTM041', N'PHP', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (123, 3, N'GKNB_INTM042', N'Portálfejlesztés .NET-ben', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (124, 3, N'GKNB_INTM043', N'Programozás.Net-ben', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (125, 3, N'GKNB_INTM044', N'Adatintenzív adatbázis-kezelő alkalmazások', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (126, 3, N'GKNB_INTM045', N'Számítógépes adatbiztonság', 2, 1, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (127, 3, N'GKNB_INTM047', N'IT-beruházások megtérülése I', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (128, 3, N'GKNB_INTM048', N'IT-beruházások megtérülése II', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (129, 3, N'GKNB_INTM049', N'WEB technológia', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (130, 3, N'GKNB_INTM050', N'Ágazati információrendszerek I.', 2, 0, 0, NULL, 3, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (131, 3, N'GKNB_INTM051', N'Ágazati információrendszerek II.', 2, 0, 0, NULL, 3, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (132, 3, N'GKNB_INTM052', N'Banki Informatika', 2, 0, 0, NULL, 3, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (133, 3, N'GKNB_INTM053', N'Beágyazott rendszerek (IoT)', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (134, 3, N'GKNB_INTM054', N'C#', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (179, 4, N'GKNB_INTM012', N'Számítógépek működése', 3, 2, 0, NULL, 8, 1, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (180, 4, N'GKNB_INTM018', N'Számítógép-hálózatok', 3, 1, 0, NULL, 6, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (181, 4, N'GKNB_INTM021', N'Programozás', 2, 2, 0, NULL, 6, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (182, 4, N'GKNB_INTM022', N'Projektmunka és szoftvertechnológia', 1, 2, 0, NULL, 6, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (183, 4, N'GKNB_INTM024', N'OO programozás és adatbázis-kezelés', 1, 4, 0, NULL, 7, 3, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (184, 4, N'GKNB_INTM025', N'Rendszerüzemeltetés és biztonság', 2, 0, 0, NULL, 3, 3, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (185, 4, N'GKNB_INTM004', N'Projektmunka 1.', 0, 0, 0, NULL, 6, 4, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (186, 4, N'GKNB_INTM010', N'Adatbázisok', 2, 1, 0, NULL, 5, 4, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (187, 4, N'GKNB_INTM011', N'Rendszerfejlesztés', 2, 2, 0, NULL, 6, 4, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (188, 4, N'GKNB_INTM005', N'Projektmunka 2.', 0, 0, 0, NULL, 6, 5, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (189, 4, N'GKNB_INTM007', N'Vállalati információs rendszerek', 2, 0, 0, NULL, 3, 5, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (190, 4, N'GKNB_INTM019', N'Modellezés és optimalizálás a gyakorlatban', 2, 2, 0, NULL, 6, 5, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (191, 4, N'GKNB_INTM013', N'Üzleti célú rendszerek', 2, 1, 0, NULL, 5, 6, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (192, 4, N'GKNB_INTM014', N'Üzleti intelligencia', 2, 1, 0, NULL, 5, 6, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (193, 4, N'GKNB_INTM096', N'Szakdolgozati konzultáció I.', 0, 0, 0, NULL, 7, 6, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (194, 4, N'GKNB_INTM008', N'IT-szolgáltatások', 2, 0, 0, NULL, 3, 7, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (195, 4, N'GKNB_INTM097', N'Szakdolgozati konzultáció II.', 0, 0, 0, NULL, 8, 7, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (196, 4, N'GKNB_INTM006', N'Modern szoftverfejlesztési eszközök', 0, 2, 0, NULL, 3, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (197, 4, N'GKNB_INTM009', N'Korszerű hálózati alkalmazások', 4, 0, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (198, 4, N'GKNB_INTM026', N'C++', 1, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (199, 4, N'GKNB_INTM027', N'Emberközpontú infokommunikáció', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (200, 4, N'GKNB_INTM028', N'Felhasználói interfészek tervezése (Sw ergonómia)', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (201, 4, N'GKNB_INTM029', N'Funkcionális programozás', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (202, 4, N'GKNB_INTM030', N'Gyakorlatorientált sw-technológia', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (203, 4, N'GKNB_INTM033', N'Információ modellezés', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (204, 4, N'GKNB_INTM034', N'Interaktív multimédia alkalmazások', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (205, 4, N'GKNB_INTM035', N'IT a járműgyártásban', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (206, 4, N'GKNB_INTM036', N'IT-változásmenedzsment', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (207, 4, N'GKNB_INTM037', N'Java programozás', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (208, 4, N'GKNB_INTM038', N'Gépi látás', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (209, 4, N'GKNB_INTM040', N'Mobilalkalmazás-fejlesztés', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (210, 4, N'GKNB_INTM041', N'PHP', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (211, 4, N'GKNB_INTM042', N'Portálfejlesztés .NET-ben', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (212, 4, N'GKNB_INTM043', N'Programozás.Net-ben', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (213, 4, N'GKNB_INTM044', N'Adatintenzív adatbázis-kezelő alkalmazások', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (214, 4, N'GKNB_INTM045', N'Számítógépes adatbiztonság', 2, 1, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (215, 4, N'GKNB_INTM047', N'IT-beruházások megtérülése I', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (216, 4, N'GKNB_INTM048', N'IT-beruházások megtérülése II', 3, 0, 0, NULL, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (217, 4, N'GKNB_INTM049', N'WEB technológia', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (218, 4, N'GKNB_INTM050', N'Ágazati információrendszerek I.', 2, 0, 0, NULL, 3, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (219, 4, N'GKNB_INTM051', N'Ágazati információrendszerek II.', 2, 0, 0, NULL, 3, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (220, 4, N'GKNB_INTM052', N'Banki Informatika', 2, 0, 0, NULL, 3, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (221, 4, N'GKNB_INTM053', N'Beágyazott rendszerek (IoT)', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (222, 4, N'GKNB_INTM054', N'C#', 2, 2, 0, NULL, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (266, 9, N'GKLB_INTM012', N'Számítógépek működése', NULL, NULL, NULL, 24, 8, 1, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (267, 9, N'GKLB_INTM018', N'Számítógép-hálózatok', NULL, NULL, NULL, 18, 6, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (268, 9, N'GKLB_INTM021', N'Programozás', NULL, NULL, NULL, 18, 6, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (269, 9, N'GKLB_INTM022', N'Projektmunka és szoftvertechnológia', NULL, NULL, NULL, 18, 6, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (270, 9, N'GKLB_INTM024', N'OO programozás és adatbázis-kezelés', NULL, NULL, NULL, 21, 7, 3, 1)
GO
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (271, 9, N'GKLB_INTM025', N'Rendszerüzemeltetés és biztonság', NULL, NULL, NULL, 9, 3, 3, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (272, 9, N'GKLB_INTM004', N'Projektmunka 1.', NULL, NULL, NULL, 0, 6, 4, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (273, 9, N'GKLB_INTM010', N'Adatbázisok', NULL, NULL, NULL, 15, 5, 4, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (274, 9, N'GKLB_INTM011', N'Rendszerfejlesztés', NULL, NULL, NULL, 18, 6, 4, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (275, 9, N'GKLB_INTM005', N'Projektmunka 2.', NULL, NULL, NULL, 0, 6, 5, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (276, 9, N'GKLB_INTM007', N'Vállalati információs rendszerek', NULL, NULL, NULL, 9, 3, 5, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (277, 9, N'GKLB_INTM019', N'Modellezés és optimalizálás a gyakorlatban', NULL, NULL, NULL, 18, 6, 5, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (278, 9, N'GKLB_INTM013', N'Üzleti célú rendszerek', NULL, NULL, NULL, 15, 5, 6, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (279, 9, N'GKLB_INTM014', N'Üzleti intelligencia', NULL, NULL, NULL, 15, 5, 6, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (280, 9, N'GKLB_INTM096', N'Szakdolgozati konzultáció I.', NULL, NULL, NULL, 0, 7, 6, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (281, 9, N'GKLB_INTM008', N'IT-szolgáltatások', NULL, NULL, NULL, 9, 3, 7, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (282, 9, N'GKLB_INTM097', N'Szakdolgozati konzultáció II.', NULL, NULL, NULL, 0, 8, 7, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (283, 9, N'GKLB_INTM006', N'Modern szoftverfejlesztési eszközök', NULL, NULL, NULL, 9, 3, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (284, 9, N'GKLB_INTM009', N'Korszerű hálózati alkalmazások', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (285, 9, N'GKLB_INTM026', N'C++', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (286, 9, N'GKLB_INTM027', N'Emberközpontú infokommunikáció', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (287, 9, N'GKLB_INTM028', N'Felhasználói interfészek tervezése (Sw ergonómia)', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (288, 9, N'GKLB_INTM029', N'Funkcionális programozás', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (289, 9, N'GKLB_INTM030', N'Gyakorlatorientált sw-technológia', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (290, 9, N'GKLB_INTM033', N'Információ modellezés', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (291, 9, N'GKLB_INTM034', N'Interaktív multimédia alkalmazások', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (292, 9, N'GKLB_INTM036', N'IT-változásmenedzsment', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (293, 9, N'GKLB_INTM037', N'Java programozás', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (294, 9, N'GKLB_INTM038', N'Gépi látás', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (295, 9, N'GKLB_INTM040', N'Mobilalkalmazás-fejlesztés', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (296, 9, N'GKLB_INTM041', N'PHP', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (297, 9, N'GKLB_INTM042', N'Portálfejlesztés .NET-ben', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (298, 9, N'GKLB_INTM043', N'Programozás .Net-ben', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (299, 9, N'GKLB_INTM044', N'Adatintenzív adatbázis-kezelő alkalmazások', NULL, NULL, NULL, 3, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (300, 9, N'GKLB_INTM045', N'Számítógépes adatbiztonság', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (301, 9, N'GKLB_INTM047', N'IT-beruházások megtérülése I', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (302, 9, N'GKLB_INTM048', N'IT-beruházások megtérülése II', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (303, 9, N'GKLB_INTM049', N'WEB technológia', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (304, 9, N'GKLB_INTM050', N'Ágazati információrendszerek I.', NULL, NULL, NULL, 9, 3, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (305, 9, N'GKLB_INTM051', N'Ágazati információrendszerek II.', NULL, NULL, NULL, 9, 3, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (306, 9, N'GKLB_INTM052', N'Banki Informatika', NULL, NULL, NULL, 9, 3, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (307, 9, N'GKLB_INTM053', N'Beágyazott rendszerek (IoT)', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (308, 9, N'GKLB_INTM054', N'C#', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (309, 10, N'GKLM_INTM058', N'IT-projektmenedzsment', NULL, NULL, NULL, 12, 4, 1, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (310, 10, N'GKLM_INTM061', N'Vállalatirányítási rendszerek', NULL, NULL, NULL, 18, 6, 1, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (311, 10, N'GKLM_INTM059', N'Tudásbázis-technológiák és -tervezés', NULL, NULL, NULL, 3, 4, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (312, 10, N'GKLM_INTM064', N'Korszerű rendszerfejlesztési technológiák', NULL, NULL, NULL, 9, 3, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (313, 10, N'GKLM_INTM065', N'ERP-bevezetési módszertan', NULL, NULL, NULL, 12, 4, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (314, 10, N'GKLM_INTM098', N'Diplomamunka-konzultáció I.', NULL, NULL, NULL, 0, 15, 3, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (315, 10, N'GKLM_INTM099', N'Diplomamunka-konzultáció II.', NULL, NULL, NULL, 0, 15, 4, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (316, 10, N'GKLM_INTM055', N'Formális nyelvek és automaták', NULL, NULL, NULL, 12, 4, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (317, 10, N'GKLM_INTM057', N'Rendszer és szoftvertesztelés', NULL, NULL, NULL, 12, 4, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (318, 10, N'GKLM_INTM060', N'Diszkrét rendszerek optimalizálása', NULL, NULL, NULL, 3, 4, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (319, 10, N'GKLM_INTM063', N'Fordítóprogramok', NULL, NULL, NULL, 12, 4, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (320, 10, N'GKLM_INTM067', N'Számítási intelligencia', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (321, 10, N'GKLM_INTM068', N'Szoftver-vizsgálat', NULL, NULL, NULL, 12, 4, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (322, 10, N'GKLM_INTM069', N'Bevezetés a bioinformatikába', NULL, NULL, NULL, 12, 4, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (323, 10, N'GKLM_INTM070', N'Bonyolultságelmélet', NULL, NULL, NULL, 12, 4, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (324, 10, N'GKLM_INTM071', N'Dokumentummenedzsment rendszerek', NULL, NULL, NULL, 9, 3, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (325, 10, N'GKLM_INTM072', N'Adatbányászat', NULL, NULL, NULL, 12, 4, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (326, 11, N'GKLB_INTM012', N'Számítógépek működése', NULL, NULL, NULL, 24, 8, 1, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (327, 11, N'GKLB_INTM001', N'Rendszer és irányítás', NULL, NULL, NULL, 9, 3, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (328, 11, N'GKLB_INTM018', N'Számítógép-hálózatok', NULL, NULL, NULL, 18, 6, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (329, 11, N'GKLB_INTM021', N'Programozás', NULL, NULL, NULL, 18, 6, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (330, 11, N'GKLB_INTM022', N'Projektmunka és szoftvertechnológia', NULL, NULL, NULL, 18, 6, 2, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (331, 11, N'GKLB_INTM020', N'Mikroelektromechanikai rendszerek', NULL, NULL, NULL, 9, 3, 3, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (332, 11, N'GKLB_INTM024', N'OO programozás és adatbázis-kezelés', NULL, NULL, NULL, 21, 7, 3, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (333, 11, N'GKLB_INTM025', N'Rendszerüzemeltetés és biztonság', NULL, NULL, NULL, 9, 3, 3, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (334, 11, N'GKLB_INTM002', N'Mesterséges intelligencia', NULL, NULL, NULL, 18, 6, 4, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (335, 11, N'GKLB_INTM003', N'Kiberfizikai rendszerek', NULL, NULL, NULL, 18, 6, 4, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (336, 11, N'GKLB_INTM004', N'Projektmunka 1.', NULL, NULL, NULL, 0, 6, 4, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (337, 11, N'GKLB_INTM005', N'Projektmunka 2.', NULL, NULL, NULL, 0, 6, 5, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (338, 11, N'GKLB_INTM006', N'Modern szoftverfejlesztési eszközök', NULL, NULL, NULL, 9, 3, 5, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (339, 11, N'GKLB_INTM007', N'Vállalati információs rendszerek', NULL, NULL, NULL, 9, 3, 5, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (340, 11, N'GKLB_INTM019', N'Modellezés és optimalizálás a gyakorlatban', NULL, NULL, NULL, 18, 6, 5, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (341, 11, N'GKLB_INTM009', N'Korszerű hálózati alkalmazások', NULL, NULL, NULL, 18, 6, 6, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (342, 11, N'GKLB_INTM096', N'Szakdolgozati konzultáció I.', NULL, NULL, NULL, 0, 7, 6, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (343, 11, N'GKLB_INTM008', N'IT-szolgáltatások', NULL, NULL, NULL, 9, 3, 7, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (344, 11, N'GKLB_INTM097', N'Szakdolgozati konzultáció II.', NULL, NULL, NULL, 0, 8, 7, 1)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (345, 11, N'GKLB_INTM010', N'Adatbázisok', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (346, 11, N'GKLB_INTM011', N'Rendszerfejlesztés', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (347, 11, N'GKLB_INTM013', N'Üzleti célú rendszerek', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (348, 11, N'GKLB_INTM026', N'C++', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (349, 11, N'GKLB_INTM027', N'Emberközpontú infokommunikáció', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (350, 11, N'GKLB_INTM028', N'Felhasználói interfészek tervezése (Sw ergonómia)', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (351, 11, N'GKLB_INTM029', N'Funkcionális programozás', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (352, 11, N'GKLB_INTM030', N'Gyakorlatorientált sw-technológia', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (353, 11, N'GKLB_INTM031', N'Humanoid informatika', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (354, 11, N'GKLB_INTM032', N'Humanoid robotok irányítása', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (355, 11, N'GKLB_INTM033', N'Információ modellezés', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (356, 11, N'GKLB_INTM034', N'Interaktív multimédia alkalmazások', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (357, 11, N'GKLB_INTM036', N'IT-változásmenedzsment', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (358, 11, N'GKLB_INTM037', N'Java programozás', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (359, 11, N'GKLB_INTM038', N'Gépi látás', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (360, 11, N'GKLB_INTM039', N'Kiterjesztett kollaboráció a jövő Internetén', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (361, 11, N'GKLB_INTM040', N'Mobilalkalmazás-fejlesztés', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (362, 11, N'GKLB_INTM041', N'PHP', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (363, 11, N'GKLB_INTM042', N'Portálfejlesztés .NET-ben', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (364, 11, N'GKLB_INTM043', N'Programozás .Net-ben', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (365, 11, N'GKLB_INTM044', N'Adatintenzív adatbázis-kezelő alkalmazások', NULL, NULL, NULL, 3, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (366, 11, N'GKLB_INTM045', N'Számítógépes adatbiztonság', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (367, 11, N'GKLB_INTM047', N'IT-beruházások megtérülése I', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (368, 11, N'GKLB_INTM048', N'IT-beruházások megtérülése II', NULL, NULL, NULL, 15, 5, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (369, 11, N'GKLB_INTM049', N'WEB technológia', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (370, 11, N'GKLB_INTM050', N'Ágazati információrendszerek I.', NULL, NULL, NULL, 9, 3, NULL, 0)
GO
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (371, 11, N'GKLB_INTM051', N'Ágazati információrendszerek II.', NULL, NULL, NULL, 9, 3, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (372, 11, N'GKLB_INTM052', N'Banki Informatika', NULL, NULL, NULL, 9, 3, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (373, 11, N'GKLB_INTM053', N'Beágyazott rendszerek (IoT)', NULL, NULL, NULL, 18, 6, NULL, 0)
INSERT [dbo].[ProgrammeDetails] ([id], [programme_id], [subject_code], [name], [e_hours], [gy_hours], [lab_hours], [correspond_hours], [credit], [recommended_semester], [obligatory]) VALUES (374, 11, N'GKLB_INTM054', N'C#', NULL, NULL, NULL, 18, 6, NULL, 0)
SET IDENTITY_INSERT [dbo].[ProgrammeDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Programmes] ON 

INSERT [dbo].[Programmes] ([programme_id], [name], [training]) VALUES (3, N'2017 MI Bsc ', N'nappali')
INSERT [dbo].[Programmes] ([programme_id], [name], [training]) VALUES (4, N'2017 GI Bsc ', N'nappali')
INSERT [dbo].[Programmes] ([programme_id], [name], [training]) VALUES (9, N'2017 GI L Bsc ', N'levelezős')
INSERT [dbo].[Programmes] ([programme_id], [name], [training]) VALUES (10, N'2017 GI L Msc ', N'levelezős')
INSERT [dbo].[Programmes] ([programme_id], [name], [training]) VALUES (11, N'2017 MI L Bsc ', N'levelezős')
SET IDENTITY_INSERT [dbo].[Programmes] OFF
GO
SET IDENTITY_INSERT [dbo].[Semester] ON 

INSERT [dbo].[Semester] ([id], [date], [weeks]) VALUES (1, N'2020/21/2', 13)
SET IDENTITY_INSERT [dbo].[Semester] OFF
GO
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (2, 3, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (3, 3, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (4, 3, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (5, 3, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (6, 3, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (7, 4, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (8, 4, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (9, 4, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (10, 3, 0)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (11, 4, 0)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (19, 10, 0)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (9, 3, 0)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (12, 9, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (12, 11, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (13, 9, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (13, 11, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (14, 9, 0)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (14, 11, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (15, 9, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (15, 11, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (16, 11, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (17, 9, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (17, 11, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (18, 10, 0)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (4, 4, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (3, 4, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (5, 4, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (7, 3, 0)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (8, 3, 0)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (10, 4, 0)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (11, 3, 0)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (20, 10, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (21, 10, 0)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (22, 10, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (23, 9, 0)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (23, 11, 0)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (24, 9, 0)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (24, 11, 0)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (25, 9, 1)
INSERT [dbo].[subject_programmes] ([subject_id], [programme_id], [obligatory]) VALUES (26, 11, 1)
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (2, N'Rendszer és irányítás', 2, 0, N'GKNB_INTM001', 1, N'traditional', 0, NULL)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (3, N'Számítógép-hálózatok', 3, 1, N'GKNB_INTM018', 1, N'traditional', 0, NULL)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (4, N'Programozás', 2, 2, N'GKNB_INTM021', 1, N'traditional', 0, NULL)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (5, N'Projektmunka és szoftvertechnológia', 2, 2, N'GKNB_INTM022', 1, N'traditional', 0, NULL)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (6, N'Mesterséges intelligencia', 2, 2, N'GKNB_INTM002', 1, N'traditional', 0, NULL)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (7, N'Rendszerfejlesztés', 2, 2, N'GKNB_INTM011', 1, N'traditional', 0, NULL)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (8, N'Adatbázisok', 2, 1, N'GKNB_INTM010', 1, N'traditional', 0, NULL)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (9, N'Üzleti célú rendszerek', 2, 1, N'GKNB_INTM013', 1, N'traditional', 0, NULL)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (10, N'IT-beruházások megtérülése I', 3, 0, N'GKNB_INTM047', 1, N'traditional', 0, NULL)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (11, N'IT-változásmenedzsment', 3, 0, N'GKNB_INTM036', 1, N'traditional', 0, NULL)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (12, N'Projektmunka 1.', NULL, NULL, N'GKLB_INTM004', 1, N'traditional', NULL, 18)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (13, N'Projektmunka 2.', NULL, NULL, N'GKLB_INTM005', 1, N'traditional', NULL, 18)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (14, N'Modern szoftverfejlesztési eszközök', NULL, NULL, N'GKLB_INTM006', 1, N'traditional', NULL, 9)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (15, N'IT-szolgáltatások', NULL, NULL, N'GKLB_INTM008', 1, N'traditional', NULL, 9)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (16, N'Rendszer és irányítás', NULL, NULL, N'GKLB_INTM001', 1, N'traditional', NULL, 9)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (17, N'OO programozás és adatbázis-kezelés', NULL, NULL, N'GKLB_INTM024', 1, N'traditional', NULL, 21)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (18, N'Formális nyelvek és automaták', NULL, NULL, N'GKLM_INTM055', 1, N'traditional', NULL, 12)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (19, N'Rendszer és szoftvertesztelés', NULL, NULL, N'GKLM_INTM057', 1, N'traditional', NULL, 12)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (20, N'Korszerű rendszerfejlesztési technológiák', NULL, NULL, N'GKLM_INTM064', 1, N'traditional', NULL, 9)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (21, N'Számítási intelligencia', NULL, NULL, N'GKLM_INTM067', 1, N'traditional', NULL, 15)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (22, N'ERP-bevezetési módszertan', NULL, NULL, N'GKLM_INTM065', 1, N'traditional', NULL, 12)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (23, N'Számítógépes adatbiztonság', NULL, NULL, N'GKLB_INTM045', 1, N'traditional', NULL, 15)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (24, N'PHP', NULL, NULL, N'GKLB_INTM041', 1, N'traditional', NULL, 18)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (25, N'Üzleti intelligencia', NULL, NULL, N'GKLB_INTM014', 1, N'traditional', NULL, 15)
INSERT [dbo].[Subjects] ([subject_id], [name], [e_hours], [gy_hours], [subject_code], [semester_id], [education_type], [l_hours], [correspond_hours]) VALUES (26, N'Mikroelektromechanikai rendszerek', NULL, NULL, N'GKLB_INTM020', 1, N'traditional', NULL, 9)
SET IDENTITY_INSERT [dbo].[Subjects] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (1, N'Kovács János', 1, 1)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (2, N'Kovács Katalin', 1, 1)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (3, N'Paál Dávid', 1, 1)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (4, N'Kajdocsi László', 1, 1)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (5, N'Tüű Szabó Boldizsár', 1, 1)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (6, N'Hatwágner F. Miklós', 1, 4)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (7, N'Hajdu Csaba', 1, 1)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (8, N'Ősz Olivér', 1, 1)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (9, N'Hollósi János', 1, 1)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (10, N'Horváth Zsolt', 1, 3)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (11, N'Galli Richárd', 1, 1)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (12, N'Tormási Alex', 1, 1)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (13, N'Szi Brigitta', 1, 5)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (14, N'Kocsis Zoltán', 1, 1)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (15, N'Nagy Sándor', 1, 2)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (16, N'Biczó Zoltán', 1, 5)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (17, N'Takács Gábor', 1, 2)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (18, N'Hegyháti Máté', 1, 3)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (19, N'Erdős Ferenc', 1, 4)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (20, N'Csapó Ádám', 1, 4)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (21, N'Kallós Gábor', 1, 2)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (22, N'Varjasi Norbert ', 1, 5)
INSERT [dbo].[Teachers] ([teacher_id], [name], [is_working], [position_id]) VALUES (23, N'Kálóczi Imre', 1, 3)
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2021. 12. 08. 18:28:59 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2021. 12. 08. 18:28:59 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2021. 12. 08. 18:28:59 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2021. 12. 08. 18:28:59 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2021. 12. 08. 18:28:59 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2021. 12. 08. 18:28:59 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2021. 12. 08. 18:28:59 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Courses] ADD  CONSTRAINT [DF_Courses_members]  DEFAULT ((0)) FOR [members]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [Courses_fk0] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subjects] ([subject_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [Courses_fk0]
GO
ALTER TABLE [dbo].[courses_teachers]  WITH CHECK ADD  CONSTRAINT [courses_teachers_fk0] FOREIGN KEY([course_id])
REFERENCES [dbo].[Courses] ([course_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[courses_teachers] CHECK CONSTRAINT [courses_teachers_fk0]
GO
ALTER TABLE [dbo].[courses_teachers]  WITH CHECK ADD  CONSTRAINT [courses_teachers_fk1] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[Teachers] ([teacher_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[courses_teachers] CHECK CONSTRAINT [courses_teachers_fk1]
GO
ALTER TABLE [dbo].[ProgrammeDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProgrammeDetails_Programmes] FOREIGN KEY([programme_id])
REFERENCES [dbo].[Programmes] ([programme_id])
GO
ALTER TABLE [dbo].[ProgrammeDetails] CHECK CONSTRAINT [FK_ProgrammeDetails_Programmes]
GO
ALTER TABLE [dbo].[subject_programmes]  WITH CHECK ADD  CONSTRAINT [subject_szakok_fk0] FOREIGN KEY([subject_id])
REFERENCES [dbo].[Subjects] ([subject_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[subject_programmes] CHECK CONSTRAINT [subject_szakok_fk0]
GO
ALTER TABLE [dbo].[subject_programmes]  WITH CHECK ADD  CONSTRAINT [subject_szakok_fk1] FOREIGN KEY([programme_id])
REFERENCES [dbo].[Programmes] ([programme_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[subject_programmes] CHECK CONSTRAINT [subject_szakok_fk1]
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD  CONSTRAINT [Subjects_fk0] FOREIGN KEY([semester_id])
REFERENCES [dbo].[Semester] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Subjects] CHECK CONSTRAINT [Subjects_fk0]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [positions_teachers_FK] FOREIGN KEY([position_id])
REFERENCES [dbo].[Positions] ([position_id])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [positions_teachers_FK]
GO
USE [master]
GO
ALTER DATABASE [Kurzusok] SET  READ_WRITE 
GO
