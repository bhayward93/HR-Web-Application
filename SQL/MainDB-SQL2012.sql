USE [master]
GO
/****** Object:  Database [p4117178Hebbraco]    Script Date: 25/01/2016 20:48:32 ******/
CREATE DATABASE [p4117178Hebbraco]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'p4117178Hebbraco', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\p4117178Hebbraco.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'p4117178Hebbraco_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\p4117178Hebbraco_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[BusinessUnit]    Script Date: 25/01/2016 20:48:32 ******/
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
/****** Object:  Table [dbo].[Staff]    Script Date: 25/01/2016 20:48:32 ******/
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

INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (5, 4, N'36542', N'Heuy', N'Jacques', N'Georgei', CAST(N'1972-06-05' AS Date), CAST(N'2012-06-10' AS Date), N'oksokw', N'h.georgie@live.co.uk', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (7, 5, N'43467', N'Khan', N'Mathew', N'Agrippa', CAST(N'1965-10-07' AS Date), CAST(N'2007-10-11' AS Date), N'jvkfwd', N'k.agrippa@hotmail.com', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (8, 6, N'82838', N'Merril', N'Constant', N'O''shae', CAST(N'1980-12-01' AS Date), CAST(N'2005-01-07' AS Date), N'fjnfjjs', N'MerrilConstant@hotmail.com', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (9, 7, N'93832', N'Kirk', N'Adam', N'Brenden', CAST(N'1990-05-14' AS Date), CAST(N'2014-02-09' AS Date), N'hjgfju', N'BrendenKirk@live.co.uk', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (12, 12, N'83838', N'Duncan', N'Matt', N'Shaw', CAST(N'1983-03-04' AS Date), CAST(N'2010-05-11' AS Date), N'sisdfn', N'Shaw83@hotmail.com', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (16, 14, N'09890', N'Dezi', N'Chris', N' Gallchobhar', CAST(N'1992-03-03' AS Date), CAST(N'2015-01-04' AS Date), N'jdfjdfj', N'Dezi123@live.co.uk', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (18, 4, N'23236', N'Darien', N'Mark', N'Hollis', CAST(N'1960-02-02' AS Date), CAST(N'2012-06-10' AS Date), N'jnfnsw', N'Mark.Hollis@live.co.uk', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (23, 5, N'23923', N'Barclay', N'Steven', N'Spencer', CAST(N'1980-07-10' AS Date), CAST(N'2014-04-20' AS Date), N'ofjfgft', N'B.Spencer@hotmail.com', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (24, 6, N'83735', N'Quinten', N'Eliot', N'Smith', CAST(N'1985-12-07' AS Date), CAST(N'2005-11-30' AS Date), N'fjnvjv', N'QuintenSmith@live.com', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (25, 7, N'93473', N'Jon', N'Ellis', N'Garrick', CAST(N'1970-12-12' AS Date), CAST(N'2002-11-10' AS Date), N'fnfjfu', N'JGarrick@gmail.com', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (26, 12, N'20928', N'Scott', N'Steven', N'Lovel', CAST(N'1993-10-12' AS Date), CAST(N'2013-01-30' AS Date), N'dhnxa', N'ScottLovel@hotmail.com.', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (31, 14, N'56582', N'Nick', N'Joe', N'Kenny', CAST(N'1950-01-30' AS Date), CAST(N'2000-05-11' AS Date), N'kgjgng', N'NickSKenny@gmail.com', 1)
INSERT [dbo].[Staff] ([staffId], [businessUnitId], [staffCode], [firstName], [middleName], [lastName], [dob], [startDate], [profile], [emailAddress], [Active]) VALUES (41, 4, N'43462', N'testy', N'tester', N'test', CAST(N'2012-01-01' AS Date), CAST(N'2012-01-01' AS Date), N'asdfg', N'1asdasd@test.com', 0)
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
