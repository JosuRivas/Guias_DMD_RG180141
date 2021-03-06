USE [master]
GO
/****** Object:  Database [Control_de_Libros_RG180141]    Script Date: 24-Jul-20 3:50:10 PM ******/
CREATE DATABASE [Control_de_Libros_RG180141]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Control_de_Libros_RG180141', FILENAME = N'D:\SQL\MSSQL14.MSSQLSERVER\MSSQL\DATA\Control_de_Libros_RG180141.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Control_de_Libros_RG180141_log', FILENAME = N'D:\SQL\MSSQL14.MSSQLSERVER\MSSQL\DATA\Control_de_Libros_RG180141_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Control_de_Libros_RG180141].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET ARITHABORT OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET RECOVERY FULL 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET  MULTI_USER 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Control_de_Libros_RG180141', N'ON'
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET QUERY_STORE = OFF
GO
USE [Control_de_Libros_RG180141]
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 24-Jul-20 3:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autor](
	[Codigo] [varchar](5) NOT NULL,
	[Nombres] [varchar](30) NULL,
	[Apellidos] [varchar](30) NULL,
	[Nacionalidad] [varchar](30) NULL,
 CONSTRAINT [PK_CodAut] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autor_Libro]    Script Date: 24-Jul-20 3:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autor_Libro](
	[Cod_Libro] [varchar](5) NULL,
	[Cod_Autor] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autores_España]    Script Date: 24-Jul-20 3:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autores_España](
	[Codigo] [varchar](5) NOT NULL,
	[Nombres] [varchar](40) NULL,
	[Apellidos] [varchar](40) NULL,
 CONSTRAINT [PK_Cod_Aut] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Editorial]    Script Date: 24-Jul-20 3:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Editorial](
	[Codigo] [varchar](5) NOT NULL,
	[Nombre] [varchar](30) NULL,
	[Pais] [varchar](20) NULL,
 CONSTRAINT [PK_CodEdi] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ejemplar]    Script Date: 24-Jul-20 3:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ejemplar](
	[Cod_Libro] [varchar](5) NULL,
	[Ubicacion] [varchar](30) NULL,
	[Estado] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 24-Jul-20 3:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libro](
	[Codigo] [varchar](5) NOT NULL,
	[Titulo] [varchar](30) NULL,
	[ISBN] [varchar](20) NULL,
	[Descripcion] [varchar](30) NULL,
	[Resumen] [varchar](30) NULL,
	[Año_edicion] [varchar](30) NULL,
	[Cod_editorial] [varchar](5) NULL,
 CONSTRAINT [PK_CodLib] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Autor] ([Codigo], [Nombres], [Apellidos], [Nacionalidad]) VALUES (N'AU01', N'Jose Pedro', N'Alvarado', N'Española')
