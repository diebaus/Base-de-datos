USE [Nutrición]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 01/06/2021 16:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nombreCliente] [varchar](45) NULL,
	[apellidosCliente] [varchar](45) NULL,
	[dniCliente] [varchar](9) NULL,
	[telefonoCliente] [varchar](45) NULL,
	[correoElectronicoCliente] [varchar](100) NULL,
	[direccionCliente] [varchar](100) NULL,
 CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADOS]    Script Date: 01/06/2021 16:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADOS](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[fechaIngresoEmpleado] [date] NULL,
	[domicilioEmpleado] [varchar](45) NULL,
	[telefonoEmpleado] [varchar](45) NULL,
	[apellidosEmpleado] [varchar](45) NULL,
	[nombreEmpleado] [varchar](45) NULL,
	[dniEmpleado] [varchar](9) NULL,
	[salarioEmpleado] [decimal](6, 2) NULL,
	[idEmpleadoJefeFK] [int] NULL,
 CONSTRAINT [PK_EMPLEADOS] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LINEAORDENESCOMPRA]    Script Date: 01/06/2021 16:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LINEAORDENESCOMPRA](
	[idLineaOrdenCompra] [int] IDENTITY(1,1) NOT NULL,
	[cantidad] [varchar](45) NULL,
	[idOrdenCompraFK] [int] NULL,
	[idProductoFK] [int] NULL,
 CONSTRAINT [PK_LINEAORDENESCOMPRA] PRIMARY KEY CLUSTERED 
(
	[idLineaOrdenCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDENESCOMPRA]    Script Date: 01/06/2021 16:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDENESCOMPRA](
	[idOrdenCompra] [int] IDENTITY(1,1) NOT NULL,
	[totalOrdenCompra] [decimal](6, 2) NULL,
	[subtotalOrdenCompra] [decimal](6, 2) NULL,
	[ivaOrdenCompra] [decimal](6, 2) NULL,
	[fechaOrdenCompra] [date] NULL,
	[idClienteFK] [int] NULL,
	[idEmpleadoFK] [int] NULL,
 CONSTRAINT [PK_ORDENESCOMPRA] PRIMARY KEY CLUSTERED 
(
	[idOrdenCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTOS]    Script Date: 01/06/2021 16:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTOS](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[descripcionProducto] [varchar](45) NULL,
	[precioProducto] [decimal](6, 2) NULL,
	[stockProducto] [varchar](45) NULL,
 CONSTRAINT [PK_PRODUCTOS] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROMOTOR]    Script Date: 01/06/2021 16:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROMOTOR](
	[idPromotor] [int] IDENTITY(1,1) NOT NULL,
	[carteraClientes] [varchar](45) NULL,
	[idEmpleadoFK] [int] NULL,
 CONSTRAINT [PK_PROMOTOR] PRIMARY KEY CLUSTERED 
(
	[idPromotor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENDEDOR]    Script Date: 01/06/2021 16:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENDEDOR](
	[idVendedor] [int] IDENTITY(1,1) NOT NULL,
	[primaVendedor] [decimal](6, 2) NULL,
	[idEmpleadoFK] [int] NULL,
 CONSTRAINT [PK_VENDEDOR] PRIMARY KEY CLUSTERED 
(
	[idVendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CLIENTES] ON 

INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [apellidosCliente], [dniCliente], [telefonoCliente], [correoElectronicoCliente], [direccionCliente]) VALUES (1, N'Juana', N'Arco Flecha', N'86375902J', N'928205409', N'juanaarco@hotmail.com', N'AV Fuego 1')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [apellidosCliente], [dniCliente], [telefonoCliente], [correoElectronicoCliente], [direccionCliente]) VALUES (2, N'José', N'Pérez Lorenzo', N'34981445L', N'968933586', N'joseperezlorenzo@gmail.com', N'Paseo Tranquilo 98')
SET IDENTITY_INSERT [dbo].[CLIENTES] OFF
GO
SET IDENTITY_INSERT [dbo].[EMPLEADOS] ON 

INSERT [dbo].[EMPLEADOS] ([idEmpleado], [fechaIngresoEmpleado], [domicilioEmpleado], [telefonoEmpleado], [apellidosEmpleado], [nombreEmpleado], [dniEmpleado], [salarioEmpleado], [idEmpleadoJefeFK]) VALUES (1, CAST(N'2015-10-16' AS Date), N'Calle Pequeña 44', N'664890098', N'Porras Lorca', N'Javier', N'22399855L', CAST(1500.00 AS Decimal(6, 2)), 1)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [fechaIngresoEmpleado], [domicilioEmpleado], [telefonoEmpleado], [apellidosEmpleado], [nombreEmpleado], [dniEmpleado], [salarioEmpleado], [idEmpleadoJefeFK]) VALUES (2, CAST(N'2015-09-04' AS Date), N'AV Grande 40', N'669686766', N'Losco García', N'Antonio', N'44837615Y', CAST(1600.00 AS Decimal(6, 2)), 2)
SET IDENTITY_INSERT [dbo].[EMPLEADOS] OFF
GO
SET IDENTITY_INSERT [dbo].[LINEAORDENESCOMPRA] ON 

INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idOrdenCompraFK], [idProductoFK]) VALUES (1, N'5', 1, 1)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idOrdenCompraFK], [idProductoFK]) VALUES (2, N'2', 10, 2)
SET IDENTITY_INSERT [dbo].[LINEAORDENESCOMPRA] OFF
GO
SET IDENTITY_INSERT [dbo].[ORDENESCOMPRA] ON 

INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idClienteFK], [idEmpleadoFK]) VALUES (1, CAST(525.50 AS Decimal(6, 2)), CAST(415.15 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-02-12' AS Date), 1, 1)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idClienteFK], [idEmpleadoFK]) VALUES (2, CAST(280.80 AS Decimal(6, 2)), CAST(221.83 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-02-11' AS Date), 2, 2)
SET IDENTITY_INSERT [dbo].[ORDENESCOMPRA] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCTOS] ON 

INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (1, N'Creatina Creapure 500gr', CAST(12.00 AS Decimal(6, 2)), N'20')
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (2, N'Proteína Whey 2kg', CAST(25.00 AS Decimal(6, 2)), N'40')
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (3, N'Barritas Energéticas 25 gr', CAST(2.00 AS Decimal(6, 2)), N'30')
SET IDENTITY_INSERT [dbo].[PRODUCTOS] OFF
GO
SET IDENTITY_INSERT [dbo].[PROMOTOR] ON 

INSERT [dbo].[PROMOTOR] ([idPromotor], [carteraClientes], [idEmpleadoFK]) VALUES (1, N'Juana Arco Flecha', 2)
INSERT [dbo].[PROMOTOR] ([idPromotor], [carteraClientes], [idEmpleadoFK]) VALUES (2, N'José Pérez Lorenzo', 2)
SET IDENTITY_INSERT [dbo].[PROMOTOR] OFF
GO
SET IDENTITY_INSERT [dbo].[VENDEDOR] ON 

INSERT [dbo].[VENDEDOR] ([idVendedor], [primaVendedor], [idEmpleadoFK]) VALUES (1, CAST(80.00 AS Decimal(6, 2)), 1)
INSERT [dbo].[VENDEDOR] ([idVendedor], [primaVendedor], [idEmpleadoFK]) VALUES (2, CAST(100.00 AS Decimal(6, 2)), 1)
SET IDENTITY_INSERT [dbo].[VENDEDOR] OFF
GO
ALTER TABLE [dbo].[EMPLEADOS]  WITH CHECK ADD  CONSTRAINT [FK_EMPLEADOS_EMPLEADOS] FOREIGN KEY([idEmpleadoJefeFK])
REFERENCES [dbo].[EMPLEADOS] ([idEmpleado])
GO
ALTER TABLE [dbo].[EMPLEADOS] CHECK CONSTRAINT [FK_EMPLEADOS_EMPLEADOS]
GO
ALTER TABLE [dbo].[ORDENESCOMPRA]  WITH CHECK ADD  CONSTRAINT [FK_ORDENESCOMPRA_CLIENTES] FOREIGN KEY([idClienteFK])
REFERENCES [dbo].[CLIENTES] ([idCliente])
GO
ALTER TABLE [dbo].[ORDENESCOMPRA] CHECK CONSTRAINT [FK_ORDENESCOMPRA_CLIENTES]
GO
ALTER TABLE [dbo].[ORDENESCOMPRA]  WITH CHECK ADD  CONSTRAINT [FK_ORDENESCOMPRA_EMPLEADOS] FOREIGN KEY([idEmpleadoFK])
REFERENCES [dbo].[EMPLEADOS] ([idEmpleado])
GO
ALTER TABLE [dbo].[ORDENESCOMPRA] CHECK CONSTRAINT [FK_ORDENESCOMPRA_EMPLEADOS]
GO
ALTER TABLE [dbo].[PROMOTOR]  WITH CHECK ADD  CONSTRAINT [FK_PROMOTOR_EMPLEADOS] FOREIGN KEY([idEmpleadoFK])
REFERENCES [dbo].[EMPLEADOS] ([idEmpleado])
GO
ALTER TABLE [dbo].[PROMOTOR] CHECK CONSTRAINT [FK_PROMOTOR_EMPLEADOS]
GO
ALTER TABLE [dbo].[VENDEDOR]  WITH CHECK ADD  CONSTRAINT [FK_VENDEDOR_EMPLEADOS] FOREIGN KEY([idEmpleadoFK])
REFERENCES [dbo].[EMPLEADOS] ([idEmpleado])
GO
ALTER TABLE [dbo].[VENDEDOR] CHECK CONSTRAINT [FK_VENDEDOR_EMPLEADOS]
GO
