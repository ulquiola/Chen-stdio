USE [master]
GO
/****** Object:  Database [MvcBookStore]    Script Date: 2019/3/20 10:51:39 ******/
CREATE DATABASE [MvcBookStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MvcBookStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\MvcBookStore.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MvcBookStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\MvcBookStore_log.ldf' , SIZE = 1536KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MvcBookStore] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MvcBookStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MvcBookStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MvcBookStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MvcBookStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MvcBookStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MvcBookStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [MvcBookStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MvcBookStore] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [MvcBookStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MvcBookStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MvcBookStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MvcBookStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MvcBookStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MvcBookStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MvcBookStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MvcBookStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MvcBookStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MvcBookStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MvcBookStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MvcBookStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MvcBookStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MvcBookStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MvcBookStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MvcBookStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MvcBookStore] SET RECOVERY FULL 
GO
ALTER DATABASE [MvcBookStore] SET  MULTI_USER 
GO
ALTER DATABASE [MvcBookStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MvcBookStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MvcBookStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MvcBookStore] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [MvcBookStore]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 2019/3/20 10:51:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[BookCoverUrl] [nvarchar](1024) NULL,
	[Authors] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carts]    Script Date: 2019/3/20 10:51:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [nvarchar](max) NOT NULL,
	[BookId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2019/3/20 10:51:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2019/3/20 10:51:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[BookId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2019/3/20 10:51:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](160) NOT NULL,
	[LastName] [nvarchar](160) NOT NULL,
	[Address] [nvarchar](10) NOT NULL,
	[City] [nvarchar](40) NOT NULL,
	[State] [nvarchar](40) NOT NULL,
	[PostalCode] [nvarchar](10) NOT NULL,
	[Country] [nvarchar](40) NOT NULL,
	[Phone] [nvarchar](24) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ordertest]    Script Date: 2019/3/20 10:51:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordertest](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](50) NULL,
	[BookId] [int] NULL,
	[Num] [int] NULL,
 CONSTRAINT [PK_ordertest] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([BookId], [CategoryId], [Title], [Price], [BookCoverUrl], [Authors]) VALUES (1, 1, N'你是人间四月天', CAST(26.78 AS Decimal(18, 2)), N'..\..\Images\1.jpg', N'林徽因')
