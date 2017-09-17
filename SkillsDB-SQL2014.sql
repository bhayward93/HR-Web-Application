USE [master]
GO
/****** Object:  Database [p4117178HebbracoSkills]    Script Date: 25/01/2016 20:47:34 ******/
CREATE DATABASE [p4117178HebbracoSkills]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'p4117178HebbracoSkills', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\p4117178HebbracoSkills.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'p4117178HebbracoSkills_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\p4117178HebbracoSkills_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [p4117178HebbracoSkills] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [p4117178HebbracoSkills].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [p4117178HebbracoSkills] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET ARITHABORT OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET  DISABLE_BROKER 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET  MULTI_USER 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [p4117178HebbracoSkills] SET DB_CHAINING OFF 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [p4117178HebbracoSkills] SET DELAYED_DURABILITY = DISABLED 
GO
USE [p4117178HebbracoSkills]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 25/01/2016 20:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Skills](
	[StaffSkillsId] [varchar](50) NOT NULL,
	[StaffCode] [varchar](50) NULL,
	[SkillCode] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[StaffSkillsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Skills] ([StaffSkillsId], [StaffCode], [SkillCode]) VALUES (N'1', N'36542', N'BOSIET')
INSERT [dbo].[Skills] ([StaffSkillsId], [StaffCode], [SkillCode]) VALUES (N'10', N'43462', N'FAA')
INSERT [dbo].[Skills] ([StaffSkillsId], [StaffCode], [SkillCode]) VALUES (N'2', N'82838', N'BT')
INSERT [dbo].[Skills] ([StaffSkillsId], [StaffCode], [SkillCode]) VALUES (N'3', N'09890', N'CSTP')
INSERT [dbo].[Skills] ([StaffSkillsId], [StaffCode], [SkillCode]) VALUES (N'4', N'23236', N'NULCSTPEL')
INSERT [dbo].[Skills] ([StaffSkillsId], [StaffCode], [SkillCode]) VALUES (N'5', N'23923', N'HUET')
INSERT [dbo].[Skills] ([StaffSkillsId], [StaffCode], [SkillCode]) VALUES (N'6', N'43462', N'TBOSIET')
INSERT [dbo].[Skills] ([StaffSkillsId], [StaffCode], [SkillCode]) VALUES (N'7', N'93832', N'GTA')
INSERT [dbo].[Skills] ([StaffSkillsId], [StaffCode], [SkillCode]) VALUES (N'8', N'83735', N'BAER')
INSERT [dbo].[Skills] ([StaffSkillsId], [StaffCode], [SkillCode]) VALUES (N'9', N'83735', N'FAB')
USE [master]
GO
ALTER DATABASE [p4117178HebbracoSkills] SET  READ_WRITE 
GO
