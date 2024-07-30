USE [altaclientes]
GO

/****** Object:  Table [dbo].[cat_clientes]    Script Date: 14/06/2021
09:00:57 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[cat_clientes](
[num_cliente] [int] NOT NULL,
[nom_cliente] [varchar](50) NOT NULL,
[telefono] [nchar](12) NOT NULL DEFAULT 0,
[fec_nacimiento] [date] NOT NULL,
[domicilio] [varchar](50) NOT NULL DEFAULT '',
[num_interior] [int] NOT NULL DEFAULT 0,
[fec_registro] [date] NOT NULL,
[fec_modification] [date] NOT NULL,
[opc_activo] [int] NOT NULL,
 CONSTRAINT [PK_cat_clientes] PRIMARY KEY CLUSTERED
(
[num_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY =
OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[cat_clientes] ADD  CONSTRAINT
[DF_cat_clientes_num_cliente]  DEFAULT ((0)) FOR [num_cliente]
GO

ALTER TABLE [dbo].[cat_clientes] ADD  CONSTRAINT
[DF_cat_clientes_nom_cliente]  DEFAULT ('') FOR [nom_cliente]
GO

ALTER TABLE [dbo].[cat_clientes] ADD  CONSTRAINT
[DF_cat_clientes_fec_nacimiento]  DEFAULT ('1900-01-01') FOR
[fec_nacimiento]
GO

ALTER TABLE [dbo].[cat_clientes] ADD  CONSTRAINT
[DF_cat_clientes_fec_registro]  DEFAULT (getdate()) FOR [fec_registro]
GO

ALTER TABLE [dbo].[cat_clientes] ADD  CONSTRAINT
[DF_cat_clientes_fec_modification]  DEFAULT ('1900-01-01') FOR
[fec_modification]
GO

ALTER TABLE [dbo].[cat_clientes] ADD  CONSTRAINT
[DF_cat_clientes_opc_activo]  DEFAULT (1) FOR [opc_activo]
GO