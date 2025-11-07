CREATE TABLE [dbo].[Cliente_Tiene_Emails] (
  [ID] [bigint] IDENTITY,
  [IDCliente] [bigint] NOT NULL,
  [IDEmail] [bigint] NOT NULL,
  [Principal] [bit] NOT NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([ID])
)
ON [PRIMARY]
GO

CREATE INDEX [Cliente_Tiene_Emails_index_0]
  ON [dbo].[Cliente_Tiene_Emails] ([IDCliente], [IDEmail])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[Cliente_Tiene_Emails] WITH NOCHECK
  ADD FOREIGN KEY ([IDCliente]) REFERENCES [dbo].[Clientes] ([ID])
GO

ALTER TABLE [dbo].[Cliente_Tiene_Emails] WITH NOCHECK
  ADD FOREIGN KEY ([IDCliente]) REFERENCES [dbo].[Clientes] ([ID])
GO

ALTER TABLE [dbo].[Cliente_Tiene_Emails] WITH NOCHECK
  ADD FOREIGN KEY ([IDEmail]) REFERENCES [dbo].[Emails] ([ID])
GO

ALTER TABLE [dbo].[Cliente_Tiene_Emails] WITH NOCHECK
  ADD FOREIGN KEY ([IDEmail]) REFERENCES [dbo].[Emails] ([ID])
GO