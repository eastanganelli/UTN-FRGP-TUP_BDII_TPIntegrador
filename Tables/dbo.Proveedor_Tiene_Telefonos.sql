CREATE TABLE [dbo].[Proveedor_Tiene_Telefonos] (
  [Telefono] [char](20) NOT NULL,
  [IDProveedor] [bigint] NOT NULL,
  [Tipo] [char](20) NOT NULL,
  PRIMARY KEY CLUSTERED ([Telefono])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Proveedor_Tiene_Telefonos]
  ADD CONSTRAINT [FK_Proveedor_Tiene_Telefonos] FOREIGN KEY ([IDProveedor]) REFERENCES [dbo].[Proveedores] ([ID])
GO