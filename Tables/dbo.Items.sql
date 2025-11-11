CREATE TABLE [dbo].[Items] (
  [ID] [bigint] IDENTITY,
  [IDVenta] [bigint] NOT NULL,
  [IDProducto] [bigint] NOT NULL,
  [Cantidad] [int] NOT NULL,
  [PrecioUnitario] [decimal] NOT NULL,
  [PrecioTotal] [decimal] NOT NULL,
  [IDCondicionIVA] [smallint] NOT NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([ID])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [Items_index_0]
  ON [dbo].[Items] ([IDVenta], [IDProducto])
  ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[TR_Items_EgresoStock]
ON [Items]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO MovimientosStock (IDProducto, TipoMovimiento, Cantidad, Motivo)
    SELECT 
        i.IDProducto,
        'Egreso',
        i.Cantidad,
        'Venta (Items)'
    FROM inserted i;
END;
GO

ALTER TABLE [dbo].[Items] WITH NOCHECK
  ADD FOREIGN KEY ([IDCondicionIVA]) REFERENCES [dbo].[CondicionIVA] ([ID])
GO

ALTER TABLE [dbo].[Items] WITH NOCHECK
  ADD FOREIGN KEY ([IDCondicionIVA]) REFERENCES [dbo].[CondicionIVA] ([ID])
GO