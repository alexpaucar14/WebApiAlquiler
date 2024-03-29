USE [DB_ALQUILER]
GO
/****** Object:  Table [dbo].[AccesoVentana]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccesoVentana](
	[IdAccesoVentana] [int] IDENTITY(1,1) NOT NULL,
	[IdRol] [int] NULL,
	[IdVentana] [int] NULL,
	[Estado] [bit] NULL,
	[SoloLectura] [bit] NULL,
 CONSTRAINT [PK_AccesoVentana] PRIMARY KEY CLUSTERED 
(
	[IdAccesoVentana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[IdAlmacen] [int] NOT NULL,
	[IdGrupoEmpresarial] [int] NULL,
	[IdOrganizacion] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[FechaActualizacion] [datetime] NULL,
 CONSTRAINT [PK_Almacen] PRIMARY KEY CLUSTERED 
(
	[IdAlmacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AsignacionUsuario]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsignacionUsuario](
	[IdAsignacionUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[IdRol] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_AsignacionUsuario] PRIMARY KEY CLUSTERED 
(
	[IdAsignacionUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoEmpresarial]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoEmpresarial](
	[IdGrupoEmpresarial] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[IdIdioma] [int] NULL,
	[ServidorCorreo] [varchar](100) NULL,
	[PuertoSmtp] [int] NULL,
	[RequiereSmtpSsl] [bit] NULL,
	[EmailSolicitud] [varchar](50) NULL,
	[ClaveSolicitud] [varchar](50) NULL,
 CONSTRAINT [PK_GrupoEmpresarial] PRIMARY KEY CLUSTERED 
(
	[IdGrupoEmpresarial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idioma](
	[IdIdioma] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Abreviatura] [varchar](50) NULL,
	[Descripcion] [varchar](200) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Idioma] PRIMARY KEY CLUSTERED 
(
	[IdIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListaPrecio]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaPrecio](
	[IdListaPrecio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](100) NULL,
	[IdMoneda] [int] NULL,
	[PrecisionPrecio] [int] NULL,
	[Predeterminado] [bit] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_ListaPrecio] PRIMARY KEY CLUSTERED 
(
	[IdListaPrecio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moneda]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moneda](
	[IdMoneda] [int] IDENTITY(1,1) NOT NULL,
	[IsoMoneda] [varchar](50) NULL,
	[Simbolo] [varchar](50) NULL,
	[Descripcion] [varchar](100) NULL,
	[Precision] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Moneda] PRIMARY KEY CLUSTERED 
(
	[IdMoneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizacion]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizacion](
	[IdOrganizacion] [int] IDENTITY(1,1) NOT NULL,
	[IdGrupoEmpresarial] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[RutaLogo] [varchar](50) NULL,
	[IdUsuario] [int] NULL,
	[Estado] [bit] NULL,
	[FechaActualizacion] [varchar](50) NULL,
	[IdAlmacen] [int] NULL,
 CONSTRAINT [PK_Organizacion] PRIMARY KEY CLUSTERED 
(
	[IdOrganizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](100) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolAcceso]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolAcceso](
	[IdRolAcceso] [int] IDENTITY(1,1) NOT NULL,
	[IdOrganizacion] [int] NULL,
	[IdRol] [int] NULL,
	[SoloLectura] [bit] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_RolAcceso] PRIMARY KEY CLUSTERED 
(
	[IdRolAcceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tercero]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tercero](
	[IdTercero] [int] IDENTITY(1,1) NOT NULL,
	[NroIdentificacion] [varchar](50) NULL,
	[Nombre] [varchar](200) NULL,
	[Nombre2] [varchar](200) NULL,
	[NroReferencia] [varchar](50) NULL,
	[EsCliente] [bit] NULL,
	[EsProveedor] [bit] NULL,
	[EsEmpleado] [bit] NULL,
	[EsProspecto] [bit] NULL,
	[EsRepreComercial] [bit] NULL,
	[IdRepreComercial] [int] NULL,
	[IdEstadoCredito] [int] NULL,
	[LimiteCredito] [decimal](18, 0) NULL,
	[SaldoActual] [decimal](18, 0) NULL,
	[RutaLogo] [varchar](200) NULL,
	[IdListaPrecio] [int] NULL,
	[FecRegistro] [datetime] NULL,
	[Estado] [bit] NULL,
	[Cumpleanos] [date] NULL,
	[Comentarios] [varchar](200) NULL,
	[IdGrupoEmpresarial] [int] NULL,
	[IdOrganizacion] [int] NULL,
 CONSTRAINT [PK_Tercero] PRIMARY KEY CLUSTERED 
(
	[IdTercero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoNotificacion]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoNotificacion](
	[IdTipoNotificacion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](200) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_TipoNotificacion] PRIMARY KEY CLUSTERED 
(
	[IdTipoNotificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoVentana]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoVentana](
	[IdTipoVentana] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_TipoVentana] PRIMARY KEY CLUSTERED 
(
	[IdTipoVentana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdTercero] [int] NULL,
	[Alias] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Clave] [varchar](150) NULL,
	[IdSaludo] [int] NULL,
	[IdTipoNotificacion] [int] NULL,
	[FechaVerificacionEmail] [datetime] NULL,
	[FechaBloqueoCuenta] [datetime] NULL,
	[Bloqueado] [bit] NULL,
	[NoExpira] [bit] NULL,
	[ConteoIngresosFallidos] [int] NULL,
	[FechaUltimoIngreso] [datetime] NULL,
	[FechaCambioContrasenia] [datetime] NULL,
	[PinUsuario] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventana]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventana](
	[IdVentana] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](200) NULL,
	[Ayuda] [varchar](500) NULL,
	[Resaltar] [bit] NULL,
	[IdTipoVentana] [int] NULL,
	[PathAction] [varchar](150) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Ventana] PRIMARY KEY CLUSTERED 
(
	[IdVentana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AsignacionUsuario] ON 

INSERT [dbo].[AsignacionUsuario] ([IdAsignacionUsuario], [IdUsuario], [IdRol], [Estado]) VALUES (1, 1, 1, 1)
INSERT [dbo].[AsignacionUsuario] ([IdAsignacionUsuario], [IdUsuario], [IdRol], [Estado]) VALUES (2, 2, 2, 1)
SET IDENTITY_INSERT [dbo].[AsignacionUsuario] OFF
SET IDENTITY_INSERT [dbo].[GrupoEmpresarial] ON 

INSERT [dbo].[GrupoEmpresarial] ([IdGrupoEmpresarial], [Nombre], [Descripcion], [IdIdioma], [ServidorCorreo], [PuertoSmtp], [RequiereSmtpSsl], [EmailSolicitud], [ClaveSolicitud]) VALUES (1, N'GRUPO ALE', NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[GrupoEmpresarial] OFF
SET IDENTITY_INSERT [dbo].[Organizacion] ON 

INSERT [dbo].[Organizacion] ([IdOrganizacion], [IdGrupoEmpresarial], [Nombre], [Descripcion], [Direccion], [Telefono], [Email], [RutaLogo], [IdUsuario], [Estado], [FechaActualizacion], [IdAlmacen]) VALUES (1, 1, N'San Juan de Lurigancho', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Organizacion] OFF
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([IdRol], [Nombre], [Descripcion], [Estado]) VALUES (1, N'Super Admin', N'Super Usuario', 1)
INSERT [dbo].[Rol] ([IdRol], [Nombre], [Descripcion], [Estado]) VALUES (2, N'Invitado', N'Usuario Invitado', 1)
SET IDENTITY_INSERT [dbo].[Rol] OFF
SET IDENTITY_INSERT [dbo].[RolAcceso] ON 

INSERT [dbo].[RolAcceso] ([IdRolAcceso], [IdOrganizacion], [IdRol], [SoloLectura], [Estado]) VALUES (1, 1, 1, NULL, 1)
INSERT [dbo].[RolAcceso] ([IdRolAcceso], [IdOrganizacion], [IdRol], [SoloLectura], [Estado]) VALUES (2, 1, 2, NULL, 1)
SET IDENTITY_INSERT [dbo].[RolAcceso] OFF
SET IDENTITY_INSERT [dbo].[Tercero] ON 

INSERT [dbo].[Tercero] ([IdTercero], [NroIdentificacion], [Nombre], [Nombre2], [NroReferencia], [EsCliente], [EsProveedor], [EsEmpleado], [EsProspecto], [EsRepreComercial], [IdRepreComercial], [IdEstadoCredito], [LimiteCredito], [SaldoActual], [RutaLogo], [IdListaPrecio], [FecRegistro], [Estado], [Cumpleanos], [Comentarios], [IdGrupoEmpresarial], [IdOrganizacion]) VALUES (1, NULL, N'Yecan', N'Can', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Tercero] OFF
SET IDENTITY_INSERT [dbo].[TipoVentana] ON 

INSERT [dbo].[TipoVentana] ([IdTipoVentana], [Codigo], [Nombre], [Descripcion], [Estado]) VALUES (1, N'Padre', NULL, NULL, 1)
INSERT [dbo].[TipoVentana] ([IdTipoVentana], [Codigo], [Nombre], [Descripcion], [Estado]) VALUES (2, N'Hijo', NULL, NULL, 1)
INSERT [dbo].[TipoVentana] ([IdTipoVentana], [Codigo], [Nombre], [Descripcion], [Estado]) VALUES (3, N'Nieto', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[TipoVentana] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IdUsuario], [IdTercero], [Alias], [Descripcion], [Email], [Clave], [IdSaludo], [IdTipoNotificacion], [FechaVerificacionEmail], [FechaBloqueoCuenta], [Bloqueado], [NoExpira], [ConteoIngresosFallidos], [FechaUltimoIngreso], [FechaCambioContrasenia], [PinUsuario]) VALUES (1, NULL, N'Admin', NULL, N'alex.paucar14@gmail.com', N'alex', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [IdTercero], [Alias], [Descripcion], [Email], [Clave], [IdSaludo], [IdTipoNotificacion], [FechaVerificacionEmail], [FechaBloqueoCuenta], [Bloqueado], [NoExpira], [ConteoIngresosFallidos], [FechaUltimoIngreso], [FechaCambioContrasenia], [PinUsuario]) VALUES (2, 1, N'Yecan', NULL, N'yecan@gmail.com', N'yecan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [IdTercero], [Alias], [Descripcion], [Email], [Clave], [IdSaludo], [IdTipoNotificacion], [FechaVerificacionEmail], [FechaBloqueoCuenta], [Bloqueado], [NoExpira], [ConteoIngresosFallidos], [FechaUltimoIngreso], [FechaCambioContrasenia], [PinUsuario]) VALUES (1002, 1, N'Test', NULL, N'Prueba@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [IdTercero], [Alias], [Descripcion], [Email], [Clave], [IdSaludo], [IdTipoNotificacion], [FechaVerificacionEmail], [FechaBloqueoCuenta], [Bloqueado], [NoExpira], [ConteoIngresosFallidos], [FechaUltimoIngreso], [FechaCambioContrasenia], [PinUsuario]) VALUES (1003, 1, N'Test', NULL, N'Prueba@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [IdTercero], [Alias], [Descripcion], [Email], [Clave], [IdSaludo], [IdTipoNotificacion], [FechaVerificacionEmail], [FechaBloqueoCuenta], [Bloqueado], [NoExpira], [ConteoIngresosFallidos], [FechaUltimoIngreso], [FechaCambioContrasenia], [PinUsuario]) VALUES (1004, 1, N'alias New', NULL, N'Prueba_03@gmail.com', N'Clave Nueva 2', 0, NULL, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [IdTercero], [Alias], [Descripcion], [Email], [Clave], [IdSaludo], [IdTipoNotificacion], [FechaVerificacionEmail], [FechaBloqueoCuenta], [Bloqueado], [NoExpira], [ConteoIngresosFallidos], [FechaUltimoIngreso], [FechaCambioContrasenia], [PinUsuario]) VALUES (1007, 1, N'Alias 001', NULL, N'001@gmail.com', N'Clave Nueva 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [IdTercero], [Alias], [Descripcion], [Email], [Clave], [IdSaludo], [IdTipoNotificacion], [FechaVerificacionEmail], [FechaBloqueoCuenta], [Bloqueado], [NoExpira], [ConteoIngresosFallidos], [FechaUltimoIngreso], [FechaCambioContrasenia], [PinUsuario]) VALUES (1008, 1, N'Alias 002', NULL, N'002@gmail.com', N'Clave Nueva 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [IdTercero], [Alias], [Descripcion], [Email], [Clave], [IdSaludo], [IdTipoNotificacion], [FechaVerificacionEmail], [FechaBloqueoCuenta], [Bloqueado], [NoExpira], [ConteoIngresosFallidos], [FechaUltimoIngreso], [FechaCambioContrasenia], [PinUsuario]) VALUES (1009, 1, N'Test', NULL, N'Prueba@gmail.com', N'OKTest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [IdTercero], [Alias], [Descripcion], [Email], [Clave], [IdSaludo], [IdTipoNotificacion], [FechaVerificacionEmail], [FechaBloqueoCuenta], [Bloqueado], [NoExpira], [ConteoIngresosFallidos], [FechaUltimoIngreso], [FechaCambioContrasenia], [PinUsuario]) VALUES (1010, 1, N'Test', NULL, N'PruebaC#@gmail.com', N'ClaveBuena', NULL, NULL, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [IdTercero], [Alias], [Descripcion], [Email], [Clave], [IdSaludo], [IdTipoNotificacion], [FechaVerificacionEmail], [FechaBloqueoCuenta], [Bloqueado], [NoExpira], [ConteoIngresosFallidos], [FechaUltimoIngreso], [FechaCambioContrasenia], [PinUsuario]) VALUES (1011, NULL, N'Alias 001', NULL, N'001@gmail.com', N'Clave Nueva 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [IdTercero], [Alias], [Descripcion], [Email], [Clave], [IdSaludo], [IdTipoNotificacion], [FechaVerificacionEmail], [FechaBloqueoCuenta], [Bloqueado], [NoExpira], [ConteoIngresosFallidos], [FechaUltimoIngreso], [FechaCambioContrasenia], [PinUsuario]) VALUES (1012, 1, N'Alias 001', NULL, N'001@gmail.com', N'Clave Nueva 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [IdTercero], [Alias], [Descripcion], [Email], [Clave], [IdSaludo], [IdTipoNotificacion], [FechaVerificacionEmail], [FechaBloqueoCuenta], [Bloqueado], [NoExpira], [ConteoIngresosFallidos], [FechaUltimoIngreso], [FechaCambioContrasenia], [PinUsuario]) VALUES (1013, 1, N'Alias 001', NULL, N'001@gmail.com', N'Clave Nueva 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([IdUsuario], [IdTercero], [Alias], [Descripcion], [Email], [Clave], [IdSaludo], [IdTipoNotificacion], [FechaVerificacionEmail], [FechaBloqueoCuenta], [Bloqueado], [NoExpira], [ConteoIngresosFallidos], [FechaUltimoIngreso], [FechaCambioContrasenia], [PinUsuario]) VALUES (1014, 1, N'Fuego Fuego', NULL, N'Fuego#@gmail.com', N'Fuego', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
SET IDENTITY_INSERT [dbo].[Ventana] ON 

INSERT [dbo].[Ventana] ([IdVentana], [Nombre], [Descripcion], [Ayuda], [Resaltar], [IdTipoVentana], [PathAction], [Estado]) VALUES (1, N'Configuracion', N'Menu Config', NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Ventana] ([IdVentana], [Nombre], [Descripcion], [Ayuda], [Resaltar], [IdTipoVentana], [PathAction], [Estado]) VALUES (2, N'Usuario', N'Mantenimiento Usuario', NULL, NULL, 2, NULL, 1)
SET IDENTITY_INSERT [dbo].[Ventana] OFF
ALTER TABLE [dbo].[AccesoVentana] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Almacen] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[AsignacionUsuario] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Idioma] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[ListaPrecio] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Moneda] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Organizacion] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Rol] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[RolAcceso] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Tercero] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[TipoNotificacion] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[TipoVentana] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Ventana] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[AccesoVentana]  WITH CHECK ADD  CONSTRAINT [FK_AccesoVentana_Rol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Rol] ([IdRol])
GO
ALTER TABLE [dbo].[AccesoVentana] CHECK CONSTRAINT [FK_AccesoVentana_Rol]
GO
ALTER TABLE [dbo].[AccesoVentana]  WITH CHECK ADD  CONSTRAINT [FK_AccesoVentana_Ventana] FOREIGN KEY([IdVentana])
REFERENCES [dbo].[Ventana] ([IdVentana])
GO
ALTER TABLE [dbo].[AccesoVentana] CHECK CONSTRAINT [FK_AccesoVentana_Ventana]
GO
ALTER TABLE [dbo].[AsignacionUsuario]  WITH CHECK ADD  CONSTRAINT [FK_AsignacionUsuario_Rol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Rol] ([IdRol])
GO
ALTER TABLE [dbo].[AsignacionUsuario] CHECK CONSTRAINT [FK_AsignacionUsuario_Rol]
GO
ALTER TABLE [dbo].[AsignacionUsuario]  WITH CHECK ADD  CONSTRAINT [FK_AsignacionUsuario_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[AsignacionUsuario] CHECK CONSTRAINT [FK_AsignacionUsuario_Usuario]
GO
ALTER TABLE [dbo].[GrupoEmpresarial]  WITH CHECK ADD  CONSTRAINT [FK_GrupoEmpresarial_Idioma] FOREIGN KEY([IdIdioma])
REFERENCES [dbo].[Idioma] ([IdIdioma])
GO
ALTER TABLE [dbo].[GrupoEmpresarial] CHECK CONSTRAINT [FK_GrupoEmpresarial_Idioma]
GO
ALTER TABLE [dbo].[ListaPrecio]  WITH CHECK ADD  CONSTRAINT [FK_ListaPrecio_Moneda] FOREIGN KEY([IdMoneda])
REFERENCES [dbo].[Moneda] ([IdMoneda])
GO
ALTER TABLE [dbo].[ListaPrecio] CHECK CONSTRAINT [FK_ListaPrecio_Moneda]
GO
ALTER TABLE [dbo].[Organizacion]  WITH CHECK ADD  CONSTRAINT [FK_Organizacion_Almacen] FOREIGN KEY([IdAlmacen])
REFERENCES [dbo].[Almacen] ([IdAlmacen])
GO
ALTER TABLE [dbo].[Organizacion] CHECK CONSTRAINT [FK_Organizacion_Almacen]
GO
ALTER TABLE [dbo].[Organizacion]  WITH CHECK ADD  CONSTRAINT [FK_Organizacion_GrupoEmpresarial] FOREIGN KEY([IdGrupoEmpresarial])
REFERENCES [dbo].[GrupoEmpresarial] ([IdGrupoEmpresarial])
GO
ALTER TABLE [dbo].[Organizacion] CHECK CONSTRAINT [FK_Organizacion_GrupoEmpresarial]
GO
ALTER TABLE [dbo].[RolAcceso]  WITH CHECK ADD  CONSTRAINT [FK_RolAcceso_Organizacion] FOREIGN KEY([IdOrganizacion])
REFERENCES [dbo].[Organizacion] ([IdOrganizacion])
GO
ALTER TABLE [dbo].[RolAcceso] CHECK CONSTRAINT [FK_RolAcceso_Organizacion]
GO
ALTER TABLE [dbo].[RolAcceso]  WITH CHECK ADD  CONSTRAINT [FK_RolAcceso_Rol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Rol] ([IdRol])
GO
ALTER TABLE [dbo].[RolAcceso] CHECK CONSTRAINT [FK_RolAcceso_Rol]
GO
ALTER TABLE [dbo].[Tercero]  WITH CHECK ADD  CONSTRAINT [FK_Tercero_ListaPrecio] FOREIGN KEY([IdListaPrecio])
REFERENCES [dbo].[ListaPrecio] ([IdListaPrecio])
GO
ALTER TABLE [dbo].[Tercero] CHECK CONSTRAINT [FK_Tercero_ListaPrecio]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Tercero] FOREIGN KEY([IdTercero])
REFERENCES [dbo].[Tercero] ([IdTercero])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Tercero]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_TipoNotificacion] FOREIGN KEY([IdTipoNotificacion])
REFERENCES [dbo].[TipoNotificacion] ([IdTipoNotificacion])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_TipoNotificacion]
GO
ALTER TABLE [dbo].[Ventana]  WITH CHECK ADD  CONSTRAINT [FK_Ventana_TipoVentana] FOREIGN KEY([IdTipoVentana])
REFERENCES [dbo].[TipoVentana] ([IdTipoVentana])
GO
ALTER TABLE [dbo].[Ventana] CHECK CONSTRAINT [FK_Ventana_TipoVentana]
GO
/****** Object:  StoredProcedure [dbo].[spu_CheckLogin]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex
-- Create date: 20/06/2019
-- Description:	Validar Login
-- =============================================
CREATE PROCEDURE [dbo].[spu_CheckLogin]
	@email	varchar(50),
	@clave	varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	select us.IdUsuario,
			us.IdTercero,
			us.Alias,
			us.Email,
			au.IdRol
	from Usuario us inner join AsignacionUsuario au on us.IdUsuario=au.IdUsuario
	where Email = @email
	and   Clave	= @clave;
END
GO
/****** Object:  StoredProcedure [dbo].[spu_GetContrasenaUsuario]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex
-- Create date: 25/06/2019
-- Description:	Recuperar Clave
-- =============================================
CREATE PROCEDURE [dbo].[spu_GetContrasenaUsuario]
	@email	varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	select Clave,
		   Email,
		   Alias,
		   IdUsuario
	from Usuario
	where Email = @email;
END
GO
/****** Object:  StoredProcedure [dbo].[spu_GetGrupoEmpresarial]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex
-- Create date: 26/06/2019
-- Description:	Obtiene todas las empresas
-- =============================================
CREATE PROCEDURE [dbo].[spu_GetGrupoEmpresarial]
@IdUsuario int
as
BEGIN
	SET NOCOUNT ON;
	select  distinct ge.IdGrupoEmpresarial,
			ge.Nombre,
			ge.Descripcion,
			ge.IdIdioma,
			ge.ServidorCorreo,
			ge.PuertoSmtp,
			ge.RequiereSmtpSsl,
			ge.EmailSolicitud,
			ge.ClaveSolicitud
	from Usuario us inner join AsignacionUsuario asu on us.IdUsuario = asu.IdUsuario
					inner join RolAcceso ra			 on asu.IdRol = ra.IdRol
					inner join Organizacion org		 on ra.IdOrganizacion = org.IdOrganizacion
					inner join GrupoEmpresarial	ge	 on org.IdGrupoEmpresarial = ge.IdGrupoEmpresarial
	where us.IdUsuario = @IdUsuario or 1 = @IdUsuario --1=Usuario Super Admin
	order by nombre;

END;


GO
/****** Object:  StoredProcedure [dbo].[spu_GetOrganizacion]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex
-- Create date: 26/06/2019
-- Description:	Obtiene Organizacion por GrupoEmpresarial
-- =============================================
CREATE PROCEDURE [dbo].[spu_GetOrganizacion] 
 @IdGrupoEmpresarial int
AS
BEGIN
	SET NOCOUNT ON;
	select IdOrganizacion,
			Nombre,
			Descripcion,
			Direccion,
			Telefono,
			Email,
			RutaLogo,
			IdUsuario,
			Estado,
			FechaActualizacion,
			IdAlmacen
	from Organizacion
	where IdGrupoEmpresarial = @IdGrupoEmpresarial or -99 = @IdGrupoEmpresarial;
END;
GO
/****** Object:  StoredProcedure [dbo].[spu_GetTercero]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex
-- Create date: 02/07/2019
-- Description:	Obtiene Terceros
-- =============================================
CREATE PROCEDURE [dbo].[spu_GetTercero] 
 @IdGrupoEmpresarial int,
 @IdOrganizacion int,
 @filtro varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	select  distinct
		ter.IdTercero
		,ter.NroIdentificacion
		,ter.Nombre
		,ter.Nombre2
		,ter.NroReferencia
		,ter.EsCliente
		,ter.EsProveedor
		,ter.EsEmpleado
		,ter.EsProspecto
		,ter.EsRepreComercial
		,ter.IdRepreComercial
		,ter.IdEstadoCredito
		,ter.LimiteCredito
		,ter.SaldoActual
		,ter.RutaLogo
		,ter.IdListaPrecio
		,ter.FecRegistro
		,ter.Estado
		,ter.Cumpleanos
		,ter.Comentarios
		,ter.IdGrupoEmpresarial
		,ter.IdOrganizacion
		,org.Nombre as Organizacion
		,ge.Nombre as GrupoEmpresarial
	from Tercero ter inner join Organizacion org	on ter.IdOrganizacion = org.IdOrganizacion
					 inner join GrupoEmpresarial ge	 on ter.IdGrupoEmpresarial = ge.IdGrupoEmpresarial
	where (ge.IdGrupoEmpresarial = @IdGrupoEmpresarial or -99 = @IdGrupoEmpresarial)
	and	  (org.IdOrganizacion	= @IdOrganizacion or -99 = @IdOrganizacion)
	and	  (  upper(ter.Nombre)  like upper('%' + @filtro +  '%')
		  or upper(ter.Nombre2) like upper('%' + @filtro +  '%'));
END;

-- exec [spu_GetUsuario] 1,1,'ye'
-- select * from Tercero
GO
/****** Object:  StoredProcedure [dbo].[spu_GetTerceroById]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex
-- Create date: 02/07/2019
-- Description:	Obtiene Tercero by Id
-- =============================================
CREATE PROCEDURE [dbo].[spu_GetTerceroById] 
 @IdTercero int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT [IdTercero]
      ,[NroIdentificacion]
      ,[Nombre]
      ,[Nombre2]
      ,[NroReferencia]
      ,[EsCliente]
      ,[EsProveedor]
      ,[EsEmpleado]
      ,[EsProspecto]
      ,[EsRepreComercial]
      ,[IdRepreComercial]
      ,[IdEstadoCredito]
      ,[LimiteCredito]
      ,[SaldoActual]
      ,[RutaLogo]
      ,[IdListaPrecio]
      ,[FecRegistro]
      ,[Estado]
      ,[Cumpleanos]
      ,[Comentarios]
      ,[IdGrupoEmpresarial]
      ,[IdOrganizacion]
  FROM [dbo].[Tercero]
  WHERE IdTercero = @IdTercero;
END;
GO
/****** Object:  StoredProcedure [dbo].[spu_GetUsuario]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex
-- Create date: 28/06/2019
-- Description:	Obtiene Usuarios
-- =============================================
CREATE PROCEDURE [dbo].[spu_GetUsuario] 
 @IdGrupoEmpresarial int,
 @IdOrganizacion int,
 @filtro varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	select  distinct
		us.IdUsuario,
		ter.IdTercero,
		ter.Nombre,
		ter.Nombre2,
		rol.Nombre as NombreRol,
		us.Alias,
		us.Email,
		us.FechaUltimoIngreso,
		ISNULL(us.Bloqueado,0) AS Bloqueado,
		org.Nombre as Organizacion,
		ge.Nombre as GrupoEmpresarial
	from Usuario us inner join AsignacionUsuario asu on us.IdUsuario = asu.IdUsuario
					inner join RolAcceso ra			 on asu.IdRol = ra.IdRol
					inner join Rol rol				 on asu.IdRol = rol.IdRol
					inner join Organizacion org		 on ra.IdOrganizacion = org.IdOrganizacion
					inner join GrupoEmpresarial	ge	 on org.IdGrupoEmpresarial = ge.IdGrupoEmpresarial
					inner join Tercero ter			 on us.IdTercero=ter.IdTercero
	where (ge.IdGrupoEmpresarial = @IdGrupoEmpresarial or -99 = @IdGrupoEmpresarial)
	and	  (org.IdOrganizacion	= @IdOrganizacion or -99 = @IdOrganizacion)
	and	  (  upper(us.Email) like upper('%' + @filtro +  '%')
		  or upper(us.Alias) like upper('%' + @filtro +  '%')
		  or upper(ter.Nombre)  like upper('%' + @filtro +  '%')
		  or upper(ter.Nombre2) like upper('%' + @filtro +  '%'));
END;
--exec [spu_GetUsuario] 1,1,'ye'
GO
/****** Object:  StoredProcedure [dbo].[spu_InsertUpdateTercero]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex
-- Create date: 02/07/2019
-- Description:	MANTENIMIENTO TERCERO
-- =============================================
CREATE PROCEDURE [dbo].[spu_InsertUpdateTercero]
 @xml xml,
 @accion char(1)
AS
BEGIN
	SET NOCOUNT ON;
	IF @accion = 'I'
		INSERT INTO [dbo].[Tercero]
           ([NroIdentificacion]
           ,[Nombre]
           ,[Nombre2]
           ,[NroReferencia]
           ,[EsCliente]
           ,[EsProveedor]
           ,[EsEmpleado]
           ,[EsProspecto]
           ,[EsRepreComercial]
           ,[IdRepreComercial]
           ,[IdEstadoCredito]
           ,[LimiteCredito]
           ,[SaldoActual]
           ,[RutaLogo]
           ,[IdListaPrecio]
           ,[FecRegistro]
           ,[Estado]
           ,[Cumpleanos]
           ,[Comentarios]
           ,[IdGrupoEmpresarial]
           ,[IdOrganizacion])
     SELECT
           tercero.value('(NroIdentificacion/text())[1]','varchar(50)') AS NroIdentificacion,
           tercero.value('(Nombre/text())[1]','varchar(200)') AS Nombre,
           tercero.value('(Nombre2/text())[1]','varchar(200)') AS Nombre2,
           tercero.value('(NroReferencia/text())[1]','varchar(50)') AS NroReferencia,
           tercero.value('(EsCliente/text())[1]','bit') AS EsCliente,
           tercero.value('(EsProveedor/text())[1]','bit') AS EsProveedor,
           tercero.value('(EsEmpleado/text())[1]','bit') AS EsEmpleado,
           tercero.value('(EsProspecto/text())[1]','bit') AS EsProspecto,
           tercero.value('(EsRepreComercial/text())[1]','bit') AS EsRepreComercial,
           tercero.value('(IdRepreComercial/text())[1]','int') AS IdRepreComercial,
           tercero.value('(IdEstadoCredito/text())[1]','int') AS IdEstadoCredito,
           tercero.value('(LimiteCredito/text())[1]','decimal(18,0)') AS LimiteCredito,
           tercero.value('(SaldoActual/text())[1]','decimal(18,0)') AS SaldoActual,
           tercero.value('(RutaLogo/text())[1]','varchar(200)') AS RutaLogo,
           tercero.value('(IdListaPrecio/text())[1]','int') AS IdListaPrecio,
           tercero.value('(FecRegistro/text())[1]','datetime') AS FecRegistro,
           tercero.value('(Estado/text())[1]','bit') AS Estado,
           tercero.value('(Cumpleanos/text())[1]','date') AS Cumpleanos,
           tercero.value('(Comentarios/text())[1]','varchar(200)') AS Comentarios,
           tercero.value('(IdGrupoEmpresarial/text())[1]','int') AS IdGrupoEmpresarial,
           tercero.value('(IdOrganizacion/text())[1]','int') AS IdOrganizacion
	FROM
			@xml.nodes('/ETercero')AS TEMPTABLE(tercero);
	IF @accion = 'U'

		UPDATE [dbo].[Tercero]
		SET [NroIdentificacion] = @xml.value('/ETercero[1]/NroIdentificacion[1]', 'varchar(50)')
			,[Nombre] = @xml.value('/ETercero[1]/Nombre[1]', 'varchar(200)')
			,[Nombre2] = @xml.value('/ETercero[1]/Nombre2[1]', 'varchar(200)')
			,[NroReferencia] = @xml.value('/ETercero[1]/NroReferencia[1]', 'varchar(50)')
			,[EsCliente] = @xml.value('/ETercero[1]/EsCliente[1]', 'bit')
			,[EsProveedor] = @xml.value('/ETercero[1]/EsProveedor[1]', 'bit')
			,[EsEmpleado] = @xml.value('/ETercero[1]/EsEmpleado[1]', 'bit')
			,[EsProspecto] = @xml.value('/ETercero[1]/EsProspecto[1]', 'bit')
			,[EsRepreComercial] = @xml.value('/ETercero[1]/EsRepreComercial[1]', 'bit')
			,[IdRepreComercial] = @xml.value('/ETercero[1]/IdRepreComercial[1]', 'int')
			,[IdEstadoCredito] = @xml.value('/ETercero[1]/IdEstadoCredito[1]', 'int')
			,[LimiteCredito] = @xml.value('/ETercero[1]/LimiteCredito[1]', 'decimal(18,0)')
			,[SaldoActual] = @xml.value('/ETercero[1]/SaldoActual[1]', 'decimal(18,0)')
			,[RutaLogo] = @xml.value('/ETercero[1]/RutaLogo[1]', 'varchar(200)')
			,[IdListaPrecio] = @xml.value('/ETercero[1]/IdListaPrecio[1]', 'int')
			,[FecRegistro] = @xml.value('/ETercero[1]/FecRegistro[1]', 'datetime')
			,[Estado] = @xml.value('/ETercero[1]/Estado[1]', 'bit')
			,[Cumpleanos] = @xml.value('/ETercero[1]/Cumpleanos[1]', 'date')
			,[Comentarios] = @xml.value('/ETercero[1]/Comentarios[1]', 'varchar(200)')
			,[IdGrupoEmpresarial] = @xml.value('/ETercero[1]/IdGrupoEmpresarial[1]', 'int')
			,[IdOrganizacion] = @xml.value('/ETercero[1]/IdOrganizacion[1]', 'int')
		WHERE 
			IdTercero = @xml.value('/EUsuario[1]/IdTercero[1]', 'INT');
END;
/*
select * from [Tercero]

*/
GO
/****** Object:  StoredProcedure [dbo].[spu_InsertUpdateUsuario]    Script Date: 06/10/2019 1:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alex
-- Create date: 28/06/2019
-- Description:	MANTENIMIENTO USUARIOS
-- =============================================
CREATE PROCEDURE [dbo].[spu_InsertUpdateUsuario]
 @xml xml,
 @accion char(1)
AS
BEGIN
	SET NOCOUNT ON;
	IF @accion = 'I'
		INSERT INTO [dbo].[Usuario]
           ([IdTercero]
           ,[Alias]
           ,[Descripcion]
           ,[Email]
           ,[Clave]
           ,[IdSaludo]
           ,[IdTipoNotificacion]
           ,[FechaVerificacionEmail]
           ,[FechaBloqueoCuenta]
           ,[Bloqueado]
           ,[NoExpira]
           ,[ConteoIngresosFallidos]
           ,[FechaUltimoIngreso]
           ,[FechaCambioContrasenia]
           ,[PinUsuario]
		   )
		   SELECT 
			usuario.value('(IdTercero/text())[1]','int') AS IdTercero, 
			usuario.value('(Alias/text())[1]','varchar(50)') AS Alias,
			usuario.value('(Descripcion/text())[1]','varchar(50)') AS Descripcion,
			usuario.value('(Email/text())[1]','varchar(100)') AS Email,
			usuario.value('(Clave/text())[1]','varchar(150)') AS Clave, 
			usuario.value('(IdSaludo/text())[1]','int') AS IdSaludo,
			usuario.value('(IdTipoNotificacion/text())[1]','int') AS IdTipoNotificacion,
			usuario.value('(FechaVerificacionEmail/text())[1]','datetime') AS FechaVerificacionEmail,
			usuario.value('(FechaBloqueoCuenta/text())[1]','datetime') AS FechaBloqueoCuenta,
			usuario.value('(Bloqueado/text())[1]','bit') AS Bloqueado,
			usuario.value('(NoExpira/text())[1]','bit') AS NoExpira,
			usuario.value('(ConteoIngresosFallidos/text())[1]','int') AS ConteoIngresosFallidos,
			usuario.value('(FechaUltimoIngreso/text())[1]','datetime') AS FechaUltimoIngreso,
			usuario.value('(FechaCambioContrasenia/text())[1]','datetime') AS FechaCambioContrasenia,
			usuario.value('(PinUsuario/text())[1]','varchar(50)') AS PinUsuario
			FROM
			@xml.nodes('/EUsuario')AS TEMPTABLE(usuario);
			--@xml.nodes('/ArrayOfEUsuario/EUsuario')AS TEMPTABLE(usuario);
	IF @accion = 'U'
		UPDATE [dbo].[Usuario]
		SET [IdTercero] = @xml.value('/EUsuario[1]/IdTercero[1]', 'INT')
			,[Alias] = @xml.value('/EUsuario[1]/Alias[1]', 'varchar(100)')
			,[Descripcion] = @xml.value('/EUsuario[1]/Descripcion[1]', 'varchar(50)')
			,[Email] = @xml.value('/EUsuario[1]/Email[1]', 'varchar(100)')
			,[Clave] = @xml.value('/EUsuario[1]/Clave[1]', 'varchar(150)')
			--,[IdSaludo] = @xml.value('/ArrayOfEUsuario[1]/EUsuario[1]/IdSaludo[1]', 'int')
			--,[IdTipoNotificacion] = @xml.value('/ArrayOfEUsuario[1]/EUsuario[1]/IdTipoNotificacion[1]', 'int')
			,[FechaVerificacionEmail] = @xml.value('/EUsuario[1]/FechaVerificacionEmail[1]', 'datetime')
			,[FechaBloqueoCuenta] = @xml.value('/EUsuario[1]/FechaBloqueoCuenta[1]', 'datetime')
			,[Bloqueado] = @xml.value('/EUsuario[1]/Bloqueado[1]', 'bit')
			,[NoExpira] = @xml.value('/EUsuario[1]/NoExpira[1]', 'bit')
			--,[ConteoIngresosFallidos] = <ConteoIngresosFallidos, int,>
			--,[FechaUltimoIngreso] = <FechaUltimoIngreso, datetime,>
			--,[FechaCambioContrasenia] = <FechaCambioContrasenia, datetime,>
			,[PinUsuario] = @xml.value('/EUsuario[1]/PinUsuario[1]', 'varchar(50)')
		WHERE IdUsuario = @xml.value('/EUsuario[1]/IdUsuario[1]', 'INT');
END;
/*
select * from [Usuario]

exec spu_InsertUpdateUsuario N'<?xml version="1.0"?>
<EUsuario xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <IdUsuario>0</IdUsuario>
    <IdTercero>1</IdTercero>
    <Alias>Alias 001</Alias>
    <Email>001@gmail.com</Email>
    <Clave>Clave Nueva 2</Clave>
    <IdSaludo xsi:nil="true" />
    <IdTipoNotificacion xsi:nil="true" />
    <FechaVerificacionEmail xsi:nil="true" />
    <FechaBloqueoCuenta xsi:nil="true" />
    <Bloqueado xsi:nil="true" />
    <NoExpira xsi:nil="true" />
    <ConteoIngresosFallidos xsi:nil="true" />
    <FechaUltimoIngreso xsi:nil="true" />
    <FechaCambioContrasenia xsi:nil="true" />
</EUsuario>','I'
*/
GO
