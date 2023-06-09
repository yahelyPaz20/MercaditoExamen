CREATE DATABASE [Examen 1]
GO
USE [Examen 1]
GO
/****** Object:  Table [dbo].[Caja]    Script Date: 5/16/2023 11:03:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caja](
	[Codigo_turno] [nvarchar](50) NOT NULL,
	[Fecha_apertura] [date] NOT NULL,
	[Hora_Apertura] [time](7) NOT NULL,
	[Fecha_Cierre] [date] NOT NULL,
	[Hora_Cierre] [time](7) NOT NULL,
	[Cantidad_Apertura] [money] NOT NULL,
	[Cantidad_Cierre] [money] NOT NULL,
 CONSTRAINT [PK_Caja] PRIMARY KEY CLUSTERED 
(
	[Codigo_turno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 5/16/2023 11:03:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ID] [nvarchar](13) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 5/16/2023 11:03:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[codigo_Factura] [nvarchar](50) NOT NULL,
	[ID_Cliente] [nvarchar](13) NOT NULL,
	[Codigo_turno] [nvarchar](50) NOT NULL,
	[Credito] [bit] NOT NULL,
	[Total] [money] NOT NULL,
	[fecha] [date] NOT NULL,
	[Vencimiento] [date] NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[codigo_Factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gastos]    Script Date: 5/16/2023 11:03:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gastos](
	[Codigo_Gasto] [nvarchar](50) NOT NULL,
	[Codigo_Turno] [nvarchar](50) NOT NULL,
	[Tipo] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Cantidad] [money] NOT NULL,
 CONSTRAINT [PK_Gastos] PRIMARY KEY CLUSTERED 
(
	[Codigo_Gasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 5/16/2023 11:03:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[Codigo_Pago] [nvarchar](50) NOT NULL,
	[ID_Cliente] [nvarchar](13) NOT NULL,
	[ID_Factura] [nvarchar](50) NOT NULL,
	[Id_Turno] [nvarchar](50) NOT NULL,
	[Cantidad] [nchar](10) NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[Codigo_Pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 5/16/2023 11:03:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Codigo_producto] [nvarchar](30) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Costo] [money] NOT NULL,
	[ID_entregador] [nvarchar](13) NOT NULL,
	[Inventario] [float] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Codigo_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendedor]    Script Date: 5/16/2023 11:03:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendedor](
	[Id_Vendedor] [nvarchar](13) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Vendedor] PRIMARY KEY CLUSTERED 
(
	[Id_Vendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Caja] ([Codigo_turno], [Fecha_apertura], [Hora_Apertura], [Fecha_Cierre], [Hora_Cierre], [Cantidad_Apertura], [Cantidad_Cierre]) VALUES (N'1', CAST(N'2023-05-16' AS Date), CAST(N'05:00:00' AS Time), CAST(N'2023-05-16' AS Date), CAST(N'17:00:00' AS Time), 2200.0000, 15600.0000)
INSERT [dbo].[Caja] ([Codigo_turno], [Fecha_apertura], [Hora_Apertura], [Fecha_Cierre], [Hora_Cierre], [Cantidad_Apertura], [Cantidad_Cierre]) VALUES (N'10', CAST(N'2023-05-18' AS Date), CAST(N'09:00:00' AS Time), CAST(N'2023-05-18' AS Date), CAST(N'17:00:00' AS Time), 214.0000, 4141.0000)
INSERT [dbo].[Caja] ([Codigo_turno], [Fecha_apertura], [Hora_Apertura], [Fecha_Cierre], [Hora_Cierre], [Cantidad_Apertura], [Cantidad_Cierre]) VALUES (N'2', CAST(N'2023-05-17' AS Date), CAST(N'09:00:00' AS Time), CAST(N'2023-05-17' AS Date), CAST(N'17:00:00' AS Time), 3500.0000, 4500.0000)
INSERT [dbo].[Caja] ([Codigo_turno], [Fecha_apertura], [Hora_Apertura], [Fecha_Cierre], [Hora_Cierre], [Cantidad_Apertura], [Cantidad_Cierre]) VALUES (N'3', CAST(N'2023-05-18' AS Date), CAST(N'09:00:00' AS Time), CAST(N'2023-05-18' AS Date), CAST(N'17:00:00' AS Time), 18000.0000, 16.0000)
INSERT [dbo].[Caja] ([Codigo_turno], [Fecha_apertura], [Hora_Apertura], [Fecha_Cierre], [Hora_Cierre], [Cantidad_Apertura], [Cantidad_Cierre]) VALUES (N'4', CAST(N'2023-05-18' AS Date), CAST(N'09:00:00' AS Time), CAST(N'2023-05-18' AS Date), CAST(N'17:00:00' AS Time), 124124.0000, 12.0000)
INSERT [dbo].[Caja] ([Codigo_turno], [Fecha_apertura], [Hora_Apertura], [Fecha_Cierre], [Hora_Cierre], [Cantidad_Apertura], [Cantidad_Cierre]) VALUES (N'5', CAST(N'2023-05-18' AS Date), CAST(N'09:00:00' AS Time), CAST(N'2023-05-18' AS Date), CAST(N'17:00:00' AS Time), 24124.0000, 414.0000)
INSERT [dbo].[Caja] ([Codigo_turno], [Fecha_apertura], [Hora_Apertura], [Fecha_Cierre], [Hora_Cierre], [Cantidad_Apertura], [Cantidad_Cierre]) VALUES (N'6', CAST(N'2023-05-18' AS Date), CAST(N'09:00:00' AS Time), CAST(N'2023-05-18' AS Date), CAST(N'17:00:00' AS Time), 4424.0000, 4424.0000)
INSERT [dbo].[Caja] ([Codigo_turno], [Fecha_apertura], [Hora_Apertura], [Fecha_Cierre], [Hora_Cierre], [Cantidad_Apertura], [Cantidad_Cierre]) VALUES (N'7', CAST(N'2023-05-18' AS Date), CAST(N'09:00:00' AS Time), CAST(N'2023-05-18' AS Date), CAST(N'17:00:00' AS Time), 12451.0000, 25214.0000)
INSERT [dbo].[Caja] ([Codigo_turno], [Fecha_apertura], [Hora_Apertura], [Fecha_Cierre], [Hora_Cierre], [Cantidad_Apertura], [Cantidad_Cierre]) VALUES (N'8', CAST(N'2023-05-18' AS Date), CAST(N'09:00:00' AS Time), CAST(N'2023-05-18' AS Date), CAST(N'17:00:00' AS Time), 125.0000, 213.0000)
INSERT [dbo].[Caja] ([Codigo_turno], [Fecha_apertura], [Hora_Apertura], [Fecha_Cierre], [Hora_Cierre], [Cantidad_Apertura], [Cantidad_Cierre]) VALUES (N'9', CAST(N'2023-05-18' AS Date), CAST(N'09:00:00' AS Time), CAST(N'2023-05-18' AS Date), CAST(N'17:00:00' AS Time), 242.0000, 25.0000)
GO
INSERT [dbo].[Cliente] ([ID], [Nombre]) VALUES (N'4654651651', N'Yahely')
INSERT [dbo].[Cliente] ([ID], [Nombre]) VALUES (N'4848949899', N'Rudy')
INSERT [dbo].[Cliente] ([ID], [Nombre]) VALUES (N'4879564984', N'Andy')
INSERT [dbo].[Cliente] ([ID], [Nombre]) VALUES (N'4897498789', N'Eduardo')
INSERT [dbo].[Cliente] ([ID], [Nombre]) VALUES (N'5648498799', N'Paz')
INSERT [dbo].[Cliente] ([ID], [Nombre]) VALUES (N'6516565651', N'Paz')
INSERT [dbo].[Cliente] ([ID], [Nombre]) VALUES (N'7897984646', N'Manuel')
INSERT [dbo].[Cliente] ([ID], [Nombre]) VALUES (N'8498984684', N'Cerrato')
GO
INSERT [dbo].[Factura] ([codigo_Factura], [ID_Cliente], [Codigo_turno], [Credito], [Total], [fecha], [Vencimiento]) VALUES (N'1', N'4654651651', N'2', 0, 1233.0000, CAST(N'2023-05-17' AS Date), CAST(N'2023-05-17' AS Date))
INSERT [dbo].[Factura] ([codigo_Factura], [ID_Cliente], [Codigo_turno], [Credito], [Total], [fecha], [Vencimiento]) VALUES (N'2', N'4879564984', N'4', 1, 4234.0000, CAST(N'2023-05-17' AS Date), CAST(N'2023-05-30' AS Date))
INSERT [dbo].[Factura] ([codigo_Factura], [ID_Cliente], [Codigo_turno], [Credito], [Total], [fecha], [Vencimiento]) VALUES (N'3', N'4654651651', N'4', 0, 24112.0000, CAST(N'2023-05-17' AS Date), CAST(N'2023-05-30' AS Date))
INSERT [dbo].[Factura] ([codigo_Factura], [ID_Cliente], [Codigo_turno], [Credito], [Total], [fecha], [Vencimiento]) VALUES (N'4', N'6516565651', N'4', 0, 424.0000, CAST(N'2023-05-17' AS Date), CAST(N'2023-05-30' AS Date))
INSERT [dbo].[Factura] ([codigo_Factura], [ID_Cliente], [Codigo_turno], [Credito], [Total], [fecha], [Vencimiento]) VALUES (N'423', N'6516565651', N'4', 1, 323.0000, CAST(N'2023-05-17' AS Date), CAST(N'2023-05-30' AS Date))
INSERT [dbo].[Factura] ([codigo_Factura], [ID_Cliente], [Codigo_turno], [Credito], [Total], [fecha], [Vencimiento]) VALUES (N'53', N'4654651651', N'4', 1, 323.0000, CAST(N'2023-05-17' AS Date), CAST(N'2023-05-30' AS Date))
GO
INSERT [dbo].[Gastos] ([Codigo_Gasto], [Codigo_Turno], [Tipo], [Fecha], [Cantidad]) VALUES (N'12', N'2', 2, CAST(N'2023-05-16' AS Date), 3500.0000)
INSERT [dbo].[Gastos] ([Codigo_Gasto], [Codigo_Turno], [Tipo], [Fecha], [Cantidad]) VALUES (N'232', N'2', 2, CAST(N'2023-05-16' AS Date), 332.0000)
INSERT [dbo].[Gastos] ([Codigo_Gasto], [Codigo_Turno], [Tipo], [Fecha], [Cantidad]) VALUES (N'34123', N'1', 4, CAST(N'2023-05-16' AS Date), 1500.0000)
INSERT [dbo].[Gastos] ([Codigo_Gasto], [Codigo_Turno], [Tipo], [Fecha], [Cantidad]) VALUES (N'352', N'1', 4, CAST(N'2023-05-16' AS Date), 424.0000)
INSERT [dbo].[Gastos] ([Codigo_Gasto], [Codigo_Turno], [Tipo], [Fecha], [Cantidad]) VALUES (N'545', N'4', 1, CAST(N'2023-05-16' AS Date), 2500.0000)
INSERT [dbo].[Gastos] ([Codigo_Gasto], [Codigo_Turno], [Tipo], [Fecha], [Cantidad]) VALUES (N'5541', N'5', 3, CAST(N'2023-05-16' AS Date), 11224.0000)
GO
INSERT [dbo].[Pagos] ([Codigo_Pago], [ID_Cliente], [ID_Factura], [Id_Turno], [Cantidad], [Fecha]) VALUES (N'1234rw', N'4654651651', N'2', N'4', N'124442    ', CAST(N'2023-05-17' AS Date))
INSERT [dbo].[Pagos] ([Codigo_Pago], [ID_Cliente], [ID_Factura], [Id_Turno], [Cantidad], [Fecha]) VALUES (N'2133', N'6516565651', N'4', N'4', N'2133      ', CAST(N'2023-05-18' AS Date))
INSERT [dbo].[Pagos] ([Codigo_Pago], [ID_Cliente], [ID_Factura], [Id_Turno], [Cantidad], [Fecha]) VALUES (N'2412', N'4654651651', N'1', N'2', N'12312     ', CAST(N'2023-05-17' AS Date))
GO
INSERT [dbo].[Producto] ([Codigo_producto], [Nombre], [Costo], [ID_entregador], [Inventario]) VALUES (N'C14', N'Alcohol', 346.0000, N'15645484889', 111)
INSERT [dbo].[Producto] ([Codigo_producto], [Nombre], [Costo], [ID_entregador], [Inventario]) VALUES (N'D128', N'Desodorante', 120.0000, N'15645484889', 32)
INSERT [dbo].[Producto] ([Codigo_producto], [Nombre], [Costo], [ID_entregador], [Inventario]) VALUES (N'P3212', N'Pasta', 123.0000, N'12312312332', 44)
INSERT [dbo].[Producto] ([Codigo_producto], [Nombre], [Costo], [ID_entregador], [Inventario]) VALUES (N'sadas23', N'Crema', 23.0000, N'12312312332', 46)
GO
INSERT [dbo].[Vendedor] ([Id_Vendedor], [Nombre]) VALUES (N'12312312332', N'Velasquez')
INSERT [dbo].[Vendedor] ([Id_Vendedor], [Nombre]) VALUES (N'15645484889', N'Selvin')
INSERT [dbo].[Vendedor] ([Id_Vendedor], [Nombre]) VALUES (N'165164165465', N'Gonzales')
INSERT [dbo].[Vendedor] ([Id_Vendedor], [Nombre]) VALUES (N'46468468966', N'Cruz')
INSERT [dbo].[Vendedor] ([Id_Vendedor], [Nombre]) VALUES (N'486846868', N'Kevin')
GO
ALTER TABLE [dbo].[Producto] ADD  CONSTRAINT [DF_Producto_Inventario]  DEFAULT ((0)) FOR [Inventario]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Caja] FOREIGN KEY([Codigo_turno])
REFERENCES [dbo].[Caja] ([Codigo_turno])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Caja]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Cliente] FOREIGN KEY([ID_Cliente])
REFERENCES [dbo].[Cliente] ([ID])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Cliente]
GO
ALTER TABLE [dbo].[Gastos]  WITH CHECK ADD  CONSTRAINT [FK_Gastos_Caja] FOREIGN KEY([Codigo_Turno])
REFERENCES [dbo].[Caja] ([Codigo_turno])
GO
ALTER TABLE [dbo].[Gastos] CHECK CONSTRAINT [FK_Gastos_Caja]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Caja] FOREIGN KEY([Id_Turno])
REFERENCES [dbo].[Caja] ([Codigo_turno])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Caja]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Cliente] FOREIGN KEY([ID_Cliente])
REFERENCES [dbo].[Cliente] ([ID])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Cliente]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Factura] FOREIGN KEY([ID_Factura])
REFERENCES [dbo].[Factura] ([codigo_Factura])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Factura]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Vendedor] FOREIGN KEY([ID_entregador])
REFERENCES [dbo].[Vendedor] ([Id_Vendedor])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Vendedor]
GO
