USE [master]
GO
/****** Object:  Database [db_clientes]    Script Date: 18-Aug-20 10:05:19 AM ******/
CREATE DATABASE [db_clientes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_clientes', FILENAME = N'D:\SQL\MSSQL14.MSSQLSERVER\MSSQL\DATA\db_clientes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_clientes_log', FILENAME = N'D:\SQL\MSSQL14.MSSQLSERVER\MSSQL\DATA\db_clientes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [db_clientes] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_clientes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_clientes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_clientes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_clientes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_clientes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_clientes] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_clientes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_clientes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_clientes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_clientes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_clientes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_clientes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_clientes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_clientes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_clientes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_clientes] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_clientes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_clientes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_clientes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_clientes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_clientes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_clientes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_clientes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_clientes] SET RECOVERY FULL 
GO
ALTER DATABASE [db_clientes] SET  MULTI_USER 
GO
ALTER DATABASE [db_clientes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_clientes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_clientes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_clientes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_clientes] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_clientes', N'ON'
GO
ALTER DATABASE [db_clientes] SET QUERY_STORE = OFF
GO
USE [db_clientes]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 18-Aug-20 10:05:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[idcliente] [int] NOT NULL,
	[idtipocliente] [int] NOT NULL,
	[codigo_cliente] [varchar](15) NOT NULL,
	[dui] [varchar](9) NOT NULL,
	[nit] [varchar](14) NOT NULL,
	[apellidos] [varchar](250) NOT NULL,
	[nombres] [varchar](250) NOT NULL,
	[sexo] [char](1) NOT NULL,
	[numero_telefono] [varchar](8) NOT NULL,
	[estado] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (1054, 1, N'sv-sm1054', N'024082919', N'02030510681014', N'SALAZAR DE SERMEÑO', N'MARITZA CAROLINA', N'f', N'64478435', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (1421, 1, N'sv-mn1421', N'014482905', N'02100107651014', N'MARROQUIN AREVALO', N'NESTOR MARIO', N'm', N'77407501', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (1664, 4, N'sv-cm1664', N'015965532', N'02100911630058', N'CABRERA MARTINEZ', N'MARTA ALICIA', N'f', N'62805523', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (2158, 4, N'sv-ra2158', N'002873946', N'02102501671058', N'RODRIGUEZ DE TOVAR', N'ANA LIZ', N'f', N'64405701', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (2164, 1, N'sv-mg2164', N'018045721', N'02102502640021', N'MAYORGA RAMIREZ', N'GABRIEL ANTONIO', N'm', N'70705723', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (3746, 3, N'sv-ac3746', N'019271511', N'04111206530015', N'ARDON GAVARRETE', N'CARLOS ALBERTO', N'm', N'62789958', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (5897, 4, N'sv-vs5897', N'001415614', N'06100911591010', N'VASQUEZ MELARA', N'SALVADOR', N'm', N'63335201', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (5909, 1, N'sv-rr5909', N'033652129', N'06101509821073', N'RAMIREZ DEODANES', N'ROBERTO', N'm', N'75369733', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (6418, 2, N'sv-lc6418', N'014216956', N'06140310620031', N'LOPEZ GUZMAN', N'CESAR MAURICIO', N'm', N'63055568', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (8266, 1, N'sv-ma8266', N'005598692', N'06141903671011', N'MENDEZ BENITEZ', N'ALICIA ORBELINA', N'm', N'70705856', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (9278, 2, N'sv-nm9278', N'000900886', N'06142712600140', N'NUÑEZ GRANADOS', N'MANUEL VICENTE', N'm', N'61317133', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (9858, 4, N'sv-pw9858', N'001083386', N'06172101640020', N'PALACIOS COLOCHO', N'WALTER MAURICIO', N'm', N'62272957', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (13188, 1, N'sv-pa13188', N'004669026', N'10112802731010', N'PINO MERINO', N'ANGEL VICTOR', N'm', N'79232040', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (15868, 2, N'sv-bj15868', N'011671929', N'12172106580043', N'BENITEZ PARADA', N'JOSE ATILIO', N'm', N'62074477', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (16424, 4, N'sv-on16424', N'029324227', N'13072512641016', N'ORELLANA CHICA', N'NATIVIDAD CRISTINO', N'f', N'62061046', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (19455, 2, N'sv-ol19455', N'029212250', N'01032409661010', N'ORTIZ MEDINA', N'LUIS WALTER', N'm', N'62947980', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (19861, 2, N'sv-pj19861', N'027267568', N'02101709640072', N'PINEDA MULATO', N'JOSE MAURICIO', N'm', N'62321846', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (20278, 2, N'sv-pr20278', N'003748004', N'08212202520012', N'PINEDA DIAZ', N'RAUL ALBERTO', N'm', N'62787729', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (20831, 2, N'sv-rm20831', N'001962687', N'03151801650015', N'RAMIREZ MARTINEZ', N'MAURICIO ERNESTO', N'm', N'62610010', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (22084, 4, N'sv-dy22084', N'011308479', N'11230804761036', N'DE LA O CHAVEZ', N'YANIRA DEL CARMEN', N'f', N'75940982', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (22100, 2, N'sv-df22100', N'023777456', N'06141806480052', N'DIAZ RODRIGUEZ', N'FRANCISCO ENRIQUE', N'm', N'65236600', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (23204, 4, N'sv-sh23204', N'037696573', N'06142707871033', N'SORIANO BONILLA', N'HECTOR ALEJANDRO', N'm', N'77953576', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (23670, 1, N'sv-mh23670', N'023137509', N'11142601701015', N'MARTINEZ ORTIZ', N'HECTOR ANTONIO', N'm', N'66311175', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (25233, 2, N'sv-mj25233', N'024353378', N'06141612640130', N'MIRANDA QUINTANILLA', N'JORGE ALBERTO', N'm', N'62729067', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (25309, 2, N'sv-ge25309', N'025756545', N'14072012811016', N'GONZALEZ ', N'EDWIN JOVANY', N'm', N'74100034', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (26082, 4, N'sv-nj26082', N'004813112', N'07032503651011', N'NOLASCO LOPEZ', N'JOSE ANTONIO', N'm', N'77109443', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (27200, 4, N'sv-ae27200', N'022220448', N'07110810661017', N'AREVALO ', N'ELMER ENRIQUE', N'm', N'78533506', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (30105, 1, N'sv-mj30105', N'006305814', N'06142202811036', N'MARROQUIN MARROQUIN', N'JAIME RAUL', N'm', N'79767136', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (42266, 1, N'sv-gc42266', N'015646170', N'05111211811026', N'GHIRINGHELLO ROSALES', N'CARLOS RICARDO', N'f', N'72471706', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47519, 2, N'sv-gs47519', N'008298762', N'10100303620011', N'GUZMAN SAMAYOA', N'SARA LORENA', N'f', N'62846340', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47595, 2, N'sv-gm47595', N'018904967', N'05022502510015', N'GUARDADO ', N'MARIO', N'm', N'79289424', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47598, 2, N'sv-cr47598', N'025933113', N'06142008540032', N'CRUZ GUZMAN', N'ROSA MARGARITA', N'f', N'62437362', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47627, 2, N'sv-me47627', N'024544296', N'06072702650017', N'MARROQUIN AMAYA', N'EVELYN DE LOS ANGELES', N'f', N'70704632', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47630, 1, N'sv-sr47630', N'004240783', N'10080502561016', N'SANCHEZ MARTINEZ', N'RAUL', N'm', N'74398467', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47631, 4, N'sv-cc47631', N'022169985', N'01122605741012', N'CASTRO AGUILAR', N'CARLOS ADALBERTO', N'm', N'65414440', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47652, 4, N'sv-le47652', N'017998303', N'06142103701059', N'LEMUS ESCALANTE', N'ERIC LOMBARDO', N'm', N'62849154', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47654, 3, N'sv-le47654', N'019451365', N'06141810711153', N'LOPEZ DE CARDOZA', N'EVELYN ELIZABETH', N'f', N'78332389', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47655, 3, N'sv-mm47655', N'023262697', N'06141706681145', N'MELARA CASTILLO', N'MARITZA DEL CARMEN', N'f', N'78332541', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47657, 3, N'sv-dr47657', N'008644581', N'03120503650014', N'DIAZ DE CORVERA', N'ROSSANA ELISABETH', N'f', N'74575307', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47658, 3, N'sv-em47658', N'003749849', N'06190301791017', N'ERAZO VASQUEZ', N'MARVIN VITELIO', N'm', N'77865956', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47659, 4, N'sv-jj47659', N'005574868', N'02032303831017', N'JIMENEZ PINTIN', N'JOSE RODOLFO', N'm', N'62634944', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47660, 4, N'sv-gm47660', N'011299272', N'08051205721013', N'GRANDE CASTELLANOS', N'MANUEL ENRIQUE', N'm', N'62845726', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47661, 4, N'sv-ap47661', N'034079691', N'06090612851027', N'AMAYA ORTEGA', N'PEDRO ALFONSO', N'm', N'73910697', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47662, 3, N'sv-lj47662', N'039759694', N'06122408881013', N'LOPEZ URQUILLA', N'JORGE MATEO', N'm', N'78326391', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47663, 1, N'sv-fr47663', N'010757691', N'06142405600136', N'FONG HERNANDEZ', N'ROBERTO ENRIQUE', N'm', N'62823380', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47664, 3, N'sv-rc47664', N'005693719', N'06140203831321', N'ROSALES MACHADO', N'CARLOS RODOLFO', N'm', N'65666345', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47665, 1, N'sv-cj47665', N'003719006', N'05150802480019', N'CASTILLO MEZQUITA', N'JUAN JUVENCIO', N'm', N'78514479', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47669, 4, N'sv-ae47669', N'004536087', N'08113011611018', N'ALVARADO ALVAREZ', N'ESTANISLAO', N'm', N'79939305', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47670, 3, N'sv-pc47670', N'010402432', N'07142305731026', N'PALACIOS DE GUARDADO', N'CRUZ MARINA', N'f', N'62039568', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47671, 3, N'sv-rm47671', N'007381512', N'06143105701141', N'RIVERA MEDRANO', N'MANUEL ALFREDO', N'm', N'71895007', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47672, 3, N'sv-al47672', N'004928389', N'02100203821052', N'ALVAREZ HERNANDEZ', N'LUIS ALONSO', N'm', N'76631438', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47673, 1, N'sv-lr47673', N'020540517', N'06141909811370', N'LARA CACERES', N'RICARDO ERNESTO', N'm', N'79857656', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47674, 4, N'sv-ar47674', N'027572002', N'01080712811010', N'AYALA SARMIENTO', N'REYNALDA EMILIA', N'f', N'65291430', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47675, 4, N'sv-lj47675', N'034541664', N'08212801801052', N'LOPEZ ROMERO', N'JORGE ALBERTO', N'm', N'71146362', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47676, 2, N'sv-rj47676', N'008816594', N'05120304701017', N'RAMOS PEREZ', N'JACOBO', N'm', N'71651054', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47677, 2, N'sv-pg47677', N'009276454', N'05222004721013', N'POCASANGRE HUEZO', N'GUILLERMO', N'm', N'77894991', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47678, 4, N'sv-sr47678', N'005423740', N'02101501500022', N'SILIEZAR SALINAS', N'RICARDO ANTONIO', N'm', N'62930678', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47679, 2, N'sv-rj47679', N'000883872', N'14162712781010', N'REYES SALAZAR', N'JUAN DAVID', N'm', N'70710453', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47681, 3, N'sv-oj47681', N'023747142', N'14160802600014', N'ORTEZ HERNANDEZ', N'JORGE ALBERTO', N'm', N'66694982', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47682, 1, N'sv-om47682', N'003565392', N'12172412781040', N'OLIVARES RUIZ', N'MARGARITA DE LA PAZ', N'f', N'66606154', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47683, 2, N'sv-cb47683', N'010622294', N'11092505831024', N'CRUZ AMAYA', N'BLANCA MARIBEL', N'f', N'78866026', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47684, 4, N'sv-hm47684', N'044322193', N'06141203911305', N'HERNANDEZ CANTARELY', N'MILTON SAMUEL', N'm', N'75812813', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47685, 3, N'sv-mh47685', N'029491286', N'05110805851013', N'MARTINEZ ARGUETA', N'HIRBINJ NOE', N'm', N'62350594', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47686, 3, N'sv-ba47686', N'001194832', N'06142512590060', N'BENITEZ ARGUETA', N'ANA IRMA', N'f', N'62705458', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47687, 3, N'sv-mo47687', N'021590515', N'06141810841120', N'MOREJON LOPEZ', N'OSMIN EDGARDO', N'm', N'62923539', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47689, 3, N'sv-co47689', N'024733007', N'10102906650011', N'CARRILLO TURCIOS', N'OSCAR MAURICIO', N'm', N'62888115', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47690, 3, N'sv-af47690', N'012967399', N'02100406610027', N'ALARCON SANDOVAL', N'FRANCISCO ANTONIO', N'm', N'78700337', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47691, 1, N'sv-ud47691', N'008095449', N'14030711551011', N'UMANZOR DE RIVERA', N'DOLORES SUYAPA', N'f', N'62257198', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47692, 3, N'sv-cf47692', N'016033299', N'06141610450026', N'CASTILLO GRIJALVA', N'FABIO ANTONIO', N'm', N'62226303', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47693, 1, N'sv-mm47693', N'003104594', N'07022402530010', N'MEJIA ', N'MANUEL ANTONIO', N'm', N'62357596', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47695, 1, N'sv-qa47695', N'006196100', N'06142903580100', N'QUINTANILLA DE ZULETA', N'ANA DORA ALICIA', N'f', N'62716439', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47697, 4, N'sv-dm47697', N'007291791', N'06091504570018', N'DURAN RODRIGUEZ', N'MANUEL HERIBERTO', N'm', N'78804336', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47700, 3, N'sv-mf47700', N'008891316', N'06140912580163', N'MIXCO LOPEZ', N'FRANCISCO REMBERTO', N'm', N'62763473', N'f')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47704, 3, N'sv-ff47704', N'010547135', N'05110702821019', N'FLORES SARMIENTO', N'FRANCISCO STEVE', N'm', N'79211113', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47705, 3, N'sv-ns47705', N'001153995', N'06040906681017', N'NAVARRETE LEONOR', N'SIMEON', N'm', N'61242645', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47710, 2, N'sv-ch47710', N'016954788', N'13242208681012', N'CHACON ARGUETA', N'HECTOR MANUEL', N'm', N'77781096', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47711, 2, N'sv-ms47711', N'043265819', N'11230112901016', N'MEDRANO RODRIGUEZ', N'SAMUEL GERARDO', N'm', N'78692068', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47712, 2, N'sv-he47712', N'017719377', N'06140209801181', N'HERNANDEZ DURAN', N'ERICK STEFFAN', N'm', N'76955228', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47714, 4, N'sv-me47714', N'004495689', N'10091002791017', N'MEJIA MOLINA', N'ERIC ALEXANDER', N'm', N'70831594', N't')
INSERT [dbo].[clientes] ([idcliente], [idtipocliente], [codigo_cliente], [dui], [nit], [apellidos], [nombres], [sexo], [numero_telefono], [estado]) VALUES (47715, 3, N'sv-hg47715', N'038162064', N'06142410871140', N'HERNANDEZ MEMBREÑO', N'GUSTAVO RAFAEL', N'm', N'71048822', N't')
USE [master]
GO
ALTER DATABASE [db_clientes] SET  READ_WRITE 
GO
