CREATE TABLE [dbo].[Proveedor_Tiene_Emails] (
  [ID] [bigint] IDENTITY,
  [IDProveedor] [bigint] NOT NULL,
  [IDEmail] [bigint] NOT NULL,
  [Principal] [bit] NOT NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([ID])
)
ON [PRIMARY]
GO

CREATE INDEX [Proveedor_Tiene_Email_index_0]
  ON [dbo].[Proveedor_Tiene_Emails] ([IDProveedor], [IDEmail])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[Proveedor_Tiene_Emails] WITH NOCHECK
  ADD FOREIGN KEY ([IDProveedor]) REFERENCES [dbo].[Proveedores] ([ID])
GO

ALTER TABLE [dbo].[Proveedor_Tiene_Emails] WITH NOCHECK
  ADD FOREIGN KEY ([IDProveedor]) REFERENCES [dbo].[Proveedores] ([ID])
GO