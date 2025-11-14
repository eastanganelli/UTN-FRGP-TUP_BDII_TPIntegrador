CREATE TABLE [dbo].[Etiquetas] (
  [ID] [int] IDENTITY,
  [Etiqueta] [varchar](15) NOT NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([ID])
)
ON [PRIMARY]
GO