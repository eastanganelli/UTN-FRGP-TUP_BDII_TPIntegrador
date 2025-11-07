CREATE TABLE [dbo].[Cliente_Tiene_Telefonos] (
  [ID] [int] IDENTITY,
  [IDCliente] [bigint] NOT NULL,
  [IDTelefono] [int] NOT NULL,
  [Principal] [bit] NOT NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([ID])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [Cliente_Tiene_Telefonos_index_0]
  ON [dbo].[Cliente_Tiene_Telefonos] ([IDCliente], [IDTelefono])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[Cliente_Tiene_Telefonos] WITH NOCHECK
  ADD FOREIGN KEY ([IDCliente]) REFERENCES [dbo].[Clientes] ([ID])
GO

ALTER TABLE [dbo].[Cliente_Tiene_Telefonos] WITH NOCHECK
  ADD FOREIGN KEY ([IDCliente]) REFERENCES [dbo].[Clientes] ([ID])
GO