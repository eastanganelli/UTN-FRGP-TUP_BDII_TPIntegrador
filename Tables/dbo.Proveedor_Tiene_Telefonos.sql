CREATE TABLE [dbo].[Proveedor_Tiene_Telefonos] (
  [Telefono] [char](20) NOT NULL,
  [IDProveedor] [bigint] NOT NULL,
  [IDEtiqueta] [int] NULL,
  PRIMARY KEY CLUSTERED ([Telefono])
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[TR_ValidarTelefono]
ON [dbo].[Proveedor_Tiene_Telefonos]
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM INSERTED i
        WHERE i.Telefono IS NULL
           OR TRIM(i.Telefono) = ''
           OR i.Telefono LIKE '%[^0-9 -()]%' 
           OR LEN(REPLACE(REPLACE(REPLACE(REPLACE(i.Telefono, ' ', ''), '-', ''), '(', ''), ')', '')) < 7 
    )
    BEGIN
        RAISERROR('Formato de número de teléfono inválido. Use solo dígitos, espacios, guiones o paréntesis, y debe tener al menos 7 dígitos.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END
END
GO

ALTER TABLE [dbo].[Proveedor_Tiene_Telefonos]
  ADD CONSTRAINT [FK_Proveedor_Tiene_Telefonos] FOREIGN KEY ([IDProveedor]) REFERENCES [dbo].[Proveedores] ([ID])
GO

ALTER TABLE [dbo].[Proveedor_Tiene_Telefonos]
  ADD CONSTRAINT [FK_Proveedor_TipoNumero] FOREIGN KEY ([IDEtiqueta]) REFERENCES [dbo].[Etiquetas] ([ID])
GO