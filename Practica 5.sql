USE [master]
GO
/****** Object:  Database [Autobuses]    Script Date: 16/04/2019 22:44:18 ******/
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
/****** Object:  Table [dbo].[Asiento]    Script Date: 16/04/2019 22:44:19 ******/
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
/****** Object:  Table [dbo].[Autobus]    Script Date: 16/04/2019 22:44:20 ******/
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
/****** Object:  Table [dbo].[Boleto]    Script Date: 16/04/2019 22:44:20 ******/
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
/****** Object:  Table [dbo].[Chofer]    Script Date: 16/04/2019 22:44:20 ******/
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
/****** Object:  Table [dbo].[Codigo]    Script Date: 16/04/2019 22:44:20 ******/
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
/****** Object:  Table [dbo].[Destino]    Script Date: 16/04/2019 22:44:20 ******/
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
/****** Object:  Table [dbo].[Empleados]    Script Date: 16/04/2019 22:44:20 ******/
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
/****** Object:  Table [dbo].[EstadoV]    Script Date: 16/04/2019 22:44:20 ******/
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
/****** Object:  Table [dbo].[Origen]    Script Date: 16/04/2019 22:44:20 ******/
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
/****** Object:  Table [dbo].[Pago]    Script Date: 16/04/2019 22:44:20 ******/
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
/****** Object:  Table [dbo].[Pasajero]    Script Date: 16/04/2019 22:44:20 ******/
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
/****** Object:  Table [dbo].[PasajeroBol]    Script Date: 16/04/2019 22:44:20 ******/
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
/****** Object:  Table [dbo].[Precio]    Script Date: 16/04/2019 22:44:20 ******/
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
/****** Object:  Table [dbo].[Puesto]    Script Date: 16/04/2019 22:44:20 ******/
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
/****** Object:  Table [dbo].[Ruta]    Script Date: 16/04/2019 22:44:21 ******/
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
/****** Object:  Table [dbo].[SituacionAsi]    Script Date: 16/04/2019 22:44:21 ******/
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
/****** Object:  Table [dbo].[TipoPasajero]    Script Date: 16/04/2019 22:44:21 ******/
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
/****** Object:  Table [dbo].[Venta]    Script Date: 16/04/2019 22:44:21 ******/
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
/****** Object:  Table [dbo].[Viaje]    Script Date: 16/04/2019 22:44:21 ******/
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
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (3, 1)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (4, 2)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (5, 1)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (6, 1)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (7, 2)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (8, 2)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (9, 2)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (10, 2)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (11, 1)
INSERT [dbo].[Asiento] ([iIdAsiento], [iIdSituacionAsi]) VALUES (12, 2)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (13, N'DINA', 2010, 60)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (14, N'Volvo', 2017, 80)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (15, N'Mercedes Benz', 2015, 50)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (16, N'Mercedes Benz', 2012, 70)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (17, N'King', 2009, 60)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (18, N'Isuzu', 2011, 70)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (19, N'Mercedes Benz', 2015, 80)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (20, N'Isuzu', 2016, 70)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (21, N'DINA', 2017, 50)
INSERT [dbo].[Autobus] ([iIdAutobus], [vMarca], [iModelo], [tCantidadPasajeros]) VALUES (22, N'Volvo', 2012, 60)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (36, 13, 30)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (37, 18, 33)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (38, 17, 35)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (39, 21, 32)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (40, 15, 30)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (41, 20, 35)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (42, 16, 33)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (43, 22, 35)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (44, 19, 30)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (45, 14, 32)
INSERT [dbo].[Chofer] ([iIdChofer], [idIdAutobus], [iIdEmpleado]) VALUES (46, 15, 33)
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (47, N'bae231e7-f97b-498c-95cb-ae2f37a25cfe')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (48, N'0c620e52-5ee8-4bca-807d-a7492eaea404')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (49, N'd52d4d5e-219b-4eec-ae1e-dba1c0b14a9f')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (50, N'97eab88b-7b18-461b-ad88-146e39e95066')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (51, N'c9c0da02-00de-430b-a4f6-6cd392ddce4c')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (52, N'16f57685-1981-40a6-9912-ea0f468b7c8d')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (53, N'68101531-bcad-4f28-aa26-0bafba075ec5')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (54, N'01b02bec-4c13-47ab-b56c-809d353858b8')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (55, N'8a81816e-349e-438a-8f81-32d561920a25')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (56, N'eabda162-0a00-472e-b0d5-dd1c3cadb45a')
INSERT [dbo].[Codigo] ([iIdCodigo], [uCodigo]) VALUES (57, N'866e3ebd-e93d-4ffd-a0f9-738bb6db9bdc')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (72, N'Adobes')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (73, N'Allende')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (74, N'Dallas')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (75, N'Detroit')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (76, N'Denton')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (77, N'Garland')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (78, N'Houston')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (79, N'Laredo')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (80, N'Longview')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (81, N'San Antonio')
INSERT [dbo].[Destino] ([iIdDestino], [vDestino]) VALUES (82, N'Waco')
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (25, N'Elizabeth', N'Ayala', N'Rodriguez', 25, 24)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (26, N'Halisson', N'Gonzales', N'Garci', 19, 24)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (27, N'Darian', N'Llamas', N'Castillo', 19, 24)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (28, N'Devani', N'Esparza', N'Peña', 22, 24)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (29, N'Aurelio', N'Hernandez', N'Lopez', 30, 23)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (30, N'Irving', N'Aguilar', N'Alvarado', 28, 23)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (31, N'Fernanda', N'Aleman', N'Acevedo', 19, 24)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (32, N'Fabio', N'Lozano', N'Mendoza', 35, 23)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (33, N'Rafael', N'Marquez', N'Obregon', 40, 23)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (34, N'Lucia', N'Cordero', N'Cabrejo', 27, 24)
INSERT [dbo].[Empleados] ([iIdEmpleado], [vNomEm], [vApPat], [vApMat], [tEdadEmp], [iIdPuesto]) VALUES (35, N'Lucas', N'Fuente', N'Loera', 27, 23)
INSERT [dbo].[EstadoV] ([iIdEstadoV], [vEstadoV]) VALUES (58, N'Disponible')
INSERT [dbo].[EstadoV] ([iIdEstadoV], [vEstadoV]) VALUES (59, N'No Disponible')
INSERT [dbo].[EstadoV] ([iIdEstadoV], [vEstadoV]) VALUES (60, N'Progreso')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (61, N'Monterrey')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (62, N'Torreon')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (63, N'Saltillo')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (64, N'Ciudad de Mexico')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (65, N'Acuña')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (66, N'Aguascalientes')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (67, N'Austin')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (68, N'Cadereyta')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (69, N'Cedral')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (70, N'Chihuahua')
INSERT [dbo].[Origen] ([iIdOrigen], [vOrigen]) VALUES (71, N'Charcas')
INSERT [dbo].[Precio] ([iIdPrecio], [mPrecio]) VALUES (105, 190.0000)
INSERT [dbo].[Precio] ([iIdPrecio], [mPrecio]) VALUES (106, 200.0000)
INSERT [dbo].[Precio] ([iIdPrecio], [mPrecio]) VALUES (107, 180.0000)
INSERT [dbo].[Precio] ([iIdPrecio], [mPrecio]) VALUES (108, 250.0000)
INSERT [dbo].[Precio] ([iIdPrecio], [mPrecio]) VALUES (109, 270.0000)
INSERT [dbo].[Precio] ([iIdPrecio], [mPrecio]) VALUES (110, 210.0000)
INSERT [dbo].[Precio] ([iIdPrecio], [mPrecio]) VALUES (111, 300.0000)
INSERT [dbo].[Precio] ([iIdPrecio], [mPrecio]) VALUES (112, 270.0000)
INSERT [dbo].[Precio] ([iIdPrecio], [mPrecio]) VALUES (113, 290.0000)
INSERT [dbo].[Precio] ([iIdPrecio], [mPrecio]) VALUES (114, 185.0000)
INSERT [dbo].[Precio] ([iIdPrecio], [mPrecio]) VALUES (115, 185.0000)
INSERT [dbo].[Puesto] ([iIdPuesto], [vPuesto]) VALUES (23, N'Chofer')
INSERT [dbo].[Puesto] ([iIdPuesto], [vPuesto]) VALUES (24, N'Vendedor')
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (83, 62, 77, CAST(N'03:00:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (84, 71, 78, CAST(N'08:50:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (85, 61, 75, CAST(N'01:30:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (86, 65, 74, CAST(N'06:05:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (87, 69, 79, CAST(N'02:30:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (88, 63, 80, CAST(N'04:20:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (89, 64, 72, CAST(N'00:50:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (90, 68, 76, CAST(N'02:15:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (91, 66, 81, CAST(N'03:35:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (92, 67, 73, CAST(N'01:45:00' AS Time))
INSERT [dbo].[Ruta] ([iIdRuta], [iIdOrigen], [iIdDestino], [tTiempoEstimado]) VALUES (93, 62, 82, CAST(N'01:45:00' AS Time))
INSERT [dbo].[SituacionAsi] ([iIdSituacionAsi], [vSituacionA]) VALUES (1, N'Ocupado')
INSERT [dbo].[SituacionAsi] ([iIdSituacionAsi], [vSituacionA]) VALUES (2, N'Disponible')
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (94, 83, 36, CAST(N'2019-01-10' AS Date), 58)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (95, 93, 43, CAST(N'2019-10-20' AS Date), 59)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (96, 88, 46, CAST(N'2019-07-06' AS Date), 58)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (97, 85, 37, CAST(N'2019-12-22' AS Date), 58)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (98, 89, 42, CAST(N'2019-03-18' AS Date), 60)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (99, 91, 45, CAST(N'2019-11-21' AS Date), 60)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (100, 84, 41, CAST(N'2019-05-17' AS Date), 59)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (101, 86, 38, CAST(N'2019-04-02' AS Date), 58)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (102, 90, 44, CAST(N'2019-06-09' AS Date), 58)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (103, 87, 40, CAST(N'2019-02-15' AS Date), 60)
INSERT [dbo].[Viaje] ([iIdViaje], [iIdRuta], [iIdChofer], [dFechaS], [iIdEstadoV]) VALUES (104, 92, 39, CAST(N'2019-02-15' AS Date), 59)
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
