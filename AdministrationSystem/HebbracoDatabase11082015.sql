USE [master]
GO
/****** Object:  Database [p4117178Hebbraco]    Script Date: 11/8/2015 7:44:14 PM ******/
CREATE DATABASE [p4117178Hebbraco]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'p4117178Hebbraco', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\p4117178Hebbraco.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'p4117178Hebbraco_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\p4117178Hebbraco_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [p4117178Hebbraco] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [p4117178Hebbraco].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [p4117178Hebbraco] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET ARITHABORT OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [p4117178Hebbraco] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [p4117178Hebbraco] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [p4117178Hebbraco] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET  DISABLE_BROKER 
GO
ALTER DATABASE [p4117178Hebbraco] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [p4117178Hebbraco] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [p4117178Hebbraco] SET  MULTI_USER 
GO
ALTER DATABASE [p4117178Hebbraco] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [p4117178Hebbraco] SET DB_CHAINING OFF 
GO
ALTER DATABASE [p4117178Hebbraco] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [p4117178Hebbraco] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [p4117178Hebbraco]
GO
/****** Object:  Table [dbo].[BusinessUnit]    Script Date: 11/8/2015 7:44:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessUnit](
	[businessUnitId] [int] IDENTITY(1,1) NOT NULL,
	[businessUnitCode] [nchar](10) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NULL,
	[officeAddress1] [nvarchar](max) NULL,
	[officeAddress2] [nvarchar](max) NULL,
	[officeAddress3] [nvarchar](max) NULL,
	[officePostCode] [nchar](10) NULL,
	[officeContact] [nvarchar](max) NULL,
	[officePhone] [nvarchar](50) NULL,
	[officeEmail] [nvarchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_BusinessUnit] PRIMARY KEY CLUSTERED 
(
	[businessUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staff]    Script Date: 11/8/2015 7:44:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[staffId] [int] IDENTITY(1,1) NOT NULL,
	[businessUnitId] [int] NOT NULL,
	[staffCode] [nvarchar](50) NOT NULL,
	[firstName] [nvarchar](max) NULL,
	[middleName] [nvarchar](max) NULL,
	[lastName] [nvarchar](max) NULL,
	[dob] [date] NULL,
	[startDate] [date] NULL,
	[profile] [nvarchar](max) NULL,
	[emailAddress] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[staffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BusinessUnit] ON 

INSERT [dbo].[BusinessUnit] ([businessUnitId], [businessUnitCode], [title], [description], [officeAddress1], [officeAddress2], [officeAddress3], [officePostCode], [officeContact], [officePhone], [officeEmail], [Active]) VALUES (4, N'AnSrBu    ', N'Analytical Services', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[BusinessUnit] ([businessUnitId], [businessUnitCode], [title], [description], [officeAddress1], [officeAddress2], [officeAddress3], [officePostCode], [officeContact], [officePhone], [officeEmail], [Active]) VALUES (5, N'RaPrBu    ', N'Radiation Protection', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[BusinessUnit] ([businessUnitId], [businessUnitCode], [title], [description], [officeAddress1], [officeAddress2], [officeAddress3], [officePostCode], [officeContact], [officePhone], [officeEmail], [Active]) VALUES (6, N'ReTeBu    ', N'Reservoir Technologies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[BusinessUnit] ([businessUnitId], [businessUnitCode], [title], [description], [officeAddress1], [officeAddress2], [officeAddress3], [officePostCode], [officeContact], [officePhone], [officeEmail], [Active]) VALUES (7, N'SuTeBu    ', N'Subsea Technologies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[BusinessUnit] ([businessUnitId], [businessUnitCode], [title], [description], [officeAddress1], [officeAddress2], [officeAddress3], [officePostCode], [officeContact], [officePhone], [officeEmail], [Active]) VALUES (12, N'GrLaTe    ', N'Groovelab Technologies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[BusinessUnit] ([businessUnitId], [businessUnitCode], [title], [description], [officeAddress1], [officeAddress2], [officeAddress3], [officePostCode], [officeContact], [officePhone], [officeEmail], [Active]) VALUES (14, N'GoTe      ', N'Goldentity Technologies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[BusinessUnit] ([businessUnitId], [businessUnitCode], [title], [description], [officeAddress1], [officeAddress2], [officeAddress3], [officePostCode], [officeContact], [officePhone], [officeEmail], [Active]) VALUES (15, N'BobRoC    ', N'Happy Trees Business', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[BusinessUnit] ([businessUnitId], [businessUnitCode], [title], [description], [officeAddress1], [officeAddress2], [officeAddress3], [officePostCode], [officeContact], [officePhone], [officeEmail], [Active]) VALUES (16, N'Test      ', N'Unit', N'123', N'123', N'123', N'123', N'123       ', N'123', N'123', N'123', 0)
SET IDENTITY_INSERT [dbo].[BusinessUnit] OFF
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (5, 4, N'36542', N'Heuy', N'Jacques', N'Georgei', CAST(0xB0FC0A00 AS Date), CAST(0xC7350B00 AS Date), N'oksokw', N'h.georgie@live.co.uk', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (7, 5, N'43467', N'Khan', N'Mathew', N'Agrippa', CAST(0x2FF30A00 AS Date), CAST(0x1F2F0B00 AS Date), N'jvkfwd', N'k.agrippa@hotmail.com', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (8, 6, N'82838', N'Merril', N'Constant', N'O''shae', CAST(0xCD080B00 AS Date), CAST(0x302B0B00 AS Date), N'fjnfjjs', N'MerrilConstant@hotmail.com', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (9, 7, N'93832', N'Kirk', N'Adam', N'Brenden', CAST(0x48160B00 AS Date), CAST(0x28380B00 AS Date), N'hjgfju', N'BrendenKirk@live.co.uk', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (12, 12, N'83838', N'Duncan', N'Matt', N'Shaw', CAST(0x040C0B00 AS Date), CAST(0xCE320B00 AS Date), N'sisdfn', N'Shaw83@hotmail.com', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (16, 14, N'09890', N'Dezi', N'Chris', N' Gallchobhar', CAST(0xDB180B00 AS Date), CAST(0x71390B00 AS Date), N'jdfjdfj', N'Dezi123@live.co.uk', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (18, 4, N'23236', N'Darien', N'Mark', N'Hollis', CAST(0x15EB0A00 AS Date), CAST(0xC7350B00 AS Date), N'jnfnsw', N'Mark.Hollis@live.co.uk', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (23, 5, N'23923', N'Barclay', N'Steven', N'Spencer', CAST(0x3D080B00 AS Date), CAST(0x6E380B00 AS Date), N'ofjfgft', N'B.Spencer@hotmail.com', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (24, 6, N'83735', N'Quinten', N'Eliot', N'Smith', CAST(0xF50F0B00 AS Date), CAST(0x772C0B00 AS Date), N'fjnvjv', N'QuintenSmith@live.com', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (25, 7, N'93473', N'Jon', N'Ellis', N'Garrick', CAST(0x93FA0A00 AS Date), CAST(0x1B280B00 AS Date), N'fnfjfu', N'JGarrick@gmail.com', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (26, 12, N'20928', N'Scott', N'Steven', N'Lovel', CAST(0x271B0B00 AS Date), CAST(0xB1360B00 AS Date), N'dhnxa', N'ScottLovel@hotmail.com.', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (31, 14, N'56582', N'Nick', N'Joe', N'Kenny', CAST(0xCEDC0A00 AS Date), CAST(0x8A240B00 AS Date), N'kgjgng', N'NickSKenny@gmail.com', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (41, 4, N'43462', N'testy', N'tester', N'test', CAST(0x26350B00 AS Date), CAST(0x26350B00 AS Date), N'asdfg', N'1asdasd@test.com', 0)
SET IDENTITY_INSERT [dbo].[Staff] OFF
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_BusinessUnit] FOREIGN KEY([businessUnitId])
REFERENCES [dbo].[BusinessUnit] ([businessUnitId])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_BusinessUnit]
GO
USE [master]
GO
ALTER DATABASE [p4117178Hebbraco] SET  READ_WRITE 
GO
