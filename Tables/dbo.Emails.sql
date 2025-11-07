CREATE TABLE [dbo].[Emails] (
  [ID] [bigint] NOT NULL,
  [Email] [varchar](50) NOT NULL,
  [TipoEmail] [int] NOT NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([ID])
)
ON [PRIMARY]
GO