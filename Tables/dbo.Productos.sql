CREATE TABLE [dbo].[Productos] (
  [ID] [bigint] IDENTITY,
  [Nombre] [varchar](100) NOT NULL,
  [Descripcion] [varchar](100) NOT NULL,
  [Precio] [decimal] NOT NULL,
  [Stock] [int] NOT NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([ID])
)
ON [PRIMARY]
GO