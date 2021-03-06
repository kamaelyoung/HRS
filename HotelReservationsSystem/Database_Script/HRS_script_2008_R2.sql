USE [master]
GO
/****** Object:  Database [HotelReservation]    Script Date: 12/08/2012 19:48:44 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'HotelReservation')
BEGIN
CREATE DATABASE [HotelReservation] ON  PRIMARY 
( NAME = N'HotelReservation1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HotelReservation1.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HotelReservation1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HotelReservation1_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END
GO
ALTER DATABASE [HotelReservation] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelReservation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotelReservation] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [HotelReservation] SET ANSI_NULLS OFF
GO
ALTER DATABASE [HotelReservation] SET ANSI_PADDING OFF
GO
ALTER DATABASE [HotelReservation] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [HotelReservation] SET ARITHABORT OFF
GO
ALTER DATABASE [HotelReservation] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [HotelReservation] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [HotelReservation] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [HotelReservation] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HotelReservation] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HotelReservation] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [HotelReservation] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HotelReservation] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HotelReservation] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HotelReservation] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HotelReservation] SET  ENABLE_BROKER
GO
ALTER DATABASE [HotelReservation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [HotelReservation] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HotelReservation] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HotelReservation] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HotelReservation] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HotelReservation] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [HotelReservation] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [HotelReservation] SET  READ_WRITE
GO
ALTER DATABASE [HotelReservation] SET RECOVERY FULL
GO
ALTER DATABASE [HotelReservation] SET  MULTI_USER
GO
ALTER DATABASE [HotelReservation] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HotelReservation] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'HotelReservation', N'ON'
GO
USE [HotelReservation]
GO
/****** Object:  Table [dbo].[Guest]    Script Date: 12/08/2012 19:48:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Guest](
	[guestID] [int] IDENTITY(1,1) NOT NULL,
	[guestFName] [nvarchar](80) NOT NULL,
	[guestLName] [nvarchar](80) NOT NULL,
	[Address] [nvarchar](50) NULL,
	[telephone] [nvarchar](12) NULL,
	[email] [nvarchar](40) NULL,
	[identityStatus] [nvarchar](50) NULL,
	[creditCardType] [nvarchar](50) NULL,
	[creditCardNumber] [nvarchar](20) NULL,
 CONSTRAINT [pk_Guest] PRIMARY KEY CLUSTERED 
(
	[guestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Guest] ON
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (1, N'TEST-6', N'TEST-6', N'CONESTOGA COLLEGE,DOON CAMPUS, KITCHENER', N'123-123-1234', N'TEST-6', N'NOT VERIFIED', N'Visa', N'1234123412341234')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (2, N'SONIA', N'RAI', N'TEALBY CRESCENT', N'226-339-1210', N'SONIA', N'NOT VERIFIED', N'Visa', N'1234123412341234')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (3, N'RAJAT', N'RAI', N'TEALBY CRESCENT', N'226-339-1210', N'test@ymail.com', N'NOT VERIFIED', N'Visa', N'1234123412341234')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (4, N'SONIA', N'RAI', N'TEALBY CRESCENT, WATERLOO, ON', N'226-339-1210', N'test2@ymail.com', N'DRIVING LICENSE', N'Master', N'1234123412344321')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (5, N'RHEMA', N'PRINCI LIVINGSTONE', N'CONESTOGA COLLEGE, KITCHENER', N'226-123-1234', N'rhemamaki@ymail.com', N'NOT VERIFIED', N'Visa', N'1234123412234453')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (6, N'ASIFA', N'ANJUM', N'CONESTOGA COLLEGE', N'225-123-1234', N'test@ymail.com', N'225-123-1234', N'Master', N'1234123412344333')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (7, N'RAJAT', N'RAI', N'TEALBY CRESCENT', N'2263391210', N'rajat@testmail.com', N'DRIVING LICENSE', N'Amex', N'1234123412341234')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (8, N'SONIA', N'RAI', N'TEALBY CRESCENT', N'226-339-1210', N'sonia@test.com', N'NOT VERIFIED', N'Master', N'1234123412341234')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (9, N'SONIA', N'RAI', N'TEALBY CRESCENT, WATERLOO, ON', N'226-339-1210', N'sonia@test.com', N'NOT VERIFIED', N'Master', N'1234123412341234')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (10, N'ASIFA', N'ANJUM', N'CONTESTOGA COLLEGE', N'123-456-3456', N'', N'NOT VERIFIED', N'', N'')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (11, N'ASIFA', N'ANJUM', N'CONTESTOGA COLLEGE', N'123-456-3456', N'', N'PASSPORT', N'', N'')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (12, N'AYMANN', N'UMME', N'SAMUELSON STREET', N'123-234-1234', N'', N'NOT VERIFIED', N'', N'')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (13, N'UMME', N'AYMANN', N'CAMBRIDGE', N'123-345-6789', N'', N'NOT VERIFIED', N'', N'')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (14, N'RHEMA', N'LIVI', N'KITCHENER', N'123-567-4567', N'', N'NOT VERIFIED', N'', N'')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (15, N'ANU', N'BABU', N'WATERLOO', N'234-890-6789', N'', N'NOT VERIFIED', N'', N'')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (16, N'SAM', N'CHRIS', N'WATERLOO', N'123-098-4567', N'', N'NOT VERIFIED', N'', N'')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (17, N'AMMA', N'VEKH', N'MUNDA VIGDA JAAYE', N'TERA', N'riske@baal.chote', N'TV VIDEO BAND KRADEE', N'', N'')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (18, N'DAVID', N'JOHNSON', N'CONESTOGA COLLEGE - DOON CAMPUS, KITCHENER, ON', N'226-120-0001', N'david.johnson@ymail.ca', N'DRIVING LICENSE', N'Visa', N'1234123412341123')
INSERT [dbo].[Guest] ([guestID], [guestFName], [guestLName], [Address], [telephone], [email], [identityStatus], [creditCardType], [creditCardNumber]) VALUES (19, N'DAVID', N'JOHNSON', N'400 GLENELM CRESCENT,
WATERLOO, ON
N2J 4G5', N'226-120-0001', N'djohnson@mymail.com', N'DRIVING LICENSE', N'Amex', N'4453203434510034')
SET IDENTITY_INSERT [dbo].[Guest] OFF
/****** Object:  Table [dbo].[USERS]    Script Date: 12/08/2012 19:48:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USERS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[USERS](
	[userId] [nvarchar](10) NOT NULL,
	[password] [nvarchar](20) NULL,
	[userFirstName] [nvarchar](20) NULL,
	[userLastName] [nvarchar](20) NULL,
	[userRole] [nvarchar](20) NULL,
 CONSTRAINT [pk_User] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[USERS] ([userId], [password], [userFirstName], [userLastName], [userRole]) VALUES (N'admin', N'password', N'Administrator', N'Administrator', N'Admin')
/****** Object:  Table [dbo].[RoomType]    Script Date: 12/08/2012 19:48:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoomType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoomType](
	[roomTypeID] [int] IDENTITY(1,1) NOT NULL,
	[roomType] [nvarchar](20) NULL,
	[roomPrice] [money] NULL,
 CONSTRAINT [pk_RoomType] PRIMARY KEY CLUSTERED 
(
	[roomTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[RoomType] ON
INSERT [dbo].[RoomType] ([roomTypeID], [roomType], [roomPrice]) VALUES (1, N'Single', 120.0000)
INSERT [dbo].[RoomType] ([roomTypeID], [roomType], [roomPrice]) VALUES (2, N'Double', 150.0000)
INSERT [dbo].[RoomType] ([roomTypeID], [roomType], [roomPrice]) VALUES (3, N'King', 180.0000)
INSERT [dbo].[RoomType] ([roomTypeID], [roomType], [roomPrice]) VALUES (4, N'Presidential', 210.0000)
SET IDENTITY_INSERT [dbo].[RoomType] OFF
/****** Object:  Table [dbo].[Rooms]    Script Date: 12/08/2012 19:48:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rooms]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Rooms](
	[roomID] [int] IDENTITY(1,1) NOT NULL,
	[roomNumber] [int] NULL,
	[roomTypeID] [int] NOT NULL,
	[roomFloor] [int] NULL,
	[roomDescription] [nvarchar](250) NULL,
 CONSTRAINT [pk_Rooms] PRIMARY KEY CLUSTERED 
(
	[roomID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Rooms] ON
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (1, 101, 1, 1, N'This is a very good room on the first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (2, 102, 1, 1, N'Another nice room on first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (3, 103, 1, 1, N'Single on first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (4, 104, 1, 1, N'Very lucky room')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (5, 105, 2, 1, N'Decent room on first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (6, 106, 2, 1, N'A good double room')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (7, 107, 2, 1, N'Another decent room')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (8, 108, 2, 1, N'Good room')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (9, 205, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (10, 206, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (11, 207, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (12, 208, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (13, 209, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (14, 210, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (15, 211, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (16, 212, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (17, 213, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (18, 214, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (19, 215, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (20, 216, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (21, 217, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (22, 218, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (23, 219, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (24, 220, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (25, 221, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (26, 222, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (27, 109, 2, 1, N'A very good room at first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (28, 110, 2, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (29, 111, 2, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (30, 112, 2, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (31, 113, 2, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (32, 114, 2, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (33, 115, 2, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (34, 116, 2, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (35, 117, 2, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (36, 118, 2, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (37, 119, 2, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (38, 120, 3, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (39, 121, 3, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (40, 122, 3, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (41, 123, 3, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (42, 124, 3, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (43, 125, 3, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (44, 126, 4, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (45, 127, 4, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (46, 128, 4, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (49, 129, 4, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (50, 130, 4, 1, N'A very good room in first floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (51, 201, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (52, 202, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (53, 203, 1, 2, N'A very good room in second floor')
INSERT [dbo].[Rooms] ([roomID], [roomNumber], [roomTypeID], [roomFloor], [roomDescription]) VALUES (54, 204, 1, 2, N'A very good room in second floor')
SET IDENTITY_INSERT [dbo].[Rooms] OFF
/****** Object:  Table [dbo].[Booking]    Script Date: 12/08/2012 19:48:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Booking]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Booking](
	[bookingID] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](25) NULL,
	[checkIn] [date] NOT NULL,
	[checkOut] [date] NOT NULL,
	[specialRequest] [nvarchar](250) NULL,
	[roomServCharges] [decimal](6, 3) NULL,
	[restaurantCharges] [decimal](6, 3) NULL,
	[totalPrice] [decimal](6, 3) NULL,
	[guestID] [int] NOT NULL,
	[roomID] [int] NOT NULL,
	[payStatus] [nvarchar](20) NULL,
 CONSTRAINT [pk_Booking] PRIMARY KEY CLUSTERED 
(
	[bookingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Booking] ON
INSERT [dbo].[Booking] ([bookingID], [status], [checkIn], [checkOut], [specialRequest], [roomServCharges], [restaurantCharges], [totalPrice], [guestID], [roomID], [payStatus]) VALUES (1, N'CHECKED OUT', CAST(0x73360B00 AS Date), CAST(0x74360B00 AS Date), N'', CAST(0.000 AS Decimal(6, 3)), CAST(0.000 AS Decimal(6, 3)), CAST(0.000 AS Decimal(6, 3)), 3, 1, N'Pending')
INSERT [dbo].[Booking] ([bookingID], [status], [checkIn], [checkOut], [specialRequest], [roomServCharges], [restaurantCharges], [totalPrice], [guestID], [roomID], [payStatus]) VALUES (2, N'CHECKED OUT', CAST(0x73360B00 AS Date), CAST(0x77360B00 AS Date), N'', CAST(35.000 AS Decimal(6, 3)), CAST(200.000 AS Decimal(6, 3)), CAST(595.000 AS Decimal(6, 3)), 4, 2, N'Pending')
INSERT [dbo].[Booking] ([bookingID], [status], [checkIn], [checkOut], [specialRequest], [roomServCharges], [restaurantCharges], [totalPrice], [guestID], [roomID], [payStatus]) VALUES (3, N'CHECKED OUT', CAST(0x72360B00 AS Date), CAST(0x74360B00 AS Date), N'Wake her up at 4.30am', CAST(10.000 AS Decimal(6, 3)), CAST(15.000 AS Decimal(6, 3)), CAST(505.000 AS Decimal(6, 3)), 5, 3, N'Pending')
INSERT [dbo].[Booking] ([bookingID], [status], [checkIn], [checkOut], [specialRequest], [roomServCharges], [restaurantCharges], [totalPrice], [guestID], [roomID], [payStatus]) VALUES (4, N'CHECKED OUT', CAST(0x74360B00 AS Date), CAST(0x75360B00 AS Date), N'Wake up all at 6.30am', CAST(10.000 AS Decimal(6, 3)), CAST(40.000 AS Decimal(6, 3)), CAST(170.000 AS Decimal(6, 3)), 6, 1, N'Pending')
INSERT [dbo].[Booking] ([bookingID], [status], [checkIn], [checkOut], [specialRequest], [roomServCharges], [restaurantCharges], [totalPrice], [guestID], [roomID], [payStatus]) VALUES (5, N'CHECKED OUT', CAST(0x76360B00 AS Date), CAST(0x77360B00 AS Date), N'Breakfast in room at 7.00am', CAST(0.000 AS Decimal(6, 3)), CAST(0.000 AS Decimal(6, 3)), CAST(0.000 AS Decimal(6, 3)), 7, 4, N'Pending')
INSERT [dbo].[Booking] ([bookingID], [status], [checkIn], [checkOut], [specialRequest], [roomServCharges], [restaurantCharges], [totalPrice], [guestID], [roomID], [payStatus]) VALUES (6, N'CHECKED OUT', CAST(0x76360B00 AS Date), CAST(0x77360B00 AS Date), N'Coffee and Breakfast at 7.30am', CAST(10.000 AS Decimal(6, 3)), CAST(20.000 AS Decimal(6, 3)), CAST(150.000 AS Decimal(6, 3)), 8, 2, N'Pending')
INSERT [dbo].[Booking] ([bookingID], [status], [checkIn], [checkOut], [specialRequest], [roomServCharges], [restaurantCharges], [totalPrice], [guestID], [roomID], [payStatus]) VALUES (7, N'BOOKED', CAST(0x79360B00 AS Date), CAST(0x7B360B00 AS Date), N'', CAST(0.000 AS Decimal(6, 3)), CAST(0.000 AS Decimal(6, 3)), CAST(0.000 AS Decimal(6, 3)), 9, 4, N'Pending')
INSERT [dbo].[Booking] ([bookingID], [status], [checkIn], [checkOut], [specialRequest], [roomServCharges], [restaurantCharges], [totalPrice], [guestID], [roomID], [payStatus]) VALUES (8, N'CHECKED OUT', CAST(0x77360B00 AS Date), CAST(0x78360B00 AS Date), N'', CAST(70.000 AS Decimal(6, 3)), CAST(45.000 AS Decimal(6, 3)), CAST(115.000 AS Decimal(6, 3)), 10, 1, N'')
INSERT [dbo].[Booking] ([bookingID], [status], [checkIn], [checkOut], [specialRequest], [roomServCharges], [restaurantCharges], [totalPrice], [guestID], [roomID], [payStatus]) VALUES (9, N'CHECKED OUT', CAST(0x78360B00 AS Date), CAST(0x79360B00 AS Date), N'', CAST(0.000 AS Decimal(6, 3)), CAST(0.000 AS Decimal(6, 3)), CAST(0.000 AS Decimal(6, 3)), 12, 1, N'')
INSERT [dbo].[Booking] ([bookingID], [status], [checkIn], [checkOut], [specialRequest], [roomServCharges], [restaurantCharges], [totalPrice], [guestID], [roomID], [payStatus]) VALUES (10, N'CHECKED OUT', CAST(0x77360B00 AS Date), CAST(0x79360B00 AS Date), N'', CAST(0.000 AS Decimal(6, 3)), CAST(0.000 AS Decimal(6, 3)), CAST(0.000 AS Decimal(6, 3)), 13, 3, N'')
INSERT [dbo].[Booking] ([bookingID], [status], [checkIn], [checkOut], [specialRequest], [roomServCharges], [restaurantCharges], [totalPrice], [guestID], [roomID], [payStatus]) VALUES (11, N'CHECKED OUT', CAST(0x77360B00 AS Date), CAST(0x79360B00 AS Date), N'', CAST(100.000 AS Decimal(6, 3)), CAST(120.000 AS Decimal(6, 3)), CAST(220.000 AS Decimal(6, 3)), 14, 1, N'')
INSERT [dbo].[Booking] ([bookingID], [status], [checkIn], [checkOut], [specialRequest], [roomServCharges], [restaurantCharges], [totalPrice], [guestID], [roomID], [payStatus]) VALUES (12, N'CHECKED IN', CAST(0x77360B00 AS Date), CAST(0x78360B00 AS Date), N'', CAST(0.000 AS Decimal(6, 3)), CAST(0.000 AS Decimal(6, 3)), CAST(0.000 AS Decimal(6, 3)), 15, 4, N'')
INSERT [dbo].[Booking] ([bookingID], [status], [checkIn], [checkOut], [specialRequest], [roomServCharges], [restaurantCharges], [totalPrice], [guestID], [roomID], [payStatus]) VALUES (13, N'CHECKED OUT', CAST(0x77360B00 AS Date), CAST(0x77360B00 AS Date), N'', CAST(45.000 AS Decimal(6, 3)), CAST(22.000 AS Decimal(6, 3)), CAST(67.000 AS Decimal(6, 3)), 16, 5, N'')
INSERT [dbo].[Booking] ([bookingID], [status], [checkIn], [checkOut], [specialRequest], [roomServCharges], [restaurantCharges], [totalPrice], [guestID], [roomID], [payStatus]) VALUES (14, N'CHECKED IN', CAST(0x7A360B00 AS Date), CAST(0x7B360B00 AS Date), N'Karade....', CAST(0.000 AS Decimal(6, 3)), CAST(0.000 AS Decimal(6, 3)), CAST(150.000 AS Decimal(6, 3)), 17, 6, N'')
INSERT [dbo].[Booking] ([bookingID], [status], [checkIn], [checkOut], [specialRequest], [roomServCharges], [restaurantCharges], [totalPrice], [guestID], [roomID], [payStatus]) VALUES (15, N'BOOKED', CAST(0x7A360B00 AS Date), CAST(0x7B360B00 AS Date), N'', CAST(0.000 AS Decimal(6, 3)), CAST(0.000 AS Decimal(6, 3)), CAST(0.000 AS Decimal(6, 3)), 18, 1, N'Pending')
INSERT [dbo].[Booking] ([bookingID], [status], [checkIn], [checkOut], [specialRequest], [roomServCharges], [restaurantCharges], [totalPrice], [guestID], [roomID], [payStatus]) VALUES (16, N'CHECKED OUT', CAST(0x7B360B00 AS Date), CAST(0x7C360B00 AS Date), N'Wake up call at 7.00am
Breakfast and coffee in room at 8.00am', CAST(15.470 AS Decimal(6, 3)), CAST(25.250 AS Decimal(6, 3)), CAST(160.720 AS Decimal(6, 3)), 19, 3, N'Pending')
SET IDENTITY_INSERT [dbo].[Booking] OFF
/****** Object:  ForeignKey [Rooms_fk]    Script Date: 12/08/2012 19:48:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Rooms_fk]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rooms]'))
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [Rooms_fk] FOREIGN KEY([roomTypeID])
REFERENCES [dbo].[RoomType] ([roomTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Rooms_fk]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rooms]'))
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [Rooms_fk]
GO
/****** Object:  ForeignKey [fk_Guest]    Script Date: 12/08/2012 19:48:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Guest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Booking]'))
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [fk_Guest] FOREIGN KEY([guestID])
REFERENCES [dbo].[Guest] ([guestID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Guest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Booking]'))
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [fk_Guest]
GO
/****** Object:  ForeignKey [fk_Room]    Script Date: 12/08/2012 19:48:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Room]') AND parent_object_id = OBJECT_ID(N'[dbo].[Booking]'))
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [fk_Room] FOREIGN KEY([roomID])
REFERENCES [dbo].[Rooms] ([roomID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Room]') AND parent_object_id = OBJECT_ID(N'[dbo].[Booking]'))
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [fk_Room]
GO