INSERT [dbo].[Books] ([BookId], [CategoryId], [Title], [Price], [BookCoverUrl], [Authors]) VALUES (2, 1, N'人间滋味', CAST(17.99 AS Decimal(18, 2)), N'..\..\Images\2.jpg', N'汪曾祺')
INSERT [dbo].[Books] ([BookId], [CategoryId], [Title], [Price], [BookCoverUrl], [Authors]) VALUES (3, 2, N'大话设计模式', CAST(39.65 AS Decimal(18, 2)), N'..\..\Images\3.jpg', N'程杰')
INSERT [dbo].[Books] ([BookId], [CategoryId], [Title], [Price], [BookCoverUrl], [Authors]) VALUES (4, 2, N'ASP.NET MVC 5高级编程(第5版)', CAST(47.20 AS Decimal(18, 2)), N'..\..\Images\4.jpg', N'加洛韦')
INSERT [dbo].[Books] ([BookId], [CategoryId], [Title], [Price], [BookCoverUrl], [Authors]) VALUES (5, 2, N'C#图解教程(第4版)', CAST(70.30 AS Decimal(18, 2)), N'..\..\Images\5.jpg', N'索利斯')
INSERT [dbo].[Books] ([BookId], [CategoryId], [Title], [Price], [BookCoverUrl], [Authors]) VALUES (6, 3, N'资本论', CAST(24.89 AS Decimal(18, 2)), N'..\..\Images\6.jpg', N'马克思')
INSERT [dbo].[Books] ([BookId], [CategoryId], [Title], [Price], [BookCoverUrl], [Authors]) VALUES (7, 3, N'不可不知的经济真相', CAST(27.60 AS Decimal(18, 2)), N'..\..\Images\7.jpg', N'许树泽')
INSERT [dbo].[Books] ([BookId], [CategoryId], [Title], [Price], [BookCoverUrl], [Authors]) VALUES (29, 1, N'发wew3各外国吴vgdfbhr隧道股份所得热投入热而特日夜reryer', CAST(25.00 AS Decimal(18, 2)), NULL, N'vse巴格达返回堤防大会人头唐人街tyu')
SET IDENTITY_INSERT [dbo].[Books] OFF
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([RecordId], [CartId], [BookId], [Count], [DateCreated]) VALUES (1, N'Mike', 5, 2, CAST(0x0000A71C00000000 AS DateTime))
INSERT [dbo].[Carts] ([RecordId], [CartId], [BookId], [Count], [DateCreated]) VALUES (2, N'Peter', 6, 3, CAST(0x0000A73200000000 AS DateTime))
INSERT [dbo].[Carts] ([RecordId], [CartId], [BookId], [Count], [DateCreated]) VALUES (3, N'4c2044c1-9177-414f-9b71-9364f065c6f4', 1, 2, CAST(0x0000A8C100BA4FB4 AS DateTime))
INSERT [dbo].[Carts] ([RecordId], [CartId], [BookId], [Count], [DateCreated]) VALUES (4, N'b329f634-0eac-441d-98e5-877343374cb9', 2, 2, CAST(0x0000A8C100BDF018 AS DateTime))
INSERT [dbo].[Carts] ([RecordId], [CartId], [BookId], [Count], [DateCreated]) VALUES (5, N'b329f634-0eac-441d-98e5-877343374cb9', 1, 1, CAST(0x0000A8C100BE14A1 AS DateTime))
INSERT [dbo].[Carts] ([RecordId], [CartId], [BookId], [Count], [DateCreated]) VALUES (6, N'51b792f6-aa9a-4077-be41-7ded818383c7', 1, 1, CAST(0x0000A8C100BEF3BE AS DateTime))
INSERT [dbo].[Carts] ([RecordId], [CartId], [BookId], [Count], [DateCreated]) VALUES (7, N'1492dbdd-9587-4daf-ae3a-5508b12b4b4d', 3, 1, CAST(0x0000A8C100BF5B5F AS DateTime))
SET IDENTITY_INSERT [dbo].[Carts] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [Name], [Description]) VALUES (1, N'文学', N'文学类书籍')
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description]) VALUES (2, N'计算机', N'计算机类书籍')
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description]) VALUES (3, N'经济', N'经济类书籍')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [BookId], [Quantity], [UnitPrice]) VALUES (1, 1, 1, 5, CAST(24.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [BookId], [Quantity], [UnitPrice]) VALUES (2, 1, 2, 2, CAST(15.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [BookId], [Quantity], [UnitPrice]) VALUES (3, 3, 3, 20, CAST(35.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [BookId], [Quantity], [UnitPrice]) VALUES (4, 3, 4, 20, CAST(45.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [OrderDate], [Username], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [Email], [Total]) VALUES (1, CAST(0x0000A67F00000000 AS DateTime), N'Mike', N'明刚', N'王', N'南昌市文教路120号', N'南昌', N'江西', N'330027', N'中国', N'13119008765', N'12345@qq.com', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [Username], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [Email], [Total]) VALUES (3, CAST(0x0000A6BB00000000 AS DateTime), N'Peter', N'涛', N'刘', N'南昌市紫阳大道99号', N'南昌', N'江西', N'330022', N'中国', N'13234565432', N'345343242@qq.com', CAST(1600.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[ordertest] ON 

INSERT [dbo].[ordertest] ([orderId], [Address], [BookId], [Num]) VALUES (1, N'江西师大', 1, 1)
INSERT [dbo].[ordertest] ([orderId], [Address], [BookId], [Num]) VALUES (2, N'江西师大', 2, 1)
INSERT [dbo].[ordertest] ([orderId], [Address], [BookId], [Num]) VALUES (3, N'江西师大', 3, 1)
INSERT [dbo].[ordertest] ([orderId], [Address], [BookId], [Num]) VALUES (4, N'江西师大', 4, 1)
INSERT [dbo].[ordertest] ([orderId], [Address], [BookId], [Num]) VALUES (5, N'南昌', 3, 4)
INSERT [dbo].[ordertest] ([orderId], [Address], [BookId], [Num]) VALUES (6, N'江西', 1, 5)
SET IDENTITY_INSERT [dbo].[ordertest] OFF
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Categories]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Books] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([BookId])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Books]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Books] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([BookId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Books]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[ordertest]  WITH CHECK ADD  CONSTRAINT [FK_ordertest_ordertest] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([BookId])
GO
ALTER TABLE [dbo].[ordertest] CHECK CONSTRAINT [FK_ordertest_ordertest]
GO
USE [master]
GO
ALTER DATABASE [MvcBookStore] SET  READ_WRITE 
GO
