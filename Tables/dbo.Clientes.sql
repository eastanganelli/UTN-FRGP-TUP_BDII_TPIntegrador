CREATE TABLE [dbo].[Clientes] (
  [ID] [bigint] IDENTITY,
  [IDTipoResponsable] [smallint] NOT NULL,
  [Nombre] [varchar](100) NOT NULL,
  [Apellido] [varchar](100) NOT NULL,
  [Teléfono] [varchar](15) NOT NULL,
  [CUIT/CUIL] [varchar](15) NOT NULL,
  [Alta] [bit] NULL,
  [Email] [varchar](255) NOT NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([ID])
)
ON [PRIMARY]
GO