INSERT [dbo].[Autor] ([Codigo], [Nombres], [Apellidos], [Nacionalidad]) VALUES (N'AU02', N'Maria Teresa', N'Rivas', N'Mexicano')
INSERT [dbo].[Autor] ([Codigo], [Nombres], [Apellidos], [Nacionalidad]) VALUES (N'AU03', N'Julio Carlos', N'Fernandez', N'Colombiano')
INSERT [dbo].[Autor] ([Codigo], [Nombres], [Apellidos], [Nacionalidad]) VALUES (N'AU04', N'Alexander', N'Rodriguez', N'Mexicano')
INSERT [dbo].[Autor] ([Codigo], [Nombres], [Apellidos], [Nacionalidad]) VALUES (N'AU05', N'Juan Manuel', N'Artiga', N'Colombiano')
INSERT [dbo].[Autor_Libro] ([Cod_Libro], [Cod_Autor]) VALUES (N'LB01', N'AU02')
INSERT [dbo].[Autor_Libro] ([Cod_Libro], [Cod_Autor]) VALUES (N'LB01', N'AU04')
INSERT [dbo].[Autor_Libro] ([Cod_Libro], [Cod_Autor]) VALUES (N'LB02', N'AU01')
INSERT [dbo].[Autor_Libro] ([Cod_Libro], [Cod_Autor]) VALUES (N'LB03', N'AU05')
INSERT [dbo].[Autor_Libro] ([Cod_Libro], [Cod_Autor]) VALUES (N'LB03', N'AU03')
INSERT [dbo].[Autor_Libro] ([Cod_Libro], [Cod_Autor]) VALUES (N'LB04', N'AU02')
INSERT [dbo].[Autor_Libro] ([Cod_Libro], [Cod_Autor]) VALUES (N'LB04', N'AU04')
INSERT [dbo].[Autores_España] ([Codigo], [Nombres], [Apellidos]) VALUES (N'AU01', N'Jose Pedro', N'Alvarado')
INSERT [dbo].[Editorial] ([Codigo], [Nombre], [Pais]) VALUES (N'ED01', N'Thomson International', N'España')
INSERT [dbo].[Editorial] ([Codigo], [Nombre], [Pais]) VALUES (N'ED02', N'Omega', N'Mexico')
INSERT [dbo].[Editorial] ([Codigo], [Nombre], [Pais]) VALUES (N'ED03', N'La fuente de la sabiduria', N'Colombia')
INSERT [dbo].[Editorial] ([Codigo], [Nombre], [Pais]) VALUES (N'ED04', N'Siglo XV', N'España')
INSERT [dbo].[Ejemplar] ([Cod_Libro], [Ubicacion], [Estado]) VALUES (N'LB01', N'Estante 1', N'Prestado')
INSERT [dbo].[Ejemplar] ([Cod_Libro], [Ubicacion], [Estado]) VALUES (N'LB02', N'Estante 2', N'Disponible')
INSERT [dbo].[Ejemplar] ([Cod_Libro], [Ubicacion], [Estado]) VALUES (N'LB02', N'Estante 2', N'Reservado')
INSERT [dbo].[Ejemplar] ([Cod_Libro], [Ubicacion], [Estado]) VALUES (N'LB03', N'Estante 3', N'Prestado')
INSERT [dbo].[Ejemplar] ([Cod_Libro], [Ubicacion], [Estado]) VALUES (N'LB04', N'Estante 4', N'Disponible')
INSERT [dbo].[Ejemplar] ([Cod_Libro], [Ubicacion], [Estado]) VALUES (N'LB02', N'Estante 2', N'Reservado')
INSERT [dbo].[Ejemplar] ([Cod_Libro], [Ubicacion], [Estado]) VALUES (N'LB04', N'Estante 4', N'Prestado')
INSERT [dbo].[Ejemplar] ([Cod_Libro], [Ubicacion], [Estado]) VALUES (N'LB01', N'Estante 1', N'Disponible')
INSERT [dbo].[Ejemplar] ([Cod_Libro], [Ubicacion], [Estado]) VALUES (N'LB02', N'Estante 2', N'Reservado')
INSERT [dbo].[Ejemplar] ([Cod_Libro], [Ubicacion], [Estado]) VALUES (N'LB03', N'Estante 3', N'Prestado')
INSERT [dbo].[Ejemplar] ([Cod_Libro], [Ubicacion], [Estado]) VALUES (N'LB01', N'Estante 1', N'Disponible')
INSERT [dbo].[Ejemplar] ([Cod_Libro], [Ubicacion], [Estado]) VALUES (N'LB06', N'Estante 5', N'Prestado')
INSERT [dbo].[Ejemplar] ([Cod_Libro], [Ubicacion], [Estado]) VALUES (N'LB06', N'Estante 5', N'Disponible')
INSERT [dbo].[Ejemplar] ([Cod_Libro], [Ubicacion], [Estado]) VALUES (N'LB05', N'Estante 5', N'Disponible')
INSERT [dbo].[Libro] ([Codigo], [Titulo], [ISBN], [Descripcion], [Resumen], [Año_edicion], [Cod_editorial]) VALUES (N'LB01', N'Metodologia de la programacion', N'123-334-456', N'Sintaxis basicas', N'204 Paginas', N'2000', N'ED02')
INSERT [dbo].[Libro] ([Codigo], [Titulo], [ISBN], [Descripcion], [Resumen], [Año_edicion], [Cod_editorial]) VALUES (N'LB02', N'SQL Server 2005', N'345-678-076', N'Explicacion de consultas SQL', N'798 Paginas', N'2005', N'ED03')
INSERT [dbo].[Libro] ([Codigo], [Titulo], [ISBN], [Descripcion], [Resumen], [Año_edicion], [Cod_editorial]) VALUES (N'LB03', N'Como programar en C/C++', N'153-567-345', N'Diferencias entre C y C++', N'156 Paginas', N'1997', N'ED02')
INSERT [dbo].[Libro] ([Codigo], [Titulo], [ISBN], [Descripcion], [Resumen], [Año_edicion], [Cod_editorial]) VALUES (N'LB04', N'Aprender PHP en 30 dias', N'234-345-987', N'Sintaxis PHP para paginas web', N'200 paginas', N'2005', N'ED01')
INSERT [dbo].[Libro] ([Codigo], [Titulo], [ISBN], [Descripcion], [Resumen], [Año_edicion], [Cod_editorial]) VALUES (N'LB05', N'SQL Server 2008', N'789-255-487', N'Administracion de BD', N'150 paginas', N'2008', N'ED03')
INSERT [dbo].[Libro] ([Codigo], [Titulo], [ISBN], [Descripcion], [Resumen], [Año_edicion], [Cod_editorial]) VALUES (N'LB06', N'CSS y HTML', N'652-414-111', N'Creacion de paginas web', N'350 paginas', N'2007', N'ED01')
ALTER TABLE [dbo].[Autor_Libro]  WITH CHECK ADD FOREIGN KEY([Cod_Autor])
REFERENCES [dbo].[Autor] ([Codigo])
GO
ALTER TABLE [dbo].[Autor_Libro]  WITH CHECK ADD FOREIGN KEY([Cod_Libro])
REFERENCES [dbo].[Libro] ([Codigo])
GO
ALTER TABLE [dbo].[Ejemplar]  WITH CHECK ADD FOREIGN KEY([Cod_Libro])
REFERENCES [dbo].[Libro] ([Codigo])
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD FOREIGN KEY([Cod_editorial])
REFERENCES [dbo].[Editorial] ([Codigo])
GO
USE [master]
GO
ALTER DATABASE [Control_de_Libros_RG180141] SET  READ_WRITE 
GO
