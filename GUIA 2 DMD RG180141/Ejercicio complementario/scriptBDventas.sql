USE [master]
GO
/****** Object:  Database [Complementario_ventas]    Script Date: 14-Aug-20 9:53:32 AM ******/
CREATE DATABASE [Complementario_ventas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Complementario_ventas', FILENAME = N'D:\SQL\MSSQL14.MSSQLSERVER\MSSQL\DATA\Complementario_ventas.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Complementario_ventas_log', FILENAME = N'D:\SQL\MSSQL14.MSSQLSERVER\MSSQL\DATA\Complementario_ventas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Complementario_ventas] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Complementario_ventas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Complementario_ventas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Complementario_ventas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Complementario_ventas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Complementario_ventas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Complementario_ventas] SET ARITHABORT OFF 
GO
ALTER DATABASE [Complementario_ventas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Complementario_ventas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Complementario_ventas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Complementario_ventas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Complementario_ventas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Complementario_ventas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Complementario_ventas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Complementario_ventas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Complementario_ventas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Complementario_ventas] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Complementario_ventas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Complementario_ventas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Complementario_ventas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Complementario_ventas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Complementario_ventas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Complementario_ventas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Complementario_ventas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Complementario_ventas] SET RECOVERY FULL 
GO
ALTER DATABASE [Complementario_ventas] SET  MULTI_USER 
GO
ALTER DATABASE [Complementario_ventas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Complementario_ventas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Complementario_ventas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Complementario_ventas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Complementario_ventas] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Complementario_ventas', N'ON'
GO
ALTER DATABASE [Complementario_ventas] SET QUERY_STORE = OFF
GO
USE [Complementario_ventas]
GO
/****** Object:  Table [dbo].[Compras$]    Script Date: 14-Aug-20 9:53:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras$](
	[id_lugar_compra] [int] NOT NULL,
	[n_region] [int] NULL,
	[region] [nvarchar](255) NULL,
	[provincia] [nvarchar](255) NULL,
	[comuna] [nvarchar](255) NULL,
	[ciudad] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fecha$]    Script Date: 14-Aug-20 9:53:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fecha$](
	[id_fecha] [int] NOT NULL,
	[año] [int] NULL,
	[mes_nombre] [nvarchar](255) NULL,
	[mes] [float] NULL,
	[semestre] [float] NULL,
	[trimestre] [float] NULL,
	[semana] [float] NULL,
	[dia_nombre] [nvarchar](255) NULL,
	[dia] [float] NULL,
	[fecha_completa] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto$]    Script Date: 14-Aug-20 9:53:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto$](
	[id_producto] [int] NOT NULL,
	[invtid] [nvarchar](255) NULL,
	[tru_codigo] [float] NULL,
	[descr_producto] [nvarchar](255) NULL,
	[cod_marca] [float] NULL,
	[descr_marca] [nvarchar](255) NULL,
	[categoria] [nvarchar](255) NULL,
	[cod_seccion] [float] NULL,
	[descr_seccion] [nvarchar](255) NULL,
	[weight] [nvarchar](255) NULL,
	[volume] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sector_venta$]    Script Date: 14-Aug-20 9:53:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sector_venta$](
	[id_sector_venta] [int] NOT NULL,
	[canal_1] [nvarchar](255) NULL,
	[canal_2] [nvarchar](255) NULL,
	[cod_zona] [float] NULL,
	[zona] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendedor$]    Script Date: 14-Aug-20 9:53:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendedor$](
	[id_vendedor] [int] NOT NULL,
	[cod_vendedor] [nvarchar](255) NULL,
	[cod_persona] [float] NULL,
	[vendedor] [nvarchar](255) NULL,
	[supervisor] [nvarchar](255) NULL,
	[jefe_regional] [nvarchar](255) NULL,
	[subgerente] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta$]    Script Date: 14-Aug-20 9:53:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta$](
	[id_lugar_compra] [int] NOT NULL,
	[id_sector_venta] [int] NOT NULL,
	[id_vendedor] [int] NOT NULL,
	[id_fecha] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[num_nota_venta] [int] NULL,
	[not_cod_cd] [int] NULL,
	[MontoVenta] [float] NULL,
	[MontoCosto] [float] NULL,
	[Ganancia] [float] NULL,
	[Unidades] [float] NULL,
	[Volumen] [float] NULL,
	[Kilos] [float] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (1, 4, N'El Salvador', N'La Libertad', N'Santa Tecla', N'Antiguo Cuscatlan')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (2, 4, N'El Salvador', N'La Libertad', N'Santa Tecla', N'Chiltiupan')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (3, 4, N'El Salvador', N'San Salvador', N'San Salvador', N'Delgado')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (4, 4, N'El Salvador', N'San Salvador', N'San Salvador', N'Mejicanos')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (5, 4, N'El Salvador', N'San Miguel', N'Chinameca', N'Chinameca')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (6, 4, N'El Salvador', N'San Miguel', N'San Miguel', N'Chapeltique')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (7, 4, N'El Salvador', N'La Libertad', N'Santa Tecla', N'Nuevo Cuscatlan')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (8, 4, N'El Salvador', N'San Salvador', N'San Salvador', N'Soyapango')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (9, 4, N'El Salvador', N'Santa Ana', N'Chalchuapa', N'Chalchuapa')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (10, 4, N'El Salvador', N'La Libertad', N'Santa Tecla', N'Zaragoza')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (1, 4, N'El Salvador', N'La Libertad', N'Santa Tecla', N'Antiguo Cuscatlan')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (2, 4, N'El Salvador', N'La Libertad', N'Santa Tecla', N'Chiltiupan')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (3, 4, N'El Salvador', N'San Salvador', N'San Salvador', N'Delgado')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (4, 4, N'El Salvador', N'San Salvador', N'San Salvador', N'Mejicanos')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (5, 4, N'El Salvador', N'San Miguel', N'Chinameca', N'Chinameca')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (6, 4, N'El Salvador', N'San Miguel', N'San Miguel', N'Chapeltique')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (7, 4, N'El Salvador', N'La Libertad', N'Santa Tecla', N'Nuevo Cuscatlan')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (8, 4, N'El Salvador', N'San Salvador', N'San Salvador', N'Soyapango')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (9, 4, N'El Salvador', N'Santa Ana', N'Chalchuapa', N'Chalchuapa')
INSERT [dbo].[Compras$] ([id_lugar_compra], [n_region], [region], [provincia], [comuna], [ciudad]) VALUES (10, 4, N'El Salvador', N'La Libertad', N'Santa Tecla', N'Zaragoza')
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (1, 2013, N'Junio', 6, 1, 2, 1, N'Martes', 2, CAST(N'2013-06-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (2, 2013, N'Junio', 6, 1, 2, 1, N'Miercoles', 3, CAST(N'2013-06-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (3, 2013, N'Junio', 6, 1, 2, 2, N'Viernes', 5, CAST(N'2013-07-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (4, 2013, N'Julio', 7, 2, 3, 1, N'Domingo', 7, CAST(N'2013-07-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (5, 2013, N'Septiembre', 9, 2, 3, 2, N'Sabado', 6, CAST(N'2013-09-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (6, 2013, N'Septiembre', 9, 2, 3, 3, N'Lunes', 1, CAST(N'2013-09-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (7, 2013, N'Octubre', 10, 2, 4, 2, N'Martes', 2, CAST(N'2013-10-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (8, 2013, N'Octubre', 10, 2, 4, 2, N'Viernes', 5, CAST(N'2013-10-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (9, 2013, N'Diciembre', 12, 2, 4, 3, N'Lunes', 1, CAST(N'2013-12-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (10, 2013, N'Diciembre', 12, 2, 4, 4, N'Domingo', 7, CAST(N'2013-12-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (1, 2013, N'Junio', 6, 1, 2, 1, N'Martes', 2, CAST(N'2013-06-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (2, 2013, N'Junio', 6, 1, 2, 1, N'Miercoles', 3, CAST(N'2013-06-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (3, 2013, N'Junio', 6, 1, 2, 2, N'Viernes', 5, CAST(N'2013-07-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (4, 2013, N'Julio', 7, 2, 3, 1, N'Domingo', 7, CAST(N'2013-07-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (5, 2013, N'Septiembre', 9, 2, 3, 2, N'Sabado', 6, CAST(N'2013-09-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (6, 2013, N'Septiembre', 9, 2, 3, 3, N'Lunes', 1, CAST(N'2013-09-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (7, 2013, N'Octubre', 10, 2, 4, 2, N'Martes', 2, CAST(N'2013-10-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (8, 2013, N'Octubre', 10, 2, 4, 2, N'Viernes', 5, CAST(N'2013-10-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (9, 2013, N'Diciembre', 12, 2, 4, 3, N'Lunes', 1, CAST(N'2013-12-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Fecha$] ([id_fecha], [año], [mes_nombre], [mes], [semestre], [trimestre], [semana], [dia_nombre], [dia], [fecha_completa]) VALUES (10, 2013, N'Diciembre', 12, 2, 4, 4, N'Domingo', 7, CAST(N'2013-12-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (1, N'A1', 11, N'Detergente en polvo', 1, N'Fab', N'Limpieza', 1, N'Articulos de limpieza', N'0.5lb', N'1L')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (2, N'A2', 12, N'Papel Higienico', 2, N'Scott', N'Limpieza', 1, N'Articulos de limpieza', N'500 g', N'500 g')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (3, N'A3', 13, N'Pasta Dental', 1, N'Fab', N'Limpieza', 1, N'Articulos de limpieza', N'200 g', N'200 g')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (4, N'A4', 14, N'Shampoo', 1, N'Fab', N'Limpieza', 1, N'Articulos de limpieza', N'750 g', N'751 g')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (5, N'B1', 21, N'Arroz', 3, N'Cinco estrellas', N'Grano Basico', 2, N'Granos basicos', N'1lb', N'1lb')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (6, N'B2', 22, N'Frijoles', 4, N'Don frijol', N'Grano Basico', 2, N'Granos basicos', N'1lb', N'1lb')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (7, N'B3', 23, N'Azucar', 5, N'Del cañal', N'Grano Basico', 2, N'Granos basicos', N'1lb', N'1lb')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (8, N'B4', 24, N'Sal', 6, N'La fina', N'Grano Basico', 2, N'Granos basicos', N'1lb', N'1lb')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (9, N'B5', 25, N'Lentejas', 7, N'Goya', N'Alimentos', 3, N'Alimentos varios', N'1lb', N'1lb')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (10, N'B6', 26, N'Sopa', 8, N'Maggie', N'Alimentos', 3, N'Alimentos varios', N'1lb', N'1lb')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (1, N'A1', 11, N'Detergente en polvo', 1, N'Fab', N'Limpieza', 1, N'Articulos de limpieza', N'0.5lb', N'1L')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (2, N'A2', 12, N'Papel Higienico', 2, N'Scott', N'Limpieza', 1, N'Articulos de limpieza', N'500 g', N'500 g')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (3, N'A3', 13, N'Pasta Dental', 1, N'Fab', N'Limpieza', 1, N'Articulos de limpieza', N'200 g', N'200 g')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (4, N'A4', 14, N'Shampoo', 1, N'Fab', N'Limpieza', 1, N'Articulos de limpieza', N'750 g', N'751 g')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (5, N'B1', 21, N'Arroz', 3, N'Cinco estrellas', N'Grano Basico', 2, N'Granos basicos', N'1lb', N'1lb')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (6, N'B2', 22, N'Frijoles', 4, N'Don frijol', N'Grano Basico', 2, N'Granos basicos', N'1lb', N'1lb')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (7, N'B3', 23, N'Azucar', 5, N'Del cañal', N'Grano Basico', 2, N'Granos basicos', N'1lb', N'1lb')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (8, N'B4', 24, N'Sal', 6, N'La fina', N'Grano Basico', 2, N'Granos basicos', N'1lb', N'1lb')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (9, N'B5', 25, N'Lentejas', 7, N'Goya', N'Alimentos', 3, N'Alimentos varios', N'1lb', N'1lb')
INSERT [dbo].[Producto$] ([id_producto], [invtid], [tru_codigo], [descr_producto], [cod_marca], [descr_marca], [categoria], [cod_seccion], [descr_seccion], [weight], [volume]) VALUES (10, N'B6', 26, N'Sopa', 8, N'Maggie', N'Alimentos', 3, N'Alimentos varios', N'1lb', N'1lb')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (1, N'Internet', N'Telefono', 1, N'Antiguo Cuscatlan')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (2, N'Internet', N'Telefono', 2, N'Chiltiupan')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (3, N'Internet', N'Telefono', 3, N'Delgado')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (4, N'Internet', N'Telefono', 4, N'Mejicanos')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (5, N'Internet', N'Telefono', 5, N'Chinameca')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (6, N'Internet', N'Telefono', 6, N'Chapeltique')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (7, N'Internet', N'Telefono', 7, N'Nuevo Cuscatlan')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (8, N'Internet', N'Telefono', 8, N'Soyapango')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (9, N'Internet', N'Telefono', 9, N'Chalchuapa')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (10, N'Internet', N'Telefono', 10, N'Zaragoza')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (1, N'Internet', N'Telefono', 1, N'Antiguo Cuscatlan')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (2, N'Internet', N'Telefono', 2, N'Chiltiupan')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (3, N'Internet', N'Telefono', 3, N'Delgado')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (4, N'Internet', N'Telefono', 4, N'Mejicanos')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (5, N'Internet', N'Telefono', 5, N'Chinameca')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (6, N'Internet', N'Telefono', 6, N'Chapeltique')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (7, N'Internet', N'Telefono', 7, N'Nuevo Cuscatlan')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (8, N'Internet', N'Telefono', 8, N'Soyapango')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (9, N'Internet', N'Telefono', 9, N'Chalchuapa')
INSERT [dbo].[Sector_venta$] ([id_sector_venta], [canal_1], [canal_2], [cod_zona], [zona]) VALUES (10, N'Internet', N'Telefono', 10, N'Zaragoza')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (1, N'A1', 1, N'Josue Rivas', N'Mario Diaz', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (2, N'A2', 2, N'Diego Rivas', N'Mario Diaz', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (3, N'A3', 3, N'Guillermo Olmedo', N'Mario Diaz', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (4, N'B1', 4, N'Victor Ayala', N'Alejandro Lorenzana', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (5, N'B2', 5, N'Gabriel Rodriguez', N'Alejandro Lorenzana', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (6, N'B4', 6, N'Fernando Funes', N'Alejandro Lorenzana', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (7, N'C5', 7, N'Marvin Depaz', N'Daniela Garcia', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (8, N'C2', 8, N'Diego Rosales', N'Daniela Garcia', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (9, N'C4', 9, N'Rodrigo Flores', N'Daniela Garcia', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (10, N'D1', 10, N'Diego Gomez', N'Ernesto Caceres', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (1, N'A1', 1, N'Josue Rivas', N'Mario Diaz', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (2, N'A2', 2, N'Diego Rivas', N'Mario Diaz', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (3, N'A3', 3, N'Guillermo Olmedo', N'Mario Diaz', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (4, N'B1', 4, N'Victor Ayala', N'Alejandro Lorenzana', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (5, N'B2', 5, N'Gabriel Rodriguez', N'Alejandro Lorenzana', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (6, N'B4', 6, N'Fernando Funes', N'Alejandro Lorenzana', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (7, N'C5', 7, N'Marvin Depaz', N'Daniela Garcia', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (8, N'C2', 8, N'Diego Rosales', N'Daniela Garcia', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (9, N'C4', 9, N'Rodrigo Flores', N'Daniela Garcia', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Vendedor$] ([id_vendedor], [cod_vendedor], [cod_persona], [vendedor], [supervisor], [jefe_regional], [subgerente]) VALUES (10, N'D1', 10, N'Diego Gomez', N'Ernesto Caceres', N'Milton Paredes', N'Fernando Flores')
INSERT [dbo].[Venta$] ([id_lugar_compra], [id_sector_venta], [id_vendedor], [id_fecha], [id_producto], [num_nota_venta], [not_cod_cd], [MontoVenta], [MontoCosto], [Ganancia], [Unidades], [Volumen], [Kilos]) VALUES (1, 2, 2, 3, 9, 1, 1, 2000, 1350, 650, 300, 300, 300)
INSERT [dbo].[Venta$] ([id_lugar_compra], [id_sector_venta], [id_vendedor], [id_fecha], [id_producto], [num_nota_venta], [not_cod_cd], [MontoVenta], [MontoCosto], [Ganancia], [Unidades], [Volumen], [Kilos]) VALUES (2, 1, 4, 6, 10, 2, 2, 1500, 1000, 500, 200, 200, 200)
INSERT [dbo].[Venta$] ([id_lugar_compra], [id_sector_venta], [id_vendedor], [id_fecha], [id_producto], [num_nota_venta], [not_cod_cd], [MontoVenta], [MontoCosto], [Ganancia], [Unidades], [Volumen], [Kilos]) VALUES (3, 3, 1, 2, 7, 3, 3, 2350, 1890, 460, 460, 460, 260)
INSERT [dbo].[Venta$] ([id_lugar_compra], [id_sector_venta], [id_vendedor], [id_fecha], [id_producto], [num_nota_venta], [not_cod_cd], [MontoVenta], [MontoCosto], [Ganancia], [Unidades], [Volumen], [Kilos]) VALUES (4, 6, 5, 1, 6, 4, 4, 785, 490, 295, 135, 135, 135)
INSERT [dbo].[Venta$] ([id_lugar_compra], [id_sector_venta], [id_vendedor], [id_fecha], [id_producto], [num_nota_venta], [not_cod_cd], [MontoVenta], [MontoCosto], [Ganancia], [Unidades], [Volumen], [Kilos]) VALUES (5, 8, 7, 4, 4, 5, 5, 978, 580, 398, 160, 160, 160)
INSERT [dbo].[Venta$] ([id_lugar_compra], [id_sector_venta], [id_vendedor], [id_fecha], [id_producto], [num_nota_venta], [not_cod_cd], [MontoVenta], [MontoCosto], [Ganancia], [Unidades], [Volumen], [Kilos]) VALUES (1, 2, 2, 3, 9, 1, 1, 2000, 1350, 650, 300, 300, 300)
INSERT [dbo].[Venta$] ([id_lugar_compra], [id_sector_venta], [id_vendedor], [id_fecha], [id_producto], [num_nota_venta], [not_cod_cd], [MontoVenta], [MontoCosto], [Ganancia], [Unidades], [Volumen], [Kilos]) VALUES (2, 1, 4, 6, 10, 2, 2, 1500, 1000, 500, 200, 200, 200)
INSERT [dbo].[Venta$] ([id_lugar_compra], [id_sector_venta], [id_vendedor], [id_fecha], [id_producto], [num_nota_venta], [not_cod_cd], [MontoVenta], [MontoCosto], [Ganancia], [Unidades], [Volumen], [Kilos]) VALUES (3, 3, 1, 2, 7, 3, 3, 2350, 1890, 460, 460, 460, 260)
INSERT [dbo].[Venta$] ([id_lugar_compra], [id_sector_venta], [id_vendedor], [id_fecha], [id_producto], [num_nota_venta], [not_cod_cd], [MontoVenta], [MontoCosto], [Ganancia], [Unidades], [Volumen], [Kilos]) VALUES (4, 6, 5, 1, 6, 4, 4, 785, 490, 295, 135, 135, 135)
INSERT [dbo].[Venta$] ([id_lugar_compra], [id_sector_venta], [id_vendedor], [id_fecha], [id_producto], [num_nota_venta], [not_cod_cd], [MontoVenta], [MontoCosto], [Ganancia], [Unidades], [Volumen], [Kilos]) VALUES (5, 8, 7, 4, 4, 5, 5, 978, 580, 398, 160, 160, 160)
USE [master]
GO
ALTER DATABASE [Complementario_ventas] SET  READ_WRITE 
GO
