CREATE TABLE [dbo].[TipoDeResponsables] (
  [ID] [smallint] IDENTITY,
  [Nombre] [varchar](100) NOT NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([ID])
)
ON [PRIMARY]
GO