CREATE TABLE [dbo].[HistorialPrecios] (
  [ID] [int] IDENTITY,
  [IDProducto] [bigint] NOT NULL,
  [Precio] [decimal](18, 2) NOT NULL,
  [FechaDesde] [datetime] NOT NULL DEFAULT (getdate()),
  [FechaHasta] [datetime] NULL,
  PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[HistorialPrecios]
  ADD CONSTRAINT [FK_HistorialPrecios_Producto] FOREIGN KEY ([IDProducto]) REFERENCES [dbo].[Productos] ([ID])
GO