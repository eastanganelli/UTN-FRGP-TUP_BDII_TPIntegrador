CREATE TABLE [dbo].[Proveedores] (
  [ID] [bigint] IDENTITY,
  [IDTipoResponsable] [smallint] NOT NULL,
  [Nombre] [varchar](100) NOT NULL,
  [Teléfono] [varchar](15) NOT NULL,
  [Dirección] [varchar](150) NOT NULL,
  [Rubro] [varchar](50) NOT NULL,
  [Alta] [bit] NOT NULL,
  [Email] [varchar](50) NOT NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([ID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Proveedores] WITH NOCHECK
  ADD FOREIGN KEY ([IDTipoResponsable]) REFERENCES [dbo].[TipoDeResponsables] ([ID])
GO

ALTER TABLE [dbo].[Proveedores] WITH NOCHECK
  ADD FOREIGN KEY ([IDTipoResponsable]) REFERENCES [dbo].[TipoDeResponsables] ([ID])
GO