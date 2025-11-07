CREATE TABLE [dbo].[TipoNumero] (
  [ID] [int] IDENTITY,
  [Tipo] [varchar](15) NOT NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([ID])
)
ON [PRIMARY]
GO