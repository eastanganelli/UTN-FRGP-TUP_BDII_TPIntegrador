CREATE TABLE [dbo].[Telefonos] (
  [ID] [int] IDENTITY,
  [NroTelefono] [varchar](20) NOT NULL,
  [TipoNro] [int] NOT NULL,
  [CodArea] [varchar](20) NOT NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([ID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Telefonos] WITH NOCHECK
  ADD FOREIGN KEY ([TipoNro]) REFERENCES [dbo].[TipoNumero] ([ID])
GO

ALTER TABLE [dbo].[Telefonos] WITH NOCHECK
  ADD FOREIGN KEY ([TipoNro]) REFERENCES [dbo].[TipoNumero] ([ID])
GO