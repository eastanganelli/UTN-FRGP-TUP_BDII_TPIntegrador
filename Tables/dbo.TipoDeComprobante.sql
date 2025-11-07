CREATE TABLE [dbo].[TipoDeComprobante] (
  [ID] [smallint] IDENTITY,
  [TipoComprobante] [varchar](100) NOT NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([ID])
)
ON [PRIMARY]
GO