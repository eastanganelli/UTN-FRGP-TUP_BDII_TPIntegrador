CREATE TABLE [dbo].[Productos] (
  [ID] [bigint] IDENTITY,
  [Nombre] [varchar](100) NOT NULL,
  [Descripcion] [varchar](100) NOT NULL,
  [Precio] [decimal] NOT NULL,
  [Stock] [int] NOT NULL,
  [IDCategoria] [bigint] NOT NULL,
  PRIMARY KEY CLUSTERED ([ID]),
  UNIQUE ([ID])
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[TR_Productos_ActualizarHistorialPrecio]
ON [Productos]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF UPDATE(Precio)
    BEGIN
        UPDATE HistorialPrecios
        SET FechaHasta = GETDATE()
        WHERE IDProducto IN (SELECT ID FROM deleted)
        AND FechaHasta IS NULL;

        INSERT INTO HistorialPrecios (IDProducto, Precio, FechaDesde, FechaHasta)
        SELECT
            i.ID,
            i.Precio,
            GETDATE(),
            NULL
        FROM inserted i;
    END
END;
GO

ALTER TABLE [dbo].[Productos]
  ADD CONSTRAINT [FK_Productos_Categorias] FOREIGN KEY ([IDCategoria]) REFERENCES [dbo].[Categorias] ([ID])
GO