CREATE TABLE [dbo].[MovimientosStock] (
  [ID] [bigint] IDENTITY,
  [IDProducto] [bigint] NOT NULL,
  [TipoMovimiento] [varchar](20) NOT NULL,
  [Cantidad] [int] NOT NULL,
  [Fecha] [datetime] NOT NULL DEFAULT (getdate()),
  [Motivo] [varchar](100) NULL,
  PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[MovimientosStock]
  ADD CONSTRAINT [FK_MovimientosStock_Producto] FOREIGN KEY ([IDProducto]) REFERENCES [dbo].[Productos] ([ID])
GO