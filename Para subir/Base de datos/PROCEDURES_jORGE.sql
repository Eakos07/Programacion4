-----------------------------------------------------------------------------------------------------------------------------
-- **************************************************** INSERTS **************************************************** --
-----------------------------------------------------------------------------------------------------------------------------
USE [Db_Proyecto_Progra4]
GO

CREATE PROCEDURE SP_INSERTAR_ESTADO
(
	@Id_Estado INT,
	@Descripcion NVARCHAR(20)
)
AS
INSERT INTO [Sch_General].[T_Estados]
(
	[Id_Estado],
	[Descripcion]
)

VALUES
(
	@Id_Estado,
	@Descripcion
)
GO

CREATE PROCEDURE SP_INSERTAR_MONEDA
(
	@Id_Moneda INT,
	@Nombre NVARCHAR(20),
	@Id_Estado INT,
	@Codigo_Pais INT
)
AS
INSERT INTO [Sch_General].[T_Moneda]
(
	[Id_Moneda],
	[Nombre],
	[Id_Estado],
	[Codigo_Pais]
)

VALUES
(
	@Id_Moneda,
	@Nombre,
	@Id_Estado,
	@Codigo_Pais
)
GO

CREATE PROCEDURE SP_INSERTAR_PAIS
(
	@Codigo_Pais INT,
	@Nombre NVARCHAR(20),
	@Id_Estado INT
)
AS
INSERT INTO [Sch_General].[T_Pais]
(
	[Codigo_Pais],
	[Nombre],
	[Id_Estado]
)

VALUES
(
	@Codigo_Pais,
	@Nombre,
	@Id_Estado
)
GO

CREATE PROCEDURE SP_INSERTAR_ARTICULO
(
	@Id_Articulo INT,
	@Nombre NVARCHAR(20),
	@Id_Estado INT,
	@Id_Proveedor INT,
	@Id_Categoria INT
)
AS
INSERT INTO [Sch_General].[T_Articulo]
(
	[Id_Articulo],
	[Nombre],
	[Id_Estado],
	[Id_Proveedor],
	[Id_Categoria]
)

VALUES
(
	@Id_Articulo,
	@Nombre,
	@Id_Estado,
	@Id_Proveedor,
	@Id_Categoria
)
GO

CREATE PROCEDURE SP_INSERTAR_CATEGORIA
(
	@Id_Categoria INT,
	@Nombre NVARCHAR(20),
	@Descripcion NVARCHAR(20),
	@Id_Estado INT,
	@Id_Articulo INT,
	@Id_Inventario INT
)
AS
INSERT INTO [Sch_General].[T_Categoria]
(
	[Id_Categoria],
	[Nombre],
	[Descripcion],
	[Id_Estado],
	[Id_Articulo],
	[Id_Inventario]
)

VALUES
(
	@Id_Categoria,
	@Nombre,
	@Descripcion,
	@Id_Estado,
	@Id_Articulo,
	@Id_Inventario
)
GO

CREATE PROCEDURE SP_INSERTAR_DEPARTAMENTO
(
	@Id_Departamento INT,
	@Nombre NVARCHAR(20),
	@Descripcion NVARCHAR(20),
	@Id_Estado INT
)
AS
INSERT INTO [Sch_General].[T_Departamento]
(
	[Id_Departamento],
	[Nombre],
	[Descripcion],
	[Id_Estado]
)

VALUES
(
	@Id_Departamento,
	@Nombre,
	@Descripcion,
	@Id_Estado
)
GO

-----------------------------------------------------------------------------------------------------------------------------
-- **************************************************** UPDATE **************************************************** --
-----------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE SP_MODIFICAR_ESTADO
(
	@Id_Estado INT,
	@Descripcion NVARCHAR(20)
)
AS
UPDATE [Sch_General].[T_Estados]

SET
	[Descripcion] = @Descripcion

WHERE [Id_Estado] = @Id_Estado

GO

