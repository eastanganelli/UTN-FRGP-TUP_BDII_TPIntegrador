CREATE TABLE [dbo].[Proveedor_Tiene_Telefonos] (
  [ID] [int] IDENTITY,
  [IDProveedor] [bigint] NOT NULL,
  [IDTelefono] [int] NOT NULL,
  [Principal] [bit] NOT NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([ID])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [Proveedor_Tiene_Telefonos_index_0]
  ON [dbo].[Proveedor_Tiene_Telefonos] ([IDProveedor], [IDTelefono])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[Proveedor_Tiene_Telefonos] WITH NOCHECK
  ADD FOREIGN KEY ([IDProveedor]) REFERENCES [dbo].[Proveedores] ([ID])
GO

ALTER TABLE [dbo].[Proveedor_Tiene_Telefonos] WITH NOCHECK
  ADD FOREIGN KEY ([IDProveedor]) REFERENCES [dbo].[Proveedores] ([ID])
GO

ALTER TABLE [dbo].[Proveedor_Tiene_Telefonos] WITH NOCHECK
  ADD FOREIGN KEY ([IDTelefono]) REFERENCES [dbo].[Telefonos] ([ID])
GO

ALTER TABLE [dbo].[Proveedor_Tiene_Telefonos] WITH NOCHECK
  ADD FOREIGN KEY ([IDTelefono]) REFERENCES [dbo].[Telefonos] ([ID])
GO