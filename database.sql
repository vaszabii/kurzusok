USE [master]
GO
/****** Object:  Database [Kurzusok]    Script Date: 2021. 11. 07. 13:47:32 ******/
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
EXEC sys.sp_db_vardecimal_storage_format N'Kurzusok', N'ON'
GO
ALTER DATABASE [Kurzusok] SET QUERY_STORE = OFF
GO
USE [Kurzusok]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2021. 11. 07. 13:47:32 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2021. 11. 07. 13:47:32 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2021. 11. 07. 13:47:32 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2021. 11. 07. 13:47:32 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2021. 11. 07. 13:47:32 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2021. 11. 07. 13:47:32 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2021. 11. 07. 13:47:32 ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2021. 11. 07. 13:47:32 ******/
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
/****** Object:  Table [dbo].[Courses]    Script Date: 2021. 11. 07. 13:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[course_id] [int] IDENTITY(1,1) NOT NULL,
	[subject_id] [int] NOT NULL,
	[course_type] [varchar](100) NOT NULL,
	[members] [int] NULL,
	[classroom] [varchar](100) NULL,
	[comment] [varchar](max) NULL,
	[neptun_ok] [bit] NOT NULL,
	[software] [varchar](100) NULL,
	[hours] [int] NOT NULL,
	[course_code] [int] NOT NULL,
 CONSTRAINT [PK_COURSES] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courses_teachers]    Script Date: 2021. 11. 07. 13:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courses_teachers](
	[course_id] [int] NOT NULL,
	[teacher_id] [int] NOT NULL,
	[loads] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgrammeDetails]    Script Date: 2021. 11. 07. 13:47:32 ******/
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
	[creadit] [int] NOT NULL,
	[recommended_semester] [int] NOT NULL,
	[obligatory] [bit] NOT NULL,
 CONSTRAINT [PK_ProgrammeDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programmes]    Script Date: 2021. 11. 07. 13:47:32 ******/
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
/****** Object:  Table [dbo].[Semester]    Script Date: 2021. 11. 07. 13:47:32 ******/
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
/****** Object:  Table [dbo].[subject_programmes]    Script Date: 2021. 11. 07. 13:47:32 ******/
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
/****** Object:  Table [dbo].[Subjects]    Script Date: 2021. 11. 07. 13:47:32 ******/
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
 CONSTRAINT [PK_SUBJECTS] PRIMARY KEY CLUSTERED 
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 2021. 11. 07. 13:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[teacher_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[hoursperweek] [int] NULL,
 CONSTRAINT [PK_TEACHERS] PRIMARY KEY CLUSTERED 
(
	[teacher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'3.1.18')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210927131452_initialsetup', N'3.1.18')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'27f39d9f-91dd-4d30-b278-05469b9286e9', N'Admin', N'ADMIN', N'a67cc832-e099-454a-8a4e-5392d477bed6')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'aab1615a-a81f-467d-9c7d-d37b00398195', N'Felhasználó', N'FELHASZNÁLÓ', N'39def2c3-e7e9-4660-952b-3b8508070299')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'047609da-2f26-494e-bdb8-f7a9f916a2fd', N'27f39d9f-91dd-4d30-b278-05469b9286e9')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3eb69fba-7fd5-47d3-a455-1a75921a712f', N'aab1615a-a81f-467d-9c7d-d37b00398195')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7e4cfc20-dc06-4922-9590-5a89988e10e5', N'aab1615a-a81f-467d-9c7d-d37b00398195')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'047609da-2f26-494e-bdb8-f7a9f916a2fd', N'Szabolcsoló Varga', N'SZABOLCSOLÓ VARGA', N'varga2szabolcs2@gmail.com', N'VARGA2SZABOLCS2@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEC9noMzmV8EtMBEsdTtcyqmPgQUNUVFvKHCcqp86vQ2AnBLbXwf4WY73lFew5rm9Ww==', N'HHNWUWY4775MEMGBSYO2IYKA64OONY45', N'9af9e8e0-8a69-4ace-a043-a35c1478d9d8', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3eb69fba-7fd5-47d3-a455-1a75921a712f', N'asd', N'ASD', N'asd@gmail.com', N'ASD@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEHf1tBgdZi6tVFDaRxQRGAtqWYgUTMG9xeWP9ijipjIHv+3v3ZY4E+3qS7013UaS+w==', N'BOXHHTARTHEGMUTAY2HCEUBVB3HK5OCW', N'f6cc5dda-bc5d-4490-8bdb-e110a69baa32', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7e4cfc20-dc06-4922-9590-5a89988e10e5', N'Próba János', N'PRÓBA JÁNOS', N'jani@gmail.com', N'JANI@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOI8s7mgPvA+EwxgFmu5+6xTp5dJye1aBQkU3f2MH/B9zgrdfYaluJimfpe12DTIBg==', N'MG3ZCZKIKSVJX7W24G254AKSVHRQPQGQ', N'10e9ff66-e9ff-4703-921c-543fe09b0b54', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Programmes] ON 
GO
INSERT [dbo].[Programmes] ([programme_id], [name], [training]) VALUES (1, N'2017 MI bsc', N'nappali')
GO
INSERT [dbo].[Programmes] ([programme_id], [name], [training]) VALUES (2, N'2020 GI bsc', N'levelezős')
GO
INSERT [dbo].[Programmes] ([programme_id], [name], [training]) VALUES (3, N'1996 MI msc', N'nappali')
GO
SET IDENTITY_INSERT [dbo].[Programmes] OFF
GO
SET IDENTITY_INSERT [dbo].[Semester] ON 
GO
INSERT [dbo].[Semester] ([id], [date], [weeks]) VALUES (1, N'2020/21/1', 13)
GO
INSERT [dbo].[Semester] ([id], [date], [weeks]) VALUES (2, N'2020/21/2', 14)
GO
INSERT [dbo].[Semester] ([id], [date], [weeks]) VALUES (3, N'2021/22/1', 14)
GO
SET IDENTITY_INSERT [dbo].[Semester] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 
GO
INSERT [dbo].[Teachers] ([teacher_id], [name], [hoursperweek]) VALUES (1, N'Zöld Alex', 14)
GO
INSERT [dbo].[Teachers] ([teacher_id], [name], [hoursperweek]) VALUES (2, N'Szabolcsoló Varga', 0)
GO
INSERT [dbo].[Teachers] ([teacher_id], [name], [hoursperweek]) VALUES (3, N'Bogzos Ádám', 124)
GO
INSERT [dbo].[Teachers] ([teacher_id], [name], [hoursperweek]) VALUES (4, N'Senki', 1)
GO
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2021. 11. 07. 13:47:32 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2021. 11. 07. 13:47:32 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2021. 11. 07. 13:47:32 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2021. 11. 07. 13:47:32 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2021. 11. 07. 13:47:32 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2021. 11. 07. 13:47:32 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2021. 11. 07. 13:47:32 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF__Teachers__hoursp__24927208]  DEFAULT ('0') FOR [hoursperweek]
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
USE [master]
GO
ALTER DATABASE [Kurzusok] SET  READ_WRITE 
GO
