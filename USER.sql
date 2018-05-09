USE [master]
GO
/****** Object:  Database [bavan]    Script Date: 05/09/2018 13:12:55 ******/
CREATE DATABASE [bavan] ON  PRIMARY 
( NAME = N'bavan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\bavan.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'bavan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\bavan_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [bavan] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bavan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bavan] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [bavan] SET ANSI_NULLS OFF
GO
ALTER DATABASE [bavan] SET ANSI_PADDING OFF
GO
ALTER DATABASE [bavan] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [bavan] SET ARITHABORT OFF
GO
ALTER DATABASE [bavan] SET AUTO_CLOSE ON
GO
ALTER DATABASE [bavan] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [bavan] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [bavan] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [bavan] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [bavan] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [bavan] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [bavan] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [bavan] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [bavan] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [bavan] SET  DISABLE_BROKER
GO
ALTER DATABASE [bavan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [bavan] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [bavan] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [bavan] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [bavan] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [bavan] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [bavan] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [bavan] SET  READ_WRITE
GO
ALTER DATABASE [bavan] SET RECOVERY SIMPLE
GO
ALTER DATABASE [bavan] SET  MULTI_USER
GO
ALTER DATABASE [bavan] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [bavan] SET DB_CHAINING OFF
GO
USE [bavan]
GO
/****** Object:  Table [dbo].[nguoidung]    Script Date: 05/09/2018 13:12:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguoidung](
	[TenDN] [nvarchar](50) NULL,
	[MatKhau] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_nguoidung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
