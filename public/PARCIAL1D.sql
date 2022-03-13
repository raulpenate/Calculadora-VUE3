USE [master]
GO
/****** Object:  Database [PARCIAL1D]    Script Date: 12/3/2022 14:09:03 ******/
CREATE DATABASE [PARCIAL1D]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PARCIAL1D', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PARCIAL1D.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PARCIAL1D_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PARCIAL1D_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PARCIAL1D] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PARCIAL1D].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PARCIAL1D] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PARCIAL1D] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PARCIAL1D] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PARCIAL1D] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PARCIAL1D] SET ARITHABORT OFF 
GO
ALTER DATABASE [PARCIAL1D] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PARCIAL1D] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PARCIAL1D] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PARCIAL1D] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PARCIAL1D] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PARCIAL1D] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PARCIAL1D] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PARCIAL1D] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PARCIAL1D] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PARCIAL1D] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PARCIAL1D] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PARCIAL1D] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PARCIAL1D] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PARCIAL1D] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PARCIAL1D] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PARCIAL1D] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PARCIAL1D] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PARCIAL1D] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PARCIAL1D] SET  MULTI_USER 
GO
ALTER DATABASE [PARCIAL1D] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PARCIAL1D] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PARCIAL1D] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PARCIAL1D] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PARCIAL1D] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PARCIAL1D] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PARCIAL1D] SET QUERY_STORE = OFF
GO
USE [PARCIAL1D]
GO
/****** Object:  Table [dbo].[detalle_orden]    Script Date: 12/3/2022 14:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_orden](
	[id_detalle_orden] [int] IDENTITY(1,1) NOT NULL,
	[id_encabezado_orden] [int] NULL,
	[id_empresa] [int] NULL,
	[id_plato] [int] NULL,
	[cantidad] [int] NULL,
	[comentarios] [varchar](50) NULL,
	[descuento_especial] [decimal](18, 0) NULL,
	[recargo_orden] [decimal](18, 0) NULL,
	[estado] [char](1) NULL,
	[fecha_creacion] [datetime] NOT NULL,
	[fecha_mod] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_detalle_orden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empresa]    Script Date: 12/3/2022 14:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empresa](
	[id_empresa] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[representante] [varchar](50) NOT NULL,
	[nit] [varchar](10) NOT NULL,
	[nrc] [varchar](10) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[correo] [varchar](50) NOT NULL,
	[telefono] [varchar](10) NOT NULL,
	[estado] [char](1) NOT NULL,
	[fecha_creacion] [datetime] NOT NULL,
	[fecha_mod] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[encabezadoOrden]    Script Date: 12/3/2022 14:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[encabezadoOrden](
	[id_encabezado_orden] [int] IDENTITY(1,1) NOT NULL,
	[id_empresa] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
	[tipo_orden] [char](1) NOT NULL,
	[fecha_orden] [datetime] NOT NULL,
	[id_mesa] [int] NOT NULL,
	[cliente] [varchar](50) NOT NULL,
	[estado_orden] [char](1) NOT NULL,
	[tipo_pago] [varchar](20) NOT NULL,
	[estado] [char](1) NOT NULL,
	[fecha_creacion] [datetime] NOT NULL,
	[fecha_modificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_encabezado_orden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mesa]    Script Date: 12/3/2022 14:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mesa](
	[id_mesa] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[empresa_id] [int] NULL,
	[id_pago] [int] NULL,
	[zona_mesa] [char](1) NULL,
	[cantidad_sillas] [int] NULL,
	[estado] [char](1) NULL,
	[fecha_creacion] [datetime] NOT NULL,
	[fecha_mod] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_mesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pago]    Script Date: 12/3/2022 14:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pago](
	[id_pago] [int] IDENTITY(1,1) NOT NULL,
	[id_empresa] [int] NULL,
	[id_encabezado_orden] [int] NULL,
	[tipo_pago] [varchar](10) NULL,
	[subtotal] [decimal](18, 0) NULL,
	[propina] [decimal](18, 0) NULL,
	[total] [decimal](18, 0) NULL,
	[monto_pagado] [decimal](18, 0) NULL,
	[id_usuario] [int] NULL,
	[fecha_creacion] [datetime] NOT NULL,
	[fecha_mod] [datetime] NOT NULL,
	[numero_tarjeta] [varchar](15) NULL,
	[nombre_tarjeta] [varchar](20) NULL,
	[autorizacion] [char](1) NULL,
	[estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[plato]    Script Date: 12/3/2022 14:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[plato](
	[id_plato] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_plato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 12/3/2022 14:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](20) NULL,
	[apellido] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[detalle_orden] ON 

INSERT [dbo].[detalle_orden] ([id_detalle_orden], [id_encabezado_orden], [id_empresa], [id_plato], [cantidad], [comentarios], [descuento_especial], [recargo_orden], [estado], [fecha_creacion], [fecha_mod]) VALUES (1, 1, 1, 1, 2, N'No agregar crema', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'P', CAST(N'2022-03-12T00:00:00.000' AS DateTime), CAST(N'2022-03-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[detalle_orden] OFF
GO
SET IDENTITY_INSERT [dbo].[empresa] ON 

INSERT [dbo].[empresa] ([id_empresa], [nombre], [representante], [nit], [nrc], [direccion], [correo], [telefono], [estado], [fecha_creacion], [fecha_mod]) VALUES (1, N'Los Tilines', N'Reynaldo Matinez', N'9785674321', N'251478-5', N'Santa Ana', N'lostilines@gmail.com', N'7589-9645', N'D', CAST(N'2022-03-12T00:00:00.000' AS DateTime), CAST(N'2022-03-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[empresa] OFF
GO
SET IDENTITY_INSERT [dbo].[encabezadoOrden] ON 

INSERT [dbo].[encabezadoOrden] ([id_encabezado_orden], [id_empresa], [id_usuario], [tipo_orden], [fecha_orden], [id_mesa], [cliente], [estado_orden], [tipo_pago], [estado], [fecha_creacion], [fecha_modificacion]) VALUES (1, 1, 1, N'P', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 2, N'Adonay', N'P', N'Efectivo', N'P', CAST(N'2022-03-12T00:00:00.000' AS DateTime), CAST(N'2022-03-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[encabezadoOrden] OFF
GO
SET IDENTITY_INSERT [dbo].[mesa] ON 

INSERT [dbo].[mesa] ([id_mesa], [descripcion], [empresa_id], [id_pago], [zona_mesa], [cantidad_sillas], [estado], [fecha_creacion], [fecha_mod]) VALUES (2, N'Mesa 1', 1, 1, N'A', 50, N'D', CAST(N'2022-03-12T00:00:00.000' AS DateTime), CAST(N'2022-03-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[mesa] OFF
GO
SET IDENTITY_INSERT [dbo].[pago] ON 

INSERT [dbo].[pago] ([id_pago], [id_empresa], [id_encabezado_orden], [tipo_pago], [subtotal], [propina], [total], [monto_pagado], [id_usuario], [fecha_creacion], [fecha_mod], [numero_tarjeta], [nombre_tarjeta], [autorizacion], [estado]) VALUES (2, 1, 1, N'Efectivo', CAST(30 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(33 AS Decimal(18, 0)), CAST(33 AS Decimal(18, 0)), 1, CAST(N'2022-03-12T00:00:00.000' AS DateTime), CAST(N'2022-03-12T00:00:00.000' AS DateTime), N'123456799', N'Adonay Valencia', N'2', N'A')
SET IDENTITY_INSERT [dbo].[pago] OFF
GO
SET IDENTITY_INSERT [dbo].[plato] ON 

INSERT [dbo].[plato] ([id_plato], [nombre]) VALUES (1, N'Sopa de Tortilla')
SET IDENTITY_INSERT [dbo].[plato] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([id_usuario], [nombre], [apellido]) VALUES (1, N'Adonay', N'Ezquivel')
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__empresa__DF97D0E469002E74]    Script Date: 12/3/2022 14:09:03 ******/
ALTER TABLE [dbo].[empresa] ADD UNIQUE NONCLUSTERED 
(
	[nit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[detalle_orden]  WITH CHECK ADD  CONSTRAINT [fk_detalle_empresa] FOREIGN KEY([id_empresa])
REFERENCES [dbo].[empresa] ([id_empresa])
GO
ALTER TABLE [dbo].[detalle_orden] CHECK CONSTRAINT [fk_detalle_empresa]
GO
ALTER TABLE [dbo].[detalle_orden]  WITH CHECK ADD  CONSTRAINT [fk_detalle_encabezado] FOREIGN KEY([id_encabezado_orden])
REFERENCES [dbo].[encabezadoOrden] ([id_encabezado_orden])
GO
ALTER TABLE [dbo].[detalle_orden] CHECK CONSTRAINT [fk_detalle_encabezado]
GO
ALTER TABLE [dbo].[detalle_orden]  WITH CHECK ADD  CONSTRAINT [fk_detalle_plato] FOREIGN KEY([id_plato])
REFERENCES [dbo].[plato] ([id_plato])
GO
ALTER TABLE [dbo].[detalle_orden] CHECK CONSTRAINT [fk_detalle_plato]
GO
ALTER TABLE [dbo].[encabezadoOrden]  WITH CHECK ADD  CONSTRAINT [fk_encabezado_empresa] FOREIGN KEY([id_empresa])
REFERENCES [dbo].[empresa] ([id_empresa])
GO
ALTER TABLE [dbo].[encabezadoOrden] CHECK CONSTRAINT [fk_encabezado_empresa]
GO
ALTER TABLE [dbo].[encabezadoOrden]  WITH CHECK ADD  CONSTRAINT [fk_encabezado_mesa] FOREIGN KEY([id_mesa])
REFERENCES [dbo].[mesa] ([id_mesa])
GO
ALTER TABLE [dbo].[encabezadoOrden] CHECK CONSTRAINT [fk_encabezado_mesa]
GO
ALTER TABLE [dbo].[encabezadoOrden]  WITH CHECK ADD  CONSTRAINT [fk_encabezado_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[encabezadoOrden] CHECK CONSTRAINT [fk_encabezado_usuario]
GO
ALTER TABLE [dbo].[mesa]  WITH CHECK ADD  CONSTRAINT [fk_mesa_empresa] FOREIGN KEY([empresa_id])
REFERENCES [dbo].[empresa] ([id_empresa])
GO
ALTER TABLE [dbo].[mesa] CHECK CONSTRAINT [fk_mesa_empresa]
GO
ALTER TABLE [dbo].[pago]  WITH CHECK ADD  CONSTRAINT [fk_pago_empresa] FOREIGN KEY([id_empresa])
REFERENCES [dbo].[empresa] ([id_empresa])
GO
ALTER TABLE [dbo].[pago] CHECK CONSTRAINT [fk_pago_empresa]
GO
ALTER TABLE [dbo].[pago]  WITH CHECK ADD  CONSTRAINT [fk_pago_encabezado] FOREIGN KEY([id_encabezado_orden])
REFERENCES [dbo].[encabezadoOrden] ([id_encabezado_orden])
GO
ALTER TABLE [dbo].[pago] CHECK CONSTRAINT [fk_pago_encabezado]
GO
ALTER TABLE [dbo].[pago]  WITH CHECK ADD  CONSTRAINT [fk_pago_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[pago] CHECK CONSTRAINT [fk_pago_usuario]
GO
USE [master]
GO
ALTER DATABASE [PARCIAL1D] SET  READ_WRITE 
GO
