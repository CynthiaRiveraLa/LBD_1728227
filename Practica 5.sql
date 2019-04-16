USE [master]
GO
/****** Object:  Database [Autobuses]    Script Date: 16/04/2019 17:24:20 ******/
CREATE DATABASE [Autobuses]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Autobuses', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Autobuses.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Autobuses_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Autobuses_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Autobuses] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Autobuses].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Autobuses] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Autobuses] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Autobuses] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Autobuses] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Autobuses] SET ARITHABORT OFF 
GO
ALTER DATABASE [Autobuses] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Autobuses] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Autobuses] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Autobuses] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Autobuses] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Autobuses] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Autobuses] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Autobuses] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Autobuses] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Autobuses] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Autobuses] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Autobuses] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Autobuses] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Autobuses] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Autobuses] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Autobuses] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Autobuses] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Autobuses] SET RECOVERY FULL 
GO
ALTER DATABASE [Autobuses] SET  MULTI_USER 
GO
ALTER DATABASE [Autobuses] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Autobuses] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Autobuses] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Autobuses] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Autobuses] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Autobuses', N'ON'
GO
ALTER DATABASE [Autobuses] SET QUERY_STORE = OFF
GO
USE [Autobuses]
GO
/****** Object:  Table [dbo].[Asiento]    Script Date: 16/04/2019 17:24:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asiento](
	[iIdAsiento] [int] NOT NULL,
	[iIdSituacionAsi] [int] NOT NULL,
 CONSTRAINT [PK_Asiento] PRIMARY KEY CLUSTERED 
(
	[iIdAsiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autobus]    Script Date: 16/04/2019 17:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autobus](
	[iIdAutobus] [int] NOT NULL,
	[vMarca] [varchar](50) NOT NULL,
	[iModelo] [int] NOT NULL,
	[tCantidadPasajeros] [tinyint] NOT NULL,
 CONSTRAINT [PK_Autobus] PRIMARY KEY CLUSTERED 
(
	[iIdAutobus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 16/04/2019 17:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boleto](
	[iIdBoleto] [int] NOT NULL,
	[iIdViaje] [int] NOT NULL,
	[iIdAsiento] [int] NOT NULL,
	[iIdPrecio] [int] NOT NULL,
	[iIdCodigo] [int] NOT NULL,
 CONSTRAINT [PK_Boleto] PRIMARY KEY CLUSTERED 
(
	[iIdBoleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chofer]    Script Date: 16/04/2019 17:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chofer](
	[iIdChofer] [int] NOT NULL,
	[idIdAutobus] [int] NOT NULL,
	[iIdEmpleado] [int] NOT NULL,
 CONSTRAINT [PK_Chofer] PRIMARY KEY CLUSTERED 
(
	[iIdChofer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Codigo]    Script Date: 16/04/2019 17:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Codigo](
	[iIdCodigo] [int] NOT NULL,
	[uCodigo] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Codigo] PRIMARY KEY CLUSTERED 
(
	[iIdCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destino]    Script Date: 16/04/2019 17:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destino](
	[iIdDestino] [int] NOT NULL,
	[vDestino] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Destino] PRIMARY KEY CLUSTERED 
(
	[iIdDestino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 16/04/2019 17:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[iIdEmpleado] [int] NOT NULL,
	[vNomEm] [varchar](50) NOT NULL,
	[vApPat] [varchar](50) NOT NULL,
	[vApMat] [varchar](50) NOT NULL,
	[tEdadEmp] [tinyint] NOT NULL,
	[iIdPuesto] [int] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[iIdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoV]    Script Date: 16/04/2019 17:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoV](
	[iIdEstadoV] [int] NOT NULL,
	[vEstadoV] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EstadoV] PRIMARY KEY CLUSTERED 
(
	[iIdEstadoV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Origen]    Script Date: 16/04/2019 17:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Origen](
	[iIdOrigen] [int] NOT NULL,
	[vOrigen] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Origen] PRIMARY KEY CLUSTERED 
(
	[iIdOrigen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 16/04/2019 17:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[iIdPago] [int] NOT NULL,
	[vTipoPago] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
	[iIdPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pasajero]    Script Date: 16/04/2019 17:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pasajero](
	[iIdPasajero] [int] NOT NULL,
	[vNomPas] [varchar](50) NOT NULL,
	[vApPatPas] [varchar](50) NOT NULL,
	[vApMatPas] [varchar](50) NOT NULL,
	[iEdadPas] [int] NOT NULL,
	[iIdTipoPasajero] [int] NOT NULL,
	[iIdVenta] [int] NOT NULL,
 CONSTRAINT [PK_Pasajero] PRIMARY KEY CLUSTERED 
(
	[iIdPasajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PasajeroBol]    Script Date: 16/04/2019 17:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasajeroBol](
	[iIdPasajeroBol] [int] NOT NULL,
	[iIdPasajero] [int] NOT NULL,
	[iIdBoleto] [int] NOT NULL,
 CONSTRAINT [PK_PasajeroBol] PRIMARY KEY CLUSTERED 
(
	[iIdPasajeroBol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Precio]    Script Date: 16/04/2019 17:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precio](
	[iIdPrecio] [int] NOT NULL,
	[mPrecio] [money] NOT NULL,
 CONSTRAINT [PK_Precio] PRIMARY KEY CLUSTERED 
(
	[iIdPrecio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 16/04/2019 17:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto](
	[iIdPuesto] [int] NOT NULL,
	[vPuesto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Puesto] PRIMARY KEY CLUSTERED 
(
	[iIdPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 16/04/2019 17:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruta](
	[iIdRuta] [int] NOT NULL,
	[iIdOrigen] [int] NOT NULL,
	[iIdDestino] [int] NOT NULL,
	[tTiempoEstimado] [time](4) NOT NULL,
 CONSTRAINT [PK_Ruta] PRIMARY KEY CLUSTERED 
(
	[iIdRuta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SituacionAsi]    Script Date: 16/04/2019 17:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SituacionAsi](
	[iIdSituacionAsi] [int] NOT NULL,
	[vSituacionA] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SituacionAsi] PRIMARY KEY CLUSTERED 
(
	[iIdSituacionAsi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPasajero]    Script Date: 16/04/2019 17:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPasajero](
	[iIdTipoPasajero] [int] NOT NULL,
	[vTipoPas] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoPasajero] PRIMARY KEY CLUSTERED 
(
	[iIdTipoPasajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 16/04/2019 17:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[iIdVenta] [int] NOT NULL,
	[iIdEmpleado] [int] NOT NULL,
	[iIdPago] [int] NOT NULL,
	[iIdPrecio] [int] NOT NULL,
	[mTotal] [money] NOT NULL,
	[dFecha] [date] NOT NULL,
	[tHora] [time](7) NOT NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[iIdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Viaje]    Script Date: 16/04/2019 17:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Viaje](
	[iIdViaje] [int] NOT NULL,
	[iIdRuta] [int] NOT NULL,
	[iIdChofer] [int] NOT NULL,
	[dFechaS] [date] NOT NULL,
	[iIdEstadoV] [int] NOT NULL,
 CONSTRAINT [PK_Viaje] PRIMARY KEY CLUSTERED 
(
	[iIdViaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (11, 3)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (12, 10)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (13, 1)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (14, 8)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (15, 4)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (16, 6)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (17, 2)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (18, 5)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (19, 7)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (20, 9)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (21, N'DINA', 2010, 60)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (22, N'Volvo', 2017, 80)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (23, N'Mercedes Benz', 2015, 50)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (24, N'Mercedes Benz', 2012, 70)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (25, N'King', 2009, 60)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (26, N'Isuzu', 2011, 70)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (27, N'Mercedes Benz', 2015, 80)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (28, N'Isuzu', 2016, 70)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (29, N'DINA', 2017, 50)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (30, N'Volvo', 2012, 60)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (51, 25, 45)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (52, 29, 49)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (53, 24, 48)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (54, 22, 46)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (55, 21, 48)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (56, 27, 49)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (57, 23, 48)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (58, 30, 45)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (59, 26, 49)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (60, 28, 46)
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (61, N'99e00131-484f-4f15-a0ad-4cd656f4b7ea')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (62, N'198fe0ec-90ed-4842-9ac1-c0beee114424')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (63, N'8837c4fb-de53-40f0-aa18-aea42db68227')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (64, N'e3b79411-6a04-4668-98ce-4e0c7d3ef251')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (65, N'ea78bac6-f99c-4972-a3ad-1f19a8fa3b9b')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (66, N'263a8efe-adcd-4926-87d0-a5d06fbfe542')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (67, N'060857e0-3e8a-44e0-ae70-42c763c7fa27')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (68, N'998f2f83-12ea-4274-be07-6a49aee79727')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (69, N'1cdc85f3-f87c-4d1a-a7e8-e2ff9e8d35f2')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (70, N'253a6fe4-3cff-4c79-93b6-1cfc2289e223')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (91, N'Adobes')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (92, N'Allende')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (93, N'Dallas')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (94, N'Detroit')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (95, N'Denton')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (96, N'Garland')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (97, N'Houston')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (98, N'Laredo')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (99, N'Longview')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (100, N'San Antonio')
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (41, N'Elizabeth', N'Ayala', N'Rodriguez', 25, 38)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (42, N'Halisson', N'Gonzales', N'Garci', 19, 32)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (43, N'Darian', N'Llamas', N'Castillo', 19, 39)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (44, N'Devani', N'Esparza', N'Peña', 22, 36)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (45, N'Aurelio', N'Hernandez', N'Lopez', 30, 40)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (46, N'Irving', N'Aguilar', N'Alvarado', 28, 35)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (47, N'Fernanda', N'Aleman', N'Acevedo', 19, 33)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (48, N'Fabio', N'Lozano', N'Mendoza', 35, 31)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (49, N'Rafael', N'Marquez', N'Obregon', 40, 34)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (50, N'Lucia', N'Cordero', N'Cabrejo', 27, 37)
INSERT [dbo].[EstadoV] ([iIdEstadoV], [vEstadoV]) VALUES (71, N'Disponible')
INSERT [dbo].[EstadoV] ([iIdEstadoV], [vEstadoV]) VALUES (72, N'No Disponible')
INSERT [dbo].[EstadoV] ([iIdEstadoV], [vEstadoV]) VALUES (73, N'Progreso')
INSERT [dbo].[EstadoV] ([iIdEstadoV], [vEstadoV]) VALUES (74, N'Disponible')
INSERT [dbo].[EstadoV] ([iIdEstadoV], [vEstadoV]) VALUES (75, N'No Disponible')
INSERT [dbo].[EstadoV] ([iIdEstadoV], [vEstadoV]) VALUES (76, N'Disponible')
INSERT [dbo].[EstadoV] ([iIdEstadoV], [vEstadoV]) VALUES (77, N'Progreso')
INSERT [dbo].[EstadoV] ([iIdEstadoV], [vEstadoV]) VALUES (78, N'Disponible')
INSERT [dbo].[EstadoV] ([iIdEstadoV], [vEstadoV]) VALUES (79, N'No Disponible')
INSERT [dbo].[EstadoV] ([iIdEstadoV], [vEstadoV]) VALUES (80, N'Disponible')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (81, N'Monterrey')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (82, N'Torreon')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (83, N'Saltillo')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (84, N'Ciudad de Mexico')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (85, N'Acuña')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (86, N'Aguascalientes')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (87, N'Austin')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (88, N'Cadereyta')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (89, N'Cedral')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (90, N'Chihuahua')
INSERT [dbo].[Puesto] ([iIdPuesto], [vPuesto]) VALUES (31, N'Chofer')
INSERT [dbo].[Puesto] ([iIdPuesto], [vPuesto]) VALUES (32, N'Vendedor')
INSERT [dbo].[Puesto] ([iIdPuesto], [vPuesto]) VALUES (33, N'Vendedor')
INSERT [dbo].[Puesto] ([iIdPuesto], [vPuesto]) VALUES (34, N'Chofer')
INSERT [dbo].[Puesto] ([iIdPuesto], [vPuesto]) VALUES (35, N'Chofer')
INSERT [dbo].[Puesto] ([iIdPuesto], [vPuesto]) VALUES (36, N'Vendedor')
INSERT [dbo].[Puesto] ([iIdPuesto], [vPuesto]) VALUES (37, N'Vendedor')
INSERT [dbo].[Puesto] ([iIdPuesto], [vPuesto]) VALUES (38, N'Vendedor')
INSERT [dbo].[Puesto] ([iIdPuesto], [vPuesto]) VALUES (39, N'Vendedor')
INSERT [dbo].[Puesto] ([iIdPuesto], [vPuesto]) VALUES (40, N'Chofer')
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (101, 85, 95, CAST(N'03:00:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (102, 82, 97, CAST(N'08:50:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (103, 88, 91, CAST(N'01:30:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (104, 84, 94, CAST(N'06:05:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (105, 89, 99, CAST(N'02:30:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (106, 83, 100, CAST(N'04:20:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (107, 81, 92, CAST(N'00:50:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (108, 86, 96, CAST(N'02:15:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (109, 90, 98, CAST(N'03:35:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (110, 87, 93, CAST(N'01:45:00' AS Time))
INSERT [dbo].[SituacionAsi] ([iIdSituacionAsi], [vSituacionA]) VALUES (1, N'Ocupado')
INSERT [dbo].[SituacionAsi] ([iIdSituacionAsi], [vSituacionA]) VALUES (2, N'Ocupado')
INSERT [dbo].[SituacionAsi] ([iIdSituacionAsi], [vSituacionA]) VALUES (3, N'Disponible')
INSERT [dbo].[SituacionAsi] ([iIdSituacionAsi], [vSituacionA]) VALUES (4, N'Disponible')
INSERT [dbo].[SituacionAsi] ([iIdSituacionAsi], [vSituacionA]) VALUES (5, N'Ocupado')
INSERT [dbo].[SituacionAsi] ([iIdSituacionAsi], [vSituacionA]) VALUES (6, N'Disponible')
INSERT [dbo].[SituacionAsi] ([iIdSituacionAsi], [vSituacionA]) VALUES (7, N'Ocupado')
INSERT [dbo].[SituacionAsi] ([iIdSituacionAsi], [vSituacionA]) VALUES (8, N'Disponible')
INSERT [dbo].[SituacionAsi] ([iIdSituacionAsi], [vSituacionA]) VALUES (9, N'Ocupado')
INSERT [dbo].[SituacionAsi] ([iIdSituacionAsi], [vSituacionA]) VALUES (10, N'Ocupado')
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (111, 105, 55, CAST(N'2019-01-10' AS Date), 72)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (112, 108, 58, CAST(N'2019-10-20' AS Date), 79)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (113, 102, 60, CAST(N'2019-07-06' AS Date), 75)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (114, 101, 51, CAST(N'2019-12-22' AS Date), 71)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (115, 110, 54, CAST(N'2019-03-18' AS Date), 77)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (116, 107, 52, CAST(N'2019-11-21' AS Date), 78)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (117, 109, 57, CAST(N'2019-05-17' AS Date), 74)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (118, 104, 59, CAST(N'2019-04-02' AS Date), 80)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (119, 106, 53, CAST(N'2019-06-09' AS Date), 73)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (120, 103, 56, CAST(N'2019-02-15' AS Date), 76)
ALTER TABLE [dbo].[Asiento]  WITH CHECK ADD  CONSTRAINT [FK_Asiento_SituacionAsi] FOREIGN KEY([iIdSituacionAsi])
REFERENCES [dbo].[SituacionAsi] ([iIdSituacionAsi])
GO
ALTER TABLE [dbo].[Asiento] CHECK CONSTRAINT [FK_Asiento_SituacionAsi]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_Asiento] FOREIGN KEY([iIdAsiento])
REFERENCES [dbo].[Asiento] ([iIdAsiento])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_Asiento]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_Codigo] FOREIGN KEY([iIdCodigo])
REFERENCES [dbo].[Codigo] ([iIdCodigo])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_Codigo]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_Viaje] FOREIGN KEY([iIdViaje])
REFERENCES [dbo].[Viaje] ([iIdViaje])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_Viaje]
GO
ALTER TABLE [dbo].[Chofer]  WITH CHECK ADD  CONSTRAINT [FK_Chofer_Autobus] FOREIGN KEY([idIdAutobus])
REFERENCES [dbo].[Autobus] ([iIdAutobus])
GO
ALTER TABLE [dbo].[Chofer] CHECK CONSTRAINT [FK_Chofer_Autobus]
GO
ALTER TABLE [dbo].[Chofer]  WITH CHECK ADD  CONSTRAINT [FK_Chofer_Empleados] FOREIGN KEY([iIdEmpleado])
REFERENCES [dbo].[Empleados] ([iIdEmpleado])
GO
ALTER TABLE [dbo].[Chofer] CHECK CONSTRAINT [FK_Chofer_Empleados]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Puesto] FOREIGN KEY([iIdPuesto])
REFERENCES [dbo].[Puesto] ([iIdPuesto])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Puesto]
GO
ALTER TABLE [dbo].[Pasajero]  WITH CHECK ADD  CONSTRAINT [FK_Pasajero_TipoPasajero] FOREIGN KEY([iIdTipoPasajero])
REFERENCES [dbo].[TipoPasajero] ([iIdTipoPasajero])
GO
ALTER TABLE [dbo].[Pasajero] CHECK CONSTRAINT [FK_Pasajero_TipoPasajero]
GO
ALTER TABLE [dbo].[PasajeroBol]  WITH CHECK ADD  CONSTRAINT [FK_PasajeroBol_Boleto] FOREIGN KEY([iIdBoleto])
REFERENCES [dbo].[Boleto] ([iIdBoleto])
GO
ALTER TABLE [dbo].[PasajeroBol] CHECK CONSTRAINT [FK_PasajeroBol_Boleto]
GO
ALTER TABLE [dbo].[PasajeroBol]  WITH CHECK ADD  CONSTRAINT [FK_PasajeroBol_Pasajero] FOREIGN KEY([iIdPasajero])
REFERENCES [dbo].[Pasajero] ([iIdPasajero])
GO
ALTER TABLE [dbo].[PasajeroBol] CHECK CONSTRAINT [FK_PasajeroBol_Pasajero]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Destino] FOREIGN KEY([iIdDestino])
REFERENCES [dbo].[Destino] ([iIdDestino])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Destino]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Origen] FOREIGN KEY([iIdOrigen])
REFERENCES [dbo].[Origen] ([iIdOrigen])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Origen]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Empleados] FOREIGN KEY([iIdEmpleado])
REFERENCES [dbo].[Empleados] ([iIdEmpleado])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Empleados]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Pago] FOREIGN KEY([iIdPago])
REFERENCES [dbo].[Pago] ([iIdPago])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Pago]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Precio] FOREIGN KEY([iIdPrecio])
REFERENCES [dbo].[Precio] ([iIdPrecio])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Precio]
GO
ALTER TABLE [dbo].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK_Viaje_Chofer] FOREIGN KEY([iIdChofer])
REFERENCES [dbo].[Chofer] ([iIdChofer])
GO
ALTER TABLE [dbo].[Viaje] CHECK CONSTRAINT [FK_Viaje_Chofer]
GO
ALTER TABLE [dbo].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK_Viaje_EstadoV] FOREIGN KEY([iIdEstadoV])
REFERENCES [dbo].[EstadoV] ([iIdEstadoV])
GO
ALTER TABLE [dbo].[Viaje] CHECK CONSTRAINT [FK_Viaje_EstadoV]
GO
ALTER TABLE [dbo].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK_Viaje_Ruta] FOREIGN KEY([iIdRuta])
REFERENCES [dbo].[Ruta] ([iIdRuta])
GO
ALTER TABLE [dbo].[Viaje] CHECK CONSTRAINT [FK_Viaje_Ruta]
GO
USE [master]
GO
ALTER DATABASE [Autobuses] SET  READ_WRITE 
GO
