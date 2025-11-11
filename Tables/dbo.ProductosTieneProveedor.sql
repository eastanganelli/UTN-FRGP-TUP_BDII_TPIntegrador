CREATE TABLE [dbo].[ProductosTieneProveedor] (
  [IDProducto] [bigint] IDENTITY,
  [IDProveedor ] [bigint] NOT NULL,
  [PrecioProveedor] [decimal] NOT NULL,
  CONSTRAINT [PK_ProductosTieneProveedor] PRIMARY KEY CLUSTERED ([IDProducto], [IDProveedor ])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductosTieneProveedor]
  ADD CONSTRAINT [FK_PTP_Producto] FOREIGN KEY ([IDProducto]) REFERENCES [dbo].[Productos] ([ID])
GO

ALTER TABLE [dbo].[ProductosTieneProveedor]
  ADD CONSTRAINT [FK_PTP_Proveedor] FOREIGN KEY ([IDProveedor ]) REFERENCES [dbo].[Proveedores] ([ID])
GO