CREATE PROCEDURE SP_MODIFICAR_MONEDA
(
	@Id_Moneda INT,
	@Nombre NVARCHAR(20),
	@Id_Estado INT,
	@Codigo_Pais INT
)
AS
UPDATE [Sch_General].[T_Moneda]

SET


	[Nombre] = @Nombre,
	[Id_Estado] = @Id_Estado,
	[Codigo_Pais] = @Codigo_Pais

WHERE [Id_Moneda] = @Id_Moneda

GO

CREATE PROCEDURE SP_MODIFICAR_PAIS
(
	@Codigo_Pais INT,
	@Nombre NVARCHAR(20),
	@Id_Estado INT
)
AS
UPDATE [Sch_General].[T_Pais]

SET

	[Nombre] = @Nombre,
	[Id_Estado] = @Id_Estado

WHERE [Codigo_Pais] = @Codigo_Pais

GO

CREATE PROCEDURE SP_MODIFICAR_ARTICULO
(
	@Id_Articulo INT,
	@Nombre NVARCHAR(20),
	@Id_Estado INT,
	@Id_Proveedor INT,
	@Id_Categoria INT
)
AS

UPDATE [Sch_General].[T_Articulo]

SET

	[Nombre] = @Nombre,
	[Id_Estado] = @Id_Estado,
	[Id_Proveedor] = @Id_Proveedor,
	[Id_Categoria] = @Id_Categoria

WHERE [Id_Articulo] = @Id_Articulo

GO

CREATE PROCEDURE SP_MODIFICAR_CATEGORIA
(
	@Id_Categoria INT,
	@Nombre NVARCHAR(20),
	@Descripcion NVARCHAR(20),
	@Id_Estado INT,
	@Id_Articulo INT,
	@Id_Inventario INT
)
AS
UPDATE [Sch_General].[T_Categoria]

SET

	[Nombre] = @Nombre,
	[Descripcion] = @Descripcion,
	[Id_Estado] = @Id_Estado,
	[Id_Articulo] = @Id_Articulo,
	[Id_Inventario] = @Id_Inventario

WHERE [Id_Categoria] = @Id_Categoria
GO

CREATE PROCEDURE SP_MODIFICAR_DEPARTAMENTO
(
	@Id_Departamento INT,
	@Nombre NVARCHAR(20),
	@Descripcion NVARCHAR(20),
	@Id_Estado INT
)
AS
UPDATE [Sch_General].[T_Departamento]

SET
	
	[Nombre] = @Nombre,
	[Descripcion] = @Descripcion,
	[Id_Estado] = @Id_Estado

WHERE [Id_Departamento] = @Id_Departamento

GO

-----------------------------------------------------------------------------------------------------------------------------
-- **************************************************** DELETED **************************************************** --
-----------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE SP_ELIMINARAR_ESTADO
(
	@Id_Estado INT
)
AS
DELETE FROM [Sch_General].[T_Estados] WHERE [Id_Estado] = @Id_Estado
GO

CREATE PROCEDURE SP_ELIMINAR_MONEDA
(
	@Id_Moneda INT
)
AS
DELETE FROM [Sch_General].[T_Moneda] WHERE [Id_Moneda] = @Id_Moneda
GO

CREATE PROCEDURE SP_ELIMINAR_PAIS
(
	@Codigo_Pais INT
)
AS
DELETE FROM [Sch_General].[T_Pais] WHERE [Codigo_Pais] = @Codigo_Pais
GO

CREATE PROCEDURE SP_ELIMINAR_ARTICULO
(
	@Id_Articulo INT
)
AS

DELETE FROM [Sch_General].[T_Articulo] WHERE [Id_Articulo] = @Id_Articulo
GO

CREATE PROCEDURE SP_ELIMINAR_CATEGORIA
(
	@Id_Categoria INT
)
AS
DELETE FROM [Sch_General].[T_Categoria] WHERE [Id_Categoria] = @Id_Categoria
GO

CREATE PROCEDURE SP_ELIMINAR_DEPARTAMENTO
(
	@Id_Departamento INT
)
AS
DELETE FROM [Sch_General].[T_Departamento] WHERE [Id_Departamento] = @Id_Departamento
GO

