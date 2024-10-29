USE [master]
GO
/****** Object:  Database [petshop2.0]    Script Date: 29.10.2024 12:28:16 ******/
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
/****** Object:  Table [dbo].[City]    Script Date: 29.10.2024 12:28:16 ******/
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
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 29.10.2024 12:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article] [int] NOT NULL,
	[number] [int] NOT NULL,
	[DeliveryDate] [date] NOT NULL,
	[DatePick] [date] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[SurName] [nvarchar](52) NULL,
	[Name] [nvarchar](52) NULL,
	[Patronymic] [nvarchar](52) NULL,
	[Code] [int] NOT NULL,
	[ProductStatys] [int] NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 29.10.2024 12:28:16 ******/
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
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 29.10.2024 12:28:16 ******/
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
/****** Object:  Table [dbo].[ProductCost]    Script Date: 29.10.2024 12:28:16 ******/
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
/****** Object:  Table [dbo].[ProductManufacturer]    Script Date: 29.10.2024 12:28:16 ******/
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
/****** Object:  Table [dbo].[ProductName]    Script Date: 29.10.2024 12:28:16 ******/
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
/****** Object:  Table [dbo].[PVZ]    Script Date: 29.10.2024 12:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PVZ](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[art] [int] NOT NULL,
	[city] [int] NOT NULL,
	[street] [int] NOT NULL,
	[house] [int] NOT NULL,
 CONSTRAINT [PK_PVZ] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pynkt]    Script Date: 29.10.2024 12:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pynkt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[art] [int] NOT NULL,
	[city] [nvarchar](52) NOT NULL,
	[street] [nvarchar](52) NOT NULL,
	[house] [int] NOT NULL,
 CONSTRAINT [PK_Pynkt] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 29.10.2024 12:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameRole] [int] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 29.10.2024 12:28:16 ******/
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
/****** Object:  Table [dbo].[user]    Script Date: 29.10.2024 12:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [int] NOT NULL,
	[surname] [nchar](10) NOT NULL,
	[name] [nchar](10) NOT NULL,
	[patronymic] [nchar](10) NOT NULL,
	[login] [nvarchar](52) NOT NULL,
	[password] [nvarchar](52) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zakaz1]    Script Date: 29.10.2024 12:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zakaz1](
	[Id] [int] NOT NULL,
	[artik] [nvarchar](52) NOT NULL,
	[num] [int] NOT NULL,
	[DateZ] [date] NOT NULL,
	[DateD] [date] NOT NULL,
	[pvz] [int] NOT NULL,
	[surName] [nvarchar](52) NULL,
	[Name] [nvarchar](52) NULL,
	[Patronymic] [nvarchar](52) NULL,
	[Kod] [int] NOT NULL,
	[StatysZ] [int] NULL,
 CONSTRAINT [PK_Zakaz1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pynkt] ON 

INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (1, 344288, N'г.Нефтеюганск', N'ул.Чехова', 1)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (2, 614164, N'г.Нефтеюганск', N'ул.Степная', 30)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (3, 394242, N'г.Нефтеюганск', N'ул.Коммунистическая', 43)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (4, 660540, N'г.Нефтеюганск', N'ул.Солнечная', 25)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (5, 125837, N'г.Нефтеюганск', N'ул.Шоссейная', 40)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (6, 125703, N'г.Нефтеюганск', N'ул.Партизанская', 49)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (7, 625283, N'г.Нефтеюганск', N'ул.Победы', 46)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (8, 614611, N'г.Нефтеюганск', N'ул.Молодежная', 50)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (9, 454311, N'г.Нефтеюганск', N'ул.Новая', 19)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (10, 660007, N'г.Нефтеюганск', N'ул.Октябрьская', 19)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (11, 603036, N'г.Нефтеюганск', N'ул.Садовая', 4)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (12, 450983, N'г.Нефтеюганск', N'ул.Комсомольская', 26)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (13, 394782, N'г.Нефтеюганск', N'ул.Чехова', 3)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (14, 603002, N'г.Нефтеюганск', N'ул.Дзержинского', 28)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (15, 450558, N'г.Нефтеюганск', N'ул.Набережная', 30)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (16, 394060, N'г.Нефтеюганск', N'ул.Фрунзе', 43)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (17, 410661, N'г.Нефтеюганск', N'ул.Школьная', 50)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (18, 625590, N'г.Нефтеюганск', N'ул.Коммунистическая', 20)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (19, 625683, N'г.Нефтеюганск', N'ул.8Марта', 52)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (20, 400562, N'г.Нефтеюганск', N'ул.Зеленая', 32)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (21, 614510, N'г.Нефтеюганск', N'ул.Маяковского', 47)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (22, 410542, N'г.Нефтеюганск', N'ул.Светлая', 46)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (23, 620839, N'г.Нефтеюганск', N'ул.Цветочная', 8)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (24, 443890, N'г.Нефтеюганск', N'ул.Коммунистическая', 1)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (25, 603379, N'г.Нефтеюганск', N'ул.Спортивная', 46)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (26, 603721, N'г.Нефтеюганск', N'ул.Гоголя', 41)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (27, 410172, N'г.Нефтеюганск', N'ул.Северная', 13)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (28, 420151, N'г.Нефтеюганск', N'ул.Вишневая', 32)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (29, 125061, N'г.Нефтеюганск', N'ул.Подгорная', 8)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (30, 630370, N'г.Нефтеюганск', N'ул.Шоссейная', 24)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (31, 614753, N'г.Нефтеюганск', N'ул.Полевая', 35)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (32, 426030, N'г.Нефтеюганск', N'ул.Маяковского', 44)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (33, 450375, N'г.Нефтеюганск', N'ул.Клубная', 44)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (34, 625560, N'г.Нефтеюганск', N'ул.Некрасова', 12)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (35, 630201, N'г.Нефтеюганск', N'ул.Комсомольская', 17)
INSERT [dbo].[Pynkt] ([Id], [art], [city], [street], [house]) VALUES (36, 190949, N'г.Нефтеюганск', N'ул.Мичурина', 26)
SET IDENTITY_INSERT [dbo].[Pynkt] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [role], [surname], [name], [patronymic], [login], [password]) VALUES (21, 2, N'Волкова   ', N'Эмилия    ', N'Артёмовна ', N'nokupekidda2001@gmail.com', N'JlFRCZ')
INSERT [dbo].[user] ([id], [role], [surname], [name], [patronymic], [login], [password]) VALUES (22, 3, N'Денисов   ', N'Михаил    ', N'Романович ', N'frusubroppotou656@yandex.ru', N'YOyhfR')
INSERT [dbo].[user] ([id], [role], [surname], [name], [patronymic], [login], [password]) VALUES (23, 1, N'Игнатьева ', N'Алина     ', N'Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp')
INSERT [dbo].[user] ([id], [role], [surname], [name], [patronymic], [login], [password]) VALUES (24, 3, N'Соловьев  ', N'Ярослав   ', N'Маркович  ', N'frapreubrulloba1141@yandex.ru', N'rwVDh9')
INSERT [dbo].[user] ([id], [role], [surname], [name], [patronymic], [login], [password]) VALUES (26, 3, N'Тимофеев  ', N'Михаил    ', N'Елисеевич ', N'leuttevitrafo1998@mail.ru', N'RSbvHv')
INSERT [dbo].[user] ([id], [role], [surname], [name], [patronymic], [login], [password]) VALUES (27, 2, N'Филимонов ', N'Роберт    ', N'Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos')
INSERT [dbo].[user] ([id], [role], [surname], [name], [patronymic], [login], [password]) VALUES (28, 2, N'Чистякова ', N'Виктория  ', N'Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr')
INSERT [dbo].[user] ([id], [role], [surname], [name], [patronymic], [login], [password]) VALUES (29, 2, N'Шилова    ', N'Майя      ', N'Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT')
SET IDENTITY_INSERT [dbo].[user] OFF
GO
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (1, N'A112Т4', 15, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, NULL, NULL, NULL, 601, 2)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (2, N'D643B5', 1, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, NULL, NULL, NULL, 602, 2)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (3, N'E345R4', 2, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, N'Шилова', N'Майя', N'Артемьевна', 603, 1)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (4, N'E431R5', 10, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, NULL, NULL, NULL, 604, 1)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (5, N'G453T5', 1, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, NULL, NULL, NULL, 605, 1)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (6, N'K452T5', 1, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, N'Филимонов', N'Роберт', N'Васильевич', 606, 1)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (7, N'Q245F5', 2, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, NULL, NULL, NULL, 607, 2)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (8, N'T432F4', 10, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, NULL, NULL, NULL, 608, 2)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (9, N'V527T5', 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, N'Волкова', N'Эмилия', N'Артёмовна', 609, 2)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (10, N'W548O7', 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, N'Чистякова', N'Виктория', N'Степановна', 610, 1)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (11, N'Y324F4', 15, CAST(N'2022-05-16' AS Date), CAST(N'2022-05-22' AS Date), 38, NULL, NULL, NULL, 611, NULL)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (12, N'E532Q5', 10, CAST(N'2022-05-17' AS Date), CAST(N'2022-05-23' AS Date), 39, NULL, NULL, NULL, 612, NULL)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (13, N'F432F4', 15, CAST(N'2022-05-18' AS Date), CAST(N'2022-05-24' AS Date), 41, NULL, NULL, NULL, 613, NULL)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (14, N'G345E4', 1, CAST(N'2022-05-19' AS Date), CAST(N'2022-05-25' AS Date), 43, NULL, NULL, NULL, 614, NULL)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (15, N'H342F5', 2, CAST(N'2022-05-20' AS Date), CAST(N'2022-05-26' AS Date), 45, NULL, NULL, NULL, 615, NULL)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (16, N'H436R4', 1, CAST(N'2022-05-21' AS Date), CAST(N'2022-05-27' AS Date), 46, NULL, NULL, NULL, 616, NULL)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (17, N'K436T5', 1, CAST(N'2022-05-22' AS Date), CAST(N'2022-05-28' AS Date), 48, NULL, NULL, NULL, 617, NULL)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (18, N'M356R4', 1, CAST(N'2022-05-23' AS Date), CAST(N'2022-05-29' AS Date), 50, NULL, NULL, NULL, 618, NULL)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (19, N'R356F4', 1, CAST(N'2022-05-24' AS Date), CAST(N'2022-05-30' AS Date), 52, NULL, NULL, NULL, 619, NULL)
INSERT [dbo].[Zakaz1] ([Id], [artik], [num], [DateZ], [DateD], [pvz], [surName], [Name], [Patronymic], [Kod], [StatysZ]) VALUES (20, N'V527T5', 1, CAST(N'2022-05-25' AS Date), CAST(N'2022-05-31' AS Date), 53, NULL, NULL, NULL, 620, NULL)
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
ALTER TABLE [dbo].[PVZ]  WITH CHECK ADD  CONSTRAINT [FK_PVZ_City] FOREIGN KEY([city])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[PVZ] CHECK CONSTRAINT [FK_PVZ_City]
GO
ALTER TABLE [dbo].[PVZ]  WITH CHECK ADD  CONSTRAINT [FK_PVZ_Street] FOREIGN KEY([street])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[PVZ] CHECK CONSTRAINT [FK_PVZ_Street]
GO
USE [master]
GO
ALTER DATABASE [petshop2.0] SET  READ_WRITE 
GO
