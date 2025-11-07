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

ALTER TABLE [dbo].[Items] WITH NOCHECK
  ADD FOREIGN KEY ([IDCondicionIVA]) REFERENCES [dbo].[CondicionIVA] ([ID])
GO

ALTER TABLE [dbo].[Items] WITH NOCHECK
  ADD FOREIGN KEY ([IDCondicionIVA]) REFERENCES [dbo].[CondicionIVA] ([ID])
GO