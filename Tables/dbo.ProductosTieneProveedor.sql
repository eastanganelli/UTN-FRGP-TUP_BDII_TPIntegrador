CREATE TABLE [dbo].[ProductosTieneProveedor] (
  [ID] [bigint] NOT NULL,
  [IDProducto] [bigint] IDENTITY,
  [IDProveedor ] [bigint] NOT NULL,
  [PrecioProveedor] [decimal] NOT NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([ID])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [ProductosTieneProveedor_index_0]
  ON [dbo].[ProductosTieneProveedor] ([IDProducto], [IDProveedor ])
  ON [PRIMARY]
GO