-----------------------------------------------------------------------------------------------------------------------------
-- **************************************************** LIST **************************************************** --
-----------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE SP_LISTAR_ESTADO

AS

SELECT
	[Id_Estado]
	[Descripcion]

FROM [Sch_General].[T_Estados]
GO

CREATE PROCEDURE SP_LISTAR_MONEDA

AS

SELECT

	[Id_Moneda],
	[Nombre],
	[Id_Estado],
	[Codigo_Pais]

FROM [Sch_General].[T_Moneda]
GO

CREATE PROCEDURE SP_LISTAR_PAIS

AS

SELECT
	[Codigo_Pais],
	[Nombre],
	[Id_Estado]

FROM [Sch_General].[T_Pais]
GO

CREATE PROCEDURE SP_LISTAR_ARTICULO

AS

SELECT
	[Id_Articulo],
	[Nombre],
	[Id_Estado],
	[Id_Proveedor],
	[Id_Categoria]

FROM [Sch_General].[T_Articulo]
GO

CREATE PROCEDURE SP_LISTAR_CATEGORIA

AS

SELECT
	[Id_Categoria],
	[Nombre],
	[Descripcion],
	[Id_Estado],
	[Id_Articulo],
	[Id_Inventario]

FROM [Sch_General].[T_Categoria]
GO

CREATE PROCEDURE SP_LISTAR_DEPARTAMENTO

AS

SELECT
	[Id_Departamento],
	[Nombre],
	[Descripcion],
	[Id_Estado]

FROM [Sch_General].[T_Departamento]
GO

-----------------------------------------------------------------------------------------------------------------------------
-- **************************************************** FILT **************************************************** --
-----------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE SP_FILTRAR_ESTADO
(
	@Id_Estado INT
)
AS

SELECT
	[Id_Estado]
	[Descripcion]

FROM [Sch_General].[T_Estados] WHERE ([Id_Estado] LIKE '%' + @Id_Estado + '%')
GO

CREATE PROCEDURE SP_FILTRAR_MONEDA
(
	@Id_Moneda INT
)

AS

SELECT

	[Id_Moneda],
	[Nombre],
	[Id_Estado],
	[Codigo_Pais]

FROM [Sch_General].[T_Moneda] WHERE ([Id_Moneda] LIKE '%' + @Id_Moneda + '%' )
GO

CREATE PROCEDURE SP_FILTRAR_PAIS
(
	@Codigo_Pais INT
)
AS

SELECT
	[Codigo_Pais],
	[Nombre],
	[Id_Estado]

FROM [Sch_General].[T_Pais] WHERE ([Codigo_Pais] LIKE '%' + @Codigo_Pais + '%' )
GO

CREATE PROCEDURE SP_FILTRAR_ARTICULO
(
	@Id_Articulo INT
)
AS

SELECT
	[Id_Articulo],
	[Nombre],
	[Id_Estado],
	[Id_Proveedor],
	[Id_Categoria]

FROM [Sch_General].[T_Articulo] WHERE ([Id_Articulo] LIKE'%' + @Id_Articulo + '%' )
GO

CREATE PROCEDURE SP_FILTRAR_CATEGORIA
(
	@Id_Categoria INT
)
AS

SELECT
	[Id_Categoria],
	[Nombre],
	[Descripcion],
	[Id_Estado],
	[Id_Articulo],
	[Id_Inventario]

FROM [Sch_General].[T_Categoria] WHERE ([Id_Categoria] LIKE '%' + @Id_Categoria + '%')
GO

CREATE PROCEDURE SP_FILTRAR_DEPARTAMENTO
(
	@Id_Departamento INT
)
AS

SELECT
	[Id_Departamento],
	[Nombre],
	[Descripcion],
	[Id_Estado]

FROM [Sch_General].[T_Departamento] WHERE ([Id_Departamento] LIKE '%' + @Id_Departamento + '%')
GO