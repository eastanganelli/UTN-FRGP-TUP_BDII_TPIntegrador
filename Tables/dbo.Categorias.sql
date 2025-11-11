CREATE TABLE [dbo].[Categorias] (
  [ID] [bigint] IDENTITY,
  [Nombre] [varchar](100) NOT NULL,
  CONSTRAINT [Categorias_PK] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO