USE [master]
GO
/****** Object:  Database [petshop2.0]    Script Date: 31.10.2024 13:39:47 ******/
CREATE DATABASE [petshop2.0]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'petshop2.0', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\petshop2.0.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'petshop2.0_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\petshop2.0_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [petshop2.0] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [petshop2.0].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [petshop2.0] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [petshop2.0] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [petshop2.0] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [petshop2.0] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [petshop2.0] SET ARITHABORT OFF 
GO
ALTER DATABASE [petshop2.0] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [petshop2.0] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [petshop2.0] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [petshop2.0] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [petshop2.0] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [petshop2.0] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [petshop2.0] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [petshop2.0] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [petshop2.0] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [petshop2.0] SET  DISABLE_BROKER 
GO
ALTER DATABASE [petshop2.0] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [petshop2.0] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [petshop2.0] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [petshop2.0] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [petshop2.0] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [petshop2.0] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [petshop2.0] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [petshop2.0] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [petshop2.0] SET  MULTI_USER 
GO
ALTER DATABASE [petshop2.0] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [petshop2.0] SET DB_CHAINING OFF 
GO
ALTER DATABASE [petshop2.0] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [petshop2.0] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [petshop2.0] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [petshop2.0] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [petshop2.0] SET QUERY_STORE = OFF
GO
USE [petshop2.0]
GO
/****** Object:  Table [dbo].[City]    Script Date: 31.10.2024 13:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameCity] [nvarchar](152) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 31.10.2024 13:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ProductArticleNumber] [nvarchar](152) NOT NULL,
	[ProductName] [int] NOT NULL,
	[ed] [nvarchar](152) NOT NULL,
	[sum] [int] NOT NULL,
	[sale] [int] NOT NULL,
	[ProductManufacturer] [int] NOT NULL,
	[ProductCost] [int] NOT NULL,
	[ProductCategory] [int] NOT NULL,
	[SaleN] [int] NOT NULL,
	[col] [int] NOT NULL,
	[text] [nvarchar](152) NOT NULL,
	[ProductPhoto] [nvarchar](52) NULL,
	[ProductPhotoName] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 31.10.2024 13:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameProductCategory] [nvarchar](152) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCost]    Script Date: 31.10.2024 13:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCost](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameProductCost] [nvarchar](152) NOT NULL,
 CONSTRAINT [PK_ProductCost] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductManufacturer]    Script Date: 31.10.2024 13:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductManufacturer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameProductManufacturer] [nvarchar](152) NOT NULL,
 CONSTRAINT [PK_ProductManufacturer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductName]    Script Date: 31.10.2024 13:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductName](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameProduct] [nvarchar](152) NOT NULL,
 CONSTRAINT [PK_ProductName] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pvz1]    Script Date: 31.10.2024 13:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pvz1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[art] [int] NOT NULL,
	[city] [int] NOT NULL,
	[street] [int] NOT NULL,
	[house] [int] NULL,
 CONSTRAINT [PK_pvz1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 31.10.2024 13:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IDRole] [int] IDENTITY(1,1) NOT NULL,
	[NameRole] [nvarchar](152) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IDRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 31.10.2024 13:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NmaeStreet] [nvarchar](152) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 31.10.2024 13:39:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [int] NOT NULL,
	[surName] [nvarchar](152) NOT NULL,
	[name] [nvarchar](152) NOT NULL,
	[patronymic] [nvarchar](152) NOT NULL,
	[login] [nvarchar](152) NOT NULL,
	[password] [nvarchar](152) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([id], [NameCity]) VALUES (1, N'г.Нефтеюганск')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (1, N'A112Т4', 3, N'шт.', 123, 30, 4, 1, 2, 3, 6, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', N'А112Т4.png', NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (2, N'B427R5', 5, N'шт.', 400, 15, 10, 2, 1, 4, 5, N'Миска для животных Triol "Стрекоза", 450 мл', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (3, N'D356R4', 6, N'шт.', 600, 15, 11, 1, 3, 2, 16, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (4, N'D563F4', 1, N'шт.', 600, 10, 10, 1, 3, 5, 5, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (5, N'D643B5', 7, N'шт.', 4100, 30, 1, 1, 2, 4, 9, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (6, N'E345R4', 1, N'шт.', 199, 5, 5, 2, 2, 5, 7, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', N'E345R4.jpg', NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (7, N'E431R5', 3, N'шт.', 170, 5, 10, 2, 3, 5, 5, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', N'E431R5.png', NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (8, N'E434U6', 3, N'шт.', 140, 20, 9, 2, 3, 3, 19, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (9, N'E466T6', 2, N'шт.', 3500, 30, 10, 2, 3, 5, 3, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (10, N'E532Q5', 3, N'шт.', 166, 15, 9, 1, 3, 5, 18, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', N'E532Q5.jpg', NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (11, N'F432F4', 7, N'шт.', 1200, 10, 8, 2, 2, 3, 15, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', N'F432F4.jpg', NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (12, N'G345E4', 6, N'шт.', 300, 5, 6, 2, 3, 3, 19, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', N'G345E4.jpg', NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (13, N'G453T5', 8, N'шт.', 149, 15, 12, 2, 1, 2, 7, N'Щетка-варежка True Touch для вычесывания шерсти, синий', N'G453T5.jpg', NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (14, N'G542F5', 7, N'шт.', 2190, 30, 8, 1, 3, 4, 7, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (15, N'H342F5', 1, N'шт.', 510, 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Енот 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (16, N'H432F4', 5, N'шт.', 385, 10, 10, 2, 1, 2, 17, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (17, N'H436R4', 1, N'шт.', 300, 15, 10, 1, 3, 2, 15, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (18, N'H542R6', 3, N'шт.', 177, 15, 10, 2, 3, 3, 15, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (19, N'H643W2', 5, N'шт.', 292, 25, 10, 1, 1, 3, 13, N'Миска Triol CB02/30231002 100 мл бежевый/голубой', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (20, N'K436T5', 6, N'шт.', 100, 5, 10, 2, 3, 4, 21, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (21, N'K452T5', 4, N'шт.', 800, 25, 13, 2, 3, 2, 17, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (22, N'M356R4', 3, N'шт.', 50, 5, 9, 2, 3, 4, 6, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (23, N'Q245F5', 1, N'шт.', 510, 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Бобер 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (24, N'R356F4', 5, N'шт.', 234, 10, 7, 1, 3, 3, 17, N'Миска Nobby с рисунком Dog для собак 130 мл красный', N'R356F4.jpg', NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (25, N'S245R4', 7, N'шт.', 280, 15, 1, 2, 2, 3, 8, N'Сухой корм для кошек CAT CHOW', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (26, N'T432F4', 7, N'шт.', 1700, 25, 2, 2, 3, 2, 5, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', N'T432F4.jpg', NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (27, N'V352R4', 7, N'шт.', 1700, 25, 2, 1, 3, 4, 9, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (28, N'V527T5', 1, N'шт.', 640, 5, 10, 1, 3, 5, 4, N'Игрушка для собак Triol Ящерица 39 см коричневый', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (29, N'W548O7', 7, N'шт.', 600, 15, 3, 1, 3, 5, 15, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', NULL, NULL)
INSERT [dbo].[Product] ([id], [ProductArticleNumber], [ProductName], [ed], [sum], [sale], [ProductManufacturer], [ProductCost], [ProductCategory], [SaleN], [col], [text], [ProductPhoto], [ProductPhotoName]) VALUES (30, N'Y324F4', 3, N'шт.', 86, 5, 9, 1, 3, 4, 17, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', N'Y324F4.jpg', NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([id], [NameProductCategory]) VALUES (1, N'Для животных')
INSERT [dbo].[ProductCategory] ([id], [NameProductCategory]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[ProductCategory] ([id], [NameProductCategory]) VALUES (3, N'Товары для собак')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCost] ON 

INSERT [dbo].[ProductCost] ([id], [NameProductCost]) VALUES (1, N'PetShop')
INSERT [dbo].[ProductCost] ([id], [NameProductCost]) VALUES (2, N'ZooMir')
SET IDENTITY_INSERT [dbo].[ProductCost] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductManufacturer] ON 

INSERT [dbo].[ProductManufacturer] ([id], [NameProductManufacturer]) VALUES (1, N'Cat Chow')
INSERT [dbo].[ProductManufacturer] ([id], [NameProductManufacturer]) VALUES (2, N'Chappy')
INSERT [dbo].[ProductManufacturer] ([id], [NameProductManufacturer]) VALUES (3, N'Dog Chow')
INSERT [dbo].[ProductManufacturer] ([id], [NameProductManufacturer]) VALUES (4, N'Dreames')
INSERT [dbo].[ProductManufacturer] ([id], [NameProductManufacturer]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[ProductManufacturer] ([id], [NameProductManufacturer]) VALUES (6, N'LIKER')
INSERT [dbo].[ProductManufacturer] ([id], [NameProductManufacturer]) VALUES (7, N'Nobby')
INSERT [dbo].[ProductManufacturer] ([id], [NameProductManufacturer]) VALUES (8, N'Pro Plan')
INSERT [dbo].[ProductManufacturer] ([id], [NameProductManufacturer]) VALUES (9, N'TitBit')
INSERT [dbo].[ProductManufacturer] ([id], [NameProductManufacturer]) VALUES (10, N'Triol')
INSERT [dbo].[ProductManufacturer] ([id], [NameProductManufacturer]) VALUES (11, N'trixie')
INSERT [dbo].[ProductManufacturer] ([id], [NameProductManufacturer]) VALUES (12, N'True Touch')
INSERT [dbo].[ProductManufacturer] ([id], [NameProductManufacturer]) VALUES (13, N'ZooM')
SET IDENTITY_INSERT [dbo].[ProductManufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductName] ON 

INSERT [dbo].[ProductName] ([id], [NameProduct]) VALUES (1, N'Игрушка')
INSERT [dbo].[ProductName] ([id], [NameProduct]) VALUES (2, N'Клетка')
INSERT [dbo].[ProductName] ([id], [NameProduct]) VALUES (3, N'Лакомство')
INSERT [dbo].[ProductName] ([id], [NameProduct]) VALUES (4, N'Лежак')
INSERT [dbo].[ProductName] ([id], [NameProduct]) VALUES (5, N'Миска')
INSERT [dbo].[ProductName] ([id], [NameProduct]) VALUES (6, N'Мячик')
INSERT [dbo].[ProductName] ([id], [NameProduct]) VALUES (7, N'Сухой корм')
INSERT [dbo].[ProductName] ([id], [NameProduct]) VALUES (8, N'Щетка-варежка')
SET IDENTITY_INSERT [dbo].[ProductName] OFF
GO
SET IDENTITY_INSERT [dbo].[pvz1] ON 

INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (1, 344288, 1, 28, 1)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (2, 614164, 1, 25, 30)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (3, 394242, 1, 7, 43)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (4, 660540, 1, 23, 25)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (5, 125837, 1, 30, 40)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (6, 125703, 1, 16, 49)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (7, 625283, 1, 17, 46)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (8, 614611, 1, 11, 50)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (9, 454311, 1, 14, 19)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (10, 660007, 1, 15, 19)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (11, 603036, 1, 20, 4)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (12, 450983, 1, 8, 26)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (13, 394782, 1, 28, 3)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (14, 603002, 1, 4, 28)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (15, 450558, 1, 12, 30)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (16, 394060, 1, 26, 43)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (17, 410661, 1, 29, 50)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (18, 625590, 1, 7, 20)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (19, 625683, 1, 1, NULL)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (20, 400562, 1, 5, 32)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (21, 614510, 1, 9, 47)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (22, 410542, 1, 21, 46)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (23, 620839, 1, 27, 8)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (24, 443890, 1, 7, 1)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (25, 603379, 1, 24, 46)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (26, 603721, 1, 3, 41)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (27, 410172, 1, 22, 13)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (28, 420151, 1, 2, 32)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (29, 125061, 1, 18, 8)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (30, 630370, 1, 30, 24)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (31, 614753, 1, 19, 35)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (32, 426030, 1, 9, 44)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (33, 450375, 1, 6, 44)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (34, 625560, 1, 13, 12)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (35, 630201, 1, 8, 17)
INSERT [dbo].[pvz1] ([id], [art], [city], [street], [house]) VALUES (36, 190949, 1, 10, 26)
SET IDENTITY_INSERT [dbo].[pvz1] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([IDRole], [NameRole]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([IDRole], [NameRole]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([IDRole], [NameRole]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (1, N'ул.8Марта')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (2, N'ул.Вишневая')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (3, N'ул.Гоголя')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (4, N'ул.Дзержинского')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (5, N'ул.Зеленая')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (6, N'ул.Клубная')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (7, N'ул.Коммунистическая')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (8, N'ул.Комсомольская')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (9, N'ул.Маяковского')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (10, N'ул.Мичурина')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (11, N'ул.Молодежная')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (12, N'ул.Набережная')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (13, N'ул.Некрасова')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (14, N'ул.Новая')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (15, N'ул.Октябрьская')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (16, N'ул.Партизанская')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (17, N'ул.Победы')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (18, N'ул.Подгорная')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (19, N'ул.Полевая')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (20, N'ул.Садовая')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (21, N'ул.Светлая')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (22, N'ул.Северная')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (23, N'ул.Солнечная')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (24, N'ул.Спортивная')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (25, N'ул.Степная')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (26, N'ул.Фрунзе')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (27, N'ул.Цветочная')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (28, N'ул.Чехова')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (29, N'ул.Школьная')
INSERT [dbo].[Street] ([id], [NmaeStreet]) VALUES (30, N'ул.Шоссейная')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [role], [surName], [name], [patronymic], [login], [password]) VALUES (1, 2, N'Волкова', N'Эмилия', N'Артёмовна', N'nokupekidda2001@gmail.com', N'JlFRCZ')
INSERT [dbo].[User] ([id], [role], [surName], [name], [patronymic], [login], [password]) VALUES (2, 3, N'Денисов', N'Михаил', N'Романович', N'frusubroppotou656@yandex.ru', N'YOyhfR')
INSERT [dbo].[User] ([id], [role], [surName], [name], [patronymic], [login], [password]) VALUES (3, 1, N'Игнатьева', N'Алина', N'Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp')
INSERT [dbo].[User] ([id], [role], [surName], [name], [patronymic], [login], [password]) VALUES (4, 3, N'Соловьев', N'Ярослав', N'Маркович', N'frapreubrulloba1141@yandex.ru', N'rwVDh9')
INSERT [dbo].[User] ([id], [role], [surName], [name], [patronymic], [login], [password]) VALUES (5, 1, N'Суслов', N'Илья', N'Арсентьевич', N'pixil59@gmail.com', N'2L6KZG')
INSERT [dbo].[User] ([id], [role], [surName], [name], [patronymic], [login], [password]) VALUES (6, 3, N'Тимофеев', N'Михаил', N'Елисеевич', N'leuttevitrafo1998@mail.ru', N'RSbvHv')
INSERT [dbo].[User] ([id], [role], [surName], [name], [patronymic], [login], [password]) VALUES (7, 2, N'Филимонов', N'Роберт', N'Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos')
INSERT [dbo].[User] ([id], [role], [surName], [name], [patronymic], [login], [password]) VALUES (8, 2, N'Чистякова', N'Виктория', N'Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr')
INSERT [dbo].[User] ([id], [role], [surName], [name], [patronymic], [login], [password]) VALUES (9, 2, N'Шилова', N'Майя', N'Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT')
INSERT [dbo].[User] ([id], [role], [surName], [name], [patronymic], [login], [password]) VALUES (10, 1, N'Яковлева', N'Ярослава', N'Даниэльевна', N'deummecillummu-4992@mail.ru', N'uzWC67')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProductCategory])
REFERENCES [dbo].[ProductCategory] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCost] FOREIGN KEY([ProductCost])
REFERENCES [dbo].[ProductCost] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCost]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductManufacturer] FOREIGN KEY([ProductManufacturer])
REFERENCES [dbo].[ProductManufacturer] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductManufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductName] FOREIGN KEY([ProductName])
REFERENCES [dbo].[ProductName] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductName]
GO
ALTER TABLE [dbo].[pvz1]  WITH CHECK ADD  CONSTRAINT [FK_pvz1_City] FOREIGN KEY([city])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[pvz1] CHECK CONSTRAINT [FK_pvz1_City]
GO
ALTER TABLE [dbo].[pvz1]  WITH CHECK ADD  CONSTRAINT [FK_pvz1_Street] FOREIGN KEY([street])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[pvz1] CHECK CONSTRAINT [FK_pvz1_Street]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([role])
REFERENCES [dbo].[Role] ([IDRole])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [petshop2.0] SET  READ_WRITE 
GO
