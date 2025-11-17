CREATE TABLE [dbo].[Proveedor_Tiene_Emails] (
  [Correo] [char](100) NOT NULL,
  [IDProveedor] [bigint] NOT NULL,
  [IDEtiqueta] [int] NOT NULL,
  PRIMARY KEY CLUSTERED ([Correo])
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[TR_ValidarCorreo]
ON [dbo].[Proveedor_Tiene_Emails]
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM INSERTED i
        WHERE i.Correo IS NULL 
           OR TRIM(i.Correo) = '' 
           OR i.Correo NOT LIKE '%@%.%'
    )
    BEGIN
        RAISERROR('El formato de correo electrónico es inválido o el campo está vacío.', 16, 1);
        ROLLBACK TRANSACTION;
        
        RETURN;
    END
END
GO

ALTER TABLE [dbo].[Proveedor_Tiene_Emails]
  ADD CONSTRAINT [FK_Proveedor_Tiene_Emails] FOREIGN KEY ([IDProveedor]) REFERENCES [dbo].[Proveedores] ([ID])
GO

ALTER TABLE [dbo].[Proveedor_Tiene_Emails]
  ADD CONSTRAINT [FK_Proveedor_Tiene_Emails_Etiqueta] FOREIGN KEY ([IDEtiqueta]) REFERENCES [dbo].[Etiquetas] ([ID]) ON UPDATE CASCADE
GO