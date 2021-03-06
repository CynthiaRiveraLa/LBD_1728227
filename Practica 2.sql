USE [master]
GO
/****** Object:  Database [Autobuses]    Script Date: 15/04/2019 22:17:56 ******/
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
/****** Object:  Table [dbo].[Asiento]    Script Date: 15/04/2019 22:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asiento](
	[iIdAsiento] [int] NOT NULL,
	[iIdSit] [int] NOT NULL,
 CONSTRAINT [PK_Asiento] PRIMARY KEY CLUSTERED 
(
	[iIdAsiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autobus]    Script Date: 15/04/2019 22:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autobus](
	[iIdAutobus] [int] NOT NULL,
	[vMarca] [varchar](50) NOT NULL,
	[iModelo] [int] NOT NULL,
	[tCantidadPasajeros] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 15/04/2019 22:17:57 ******/
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
/****** Object:  Table [dbo].[Chofer]    Script Date: 15/04/2019 22:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chofer](
	[iIdChofer] [int] NOT NULL,
	[idIdAutobus] [int] NOT NULL,
	[iIdEmpleado] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 15/04/2019 22:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[iIdCiudad] [int] NOT NULL,
	[vNomCiu] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Codigo]    Script Date: 15/04/2019 22:17:57 ******/
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
/****** Object:  Table [dbo].[Empleados]    Script Date: 15/04/2019 22:17:57 ******/
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
	[Puesto] [tinyint] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[iIdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 15/04/2019 22:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[iIdPago] [int] NOT NULL,
	[vTipoPago] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pasajero]    Script Date: 15/04/2019 22:17:57 ******/
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
	[iIdVenta] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPasajero]    Script Date: 15/04/2019 22:17:57 ******/
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
/****** Object:  Table [dbo].[Venta]    Script Date: 15/04/2019 22:17:57 ******/
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
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_Codigo] FOREIGN KEY([iIdCodigo])
REFERENCES [dbo].[Codigo] ([iIdCodigo])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_Codigo]
GO
ALTER TABLE [dbo].[Pasajero]  WITH CHECK ADD  CONSTRAINT [FK_Pasajero_TipoPasajero] FOREIGN KEY([iIdTipoPasajero])
REFERENCES [dbo].[TipoPasajero] ([iIdTipoPasajero])
GO
ALTER TABLE [dbo].[Pasajero] CHECK CONSTRAINT [FK_Pasajero_TipoPasajero]
GO
ALTER TABLE [dbo].[Pasajero]  WITH CHECK ADD  CONSTRAINT [FK_Pasajero_Venta] FOREIGN KEY([iIdVenta])
REFERENCES [dbo].[Venta] ([iIdVenta])
GO
ALTER TABLE [dbo].[Pasajero] CHECK CONSTRAINT [FK_Pasajero_Venta]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Empleados] FOREIGN KEY([iIdEmpleado])
REFERENCES [dbo].[Empleados] ([iIdEmpleado])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Empleados]
GO
USE [master]
GO
ALTER DATABASE [Autobuses] SET  READ_WRITE 
GO
