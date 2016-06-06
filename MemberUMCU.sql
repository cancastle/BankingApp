USE [master]
GO
/****** Object:  Database [MemberUMCU]    Script Date: 6/2/2016 3:30:10 PM ******/
CREATE DATABASE [MemberUMCU]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MemberUMCU', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MemberUMCU.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MemberUMCU_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MemberUMCU_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MemberUMCU] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MemberUMCU].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MemberUMCU] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MemberUMCU] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MemberUMCU] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MemberUMCU] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MemberUMCU] SET ARITHABORT OFF 
GO
ALTER DATABASE [MemberUMCU] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MemberUMCU] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MemberUMCU] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MemberUMCU] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MemberUMCU] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MemberUMCU] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MemberUMCU] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MemberUMCU] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MemberUMCU] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MemberUMCU] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MemberUMCU] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MemberUMCU] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MemberUMCU] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MemberUMCU] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MemberUMCU] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MemberUMCU] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MemberUMCU] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MemberUMCU] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MemberUMCU] SET  MULTI_USER 
GO
ALTER DATABASE [MemberUMCU] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MemberUMCU] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MemberUMCU] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MemberUMCU] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MemberUMCU] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MemberUMCU]
GO
/****** Object:  Table [dbo].[CheckCardDesign]    Script Date: 6/2/2016 3:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckCardDesign](
	[CheckCardDesignID] [int] IDENTITY(1,1) NOT NULL,
	[DesignName] [nvarchar](20) NOT NULL,
	[DesignDescription] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditCardDesign]    Script Date: 6/2/2016 3:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCardDesign](
	[CreditCardDesignID] [int] NOT NULL,
	[DesignName] [nvarchar](20) NOT NULL,
	[DesignDescription] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gender]    Script Date: 6/2/2016 3:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[GenderID] [tinyint] NOT NULL,
	[Description] [nvarchar](20) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JointAccoutHolder]    Script Date: 6/2/2016 3:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JointAccoutHolder](
	[JointAccountHolderID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[Middle] [nvarchar](30) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[PStreet] [nvarchar](50) NOT NULL,
	[PCity] [nvarchar](50) NOT NULL,
	[PState] [char](2) NOT NULL,
	[PZip] [nvarchar](10) NOT NULL,
	[HomePhone] [char](10) NOT NULL,
	[MobilePhone] [char](10) NULL,
	[Email] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Member]    Script Date: 6/2/2016 3:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Member](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[JointAccount] [bit] NOT NULL,
	[JointAccountHolderID] [int] NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[Middle] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[MMName] [nvarchar](30) NOT NULL,
	[SSN] [char](9) NOT NULL,
	[DOB] [date] NOT NULL,
	[DLNumber] [nvarchar](20) NOT NULL,
	[DLState] [char](2) NOT NULL,
	[GenderID] [int] NOT NULL,
	[Occupation] [nvarchar](30) NOT NULL,
	[MemberAffiliationID] [int] NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[HomePhone] [char](10) NOT NULL,
	[MobilePhone] [char](10) NULL,
	[PStreetAddress] [nvarchar](50) NOT NULL,
	[PCity] [nvarchar](30) NOT NULL,
	[PState] [char](2) NOT NULL,
	[PZip] [nvarchar](10) NOT NULL,
	[CStreetAddress] [nvarchar](50) NOT NULL,
	[CCity] [nvarchar](30) NOT NULL,
	[CState] [char](2) NOT NULL,
	[CZip] [nvarchar](10) NOT NULL,
	[CheckCard] [bit] NOT NULL,
	[CheckCardToCurrent] [bit] NULL,
	[CheckCardDesignID] [int] NULL,
	[CreditCard] [bit] NOT NULL,
	[CreditCardToCurrent] [bit] NULL,
	[CreditCardDesignID] [int] NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MemberAffiliation]    Script Date: 6/2/2016 3:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberAffiliation](
	[MemberAffiliationID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](30) NULL,
 CONSTRAINT [PK_MemberAffiliation] PRIMARY KEY CLUSTERED 
(
	[MemberAffiliationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[AddMember]    Script Date: 6/2/2016 3:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddMember]
(@JointAccount bit, @JointAccountHolderID int, @FirstName varchar(30),
@Middle varchar(30), @LastName varchar(30), @MMName varchar(30), @SSN char(9),
@DOB date, @DLNumber varchar(30), @DLState char(2), @GenderID int, @Occupation varchar(30),
@MemberAffiliationID int, @Username varchar(20), @Password varchar(100), @Email varchar(30),
@HomePhone char(10), @MobilePhone char(10), @PStreetAddress varchar(50), @PCity varchar(30),
@PState char(2), @PZip varchar(10), @CStreetAddress varchar(50), @CCity varchar(30),
@CState char(2), @CZip varchar(10), @CheckCard bit, @CreditCard bit)
AS
BEGIN
INSERT INTO [dbo].[Member]
([JointAccount], [JointAccountHolderID], [FirstName], [Middle], [LastName], 
[MMName], [SSN], [DOB], [DLNumber], [DLState], [GenderID], [Occupation], [MemberAffiliationID], 
[Username], [Password], [Email], [HomePhone], [MobilePhone], [PStreetAddress], [PCity], 
[PState], [PZip], [CStreetAddress], [CCity], [CState], [CZip], [CheckCard], [CreditCard])
VALUES
(@JointAccount, @JointAccountHolderID, @FirstName, @Middle, @LastName, 
 @MMName, @SSN, @DOB, @DLNumber, @DLState, @GenderID, @Occupation, @MemberAffiliationID,
 @Username, @Password, @Email, @HomePhone, @MobilePhone, @PStreetAddress, @PCity,
 @PState, @PZip, @CStreetAddress, @CCity, @CState, @CZip, @CheckCard, @CreditCard)
END


GO
USE [master]
GO
ALTER DATABASE [MemberUMCU] SET  READ_WRITE 
GO
