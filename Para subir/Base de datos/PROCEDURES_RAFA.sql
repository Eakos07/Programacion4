USE [Db_Proyecto_Progra4]
GO

--INSERTS--

CREATE PROCEDURE SP_INSERTAR_TIPO_CLIENTE
(	@Nombre Nvarchar(30),
	@Descripcion Nvarchar(30),
	@Id_Estado Int
)
AS
INSERT INTO [Sch_General].[T_Tipo_Cliente]
(	[Nombre],
	[Descripcion],
	[Id_Estado]
)
VALUES
(	@Nombre,
	@Descripcion,
	@Id_Estado
)
GO


CREATE PROCEDURE SP_INSERTAR_TIPO_EMPLEADO
(	@Nombre Nvarchar(20),
	@Descripcion Nvarchar(30),
	@Id_Estado Int
)
AS
INSERT INTO [Sch_General].[T_Tipo_Empleado]
(	[Nombre],
	[Descripcion],
	[Id_Estado]
)
VALUES
(	@Nombre,
	@Descripcion,
	@Id_Estado
)
GO


CREATE PROCEDURE SP_INSERTAR_TIPO_PAGO
(	@Nombre_Tipo_Pago Nvarchar(20),
	@Id_Estado Int 
)
AS 
INSERT INTO [Sch_General].[T_Tipo_Pago]
(
	[Nombre_Tipo_Pago],
	[Id_Estado]  
)
VALUES
(	@Nombre_Tipo_Pago,
	@Id_Estado
)
GO


CREATE PROCEDURE SP_INSERTAR_INVENTARIO
(
	@Nombre_Inventario Nvarchar(20),
	@Cantidad Int,
	@Id_Estado Int,
	@Id_Empleado Int
)
AS 
INSERT INTO [Sch_Administrativo].[T_Inventario]
(
	[Nombre_Inventario],
	[Cantidad],
	[Id_Estado],
	[Id_Empleado]
)
VALUES
(
	@Nombre_Inventario,
	@Cantidad,
	@Id_Estado,
	@Id_Empleado
)
GO

CREATE PROCEDURE SP_INSERTAR_PROVEEDOR
(
	@Nombre_Proveedor Nvarchar(20),
	@Descripcion Nvarchar(30),
	@Id_Estado Int 
)
AS
INSERT INTO [Sch_Administrativo].[T_Proveedor]
(
	[Nombre_Proveedor],
	[Descripcion],
	[Id_Estado] 
)
VALUES
(
	@Nombre_Proveedor,
	@Descripcion,
	@Id_Estado
)
GO

CREATE PROCEDURE SP_INSERTAR_ROL
(
	@Nombre Nvarchar(20),
	@Descripcion Nvarchar(30),
	@Id_Estado Int
)
AS 
INSERT INTO[Sch_Administrativo].[T_Rol]
(
	[Nombre],
	[Descripcion],
	[Id_Estado]
)
VALUES
(
	@Nombre,
	@Descripcion,
	@Id_Estado
)
GO


--UPDATES--

CREATE PROCEDURE SP_MODIFICAR_TIPO_CLIENTE
(	@Nombre Nvarchar(30),
	@Descripcion Nvarchar(30),
	@Id_Estado Int
)
AS
UPDATE [Sch_General].[T_Tipo_Cliente]
SET
	[Nombre] = @Nombre,
	[Descripcion] = @Descripcion,
	[Id_Estado] = @Id_Estado
WHERE [Id_Tipo_Cliente]  = @Id_Tipo_Cliente
GO

CREATE PROCEDURE SP_MODIFICAR_TIPO_EMPLEADO
(	@Nombre Nvarchar(20),
	@Descripcion Nvarchar(30),
	@Id_Estado Int
)
AS
UPDATE[Sch_General].[T_Tipo_Empleado]
SET	
	[Nombre] = @Nombre,
	[Descripcion] = @Descripcion,
	[Id_Estado] = @Id_Estado
WHERE [Id_Tipo_Empleado] = @Id_Tipo_Empleado
GO


CREATE PROCEDURE SP_MODIFICAR_TIPO_PAGO
(	@Nombre_Tipo_Pago Nvarchar(20),
	@Id_Estado Int 
)
AS 
UPDATE [Sch_General].[T_Tipo_Pago]
SET
	[Nombre_Tipo_Pago] = @Nombre_Tipo_Pago,
	[Id_Estado] = @Id_Estado 

WHERE [Id_Tipo_Pago] = @Id_Tipo_Pago
GO


CREATE PROCEDURE SP_MODIFICAR_INVENTARIO
(
	@Nombre_Inventario Nvarchar(20),
	@Cantidad Int,
	@Id_Estado Int,
	@Id_Empleado Int
)
AS 
UPDATE [Sch_Administrativo].[T_Inventario]
SET
	[Nombre_Inventario] = @Nombre_Inventario,
	[Cantidad] = @Cantidad,
	[Id_Estado] = @Id_Estado,
	[Id_Empleado]= @Id_Empleado

WHERE [Id_Inventario] = @Id_Inventario
GO

CREATE PROCEDURE SP_MODIFICAR_PROVEEDOR
(
	@Nombre_Proveedor Nvarchar(20),
	@Descripcion Nvarchar(30),
	@Id_Estado Int 
)
AS
UPDATE [Sch_Administrativo].[T_Proveedor]
SET
	[Nombre_Proveedor] = @Nombre_Proveedor,
	[Descripcion] =@Descripcion,
	[Id_Estado] =@Id_Estado
WHERE [Id_Proveedor] =@Id_Proveedor
GO


CREATE PROCEDURE SP_MODIFICAR_ROL
(
	@Nombre Nvarchar(20),
	@Descripcion Nvarchar(30),
	@Id_Estado Int
)
AS 
UPDATE [Sch_Administrativo].[T_Rol]
SET
	[Nombre] = @Nombre,
	[Descripcion] = @Descripcion,
	[Id_Estado] =@Id_Estado
WHERE [Id_Rol] = @Id_Rol
GO

--DELETES

CREATE PROCEDURE SP_ELIMINAR_TIPO_CLIENTE
(	
	@Id_Tipo_Cliente Int
)
AS 
DELETE FROM [Sch_General].[T_Tipo_Cliente] 
WHERE [Id_Tipo_Cliente] = @Id_Tipo_Cliente
GO


CREATE PROCEDURE SP_ELIMINAR_TIPO_EMPLEADO
(
	@Id_Tipo_Empleado INT
)
AS
DELETE FROM [Sch_General].[T_Tipo_Empleado]
WHERE [Id_Tipo_Empleado] = @Id_Tipo_Empleado
GO

CREATE PROCEDURE SP_ELIMINAR_TIPO_PAGO
(
	@Id_Tipo_Pago Int
)
AS
DELETE FROM [Sch_General].[T_Tipo_Pago]
WHERE [Id_Tipo_Pago] = @Id_Tipo_Pago
GO


CREATE PROCEDURE SP_ELIMINAR_INVENTARIO
(
	@Id_Inventario
)
AS
DELETE FROM[Sch_Administrativo].[T_Inventario]
WHERE [Id_Inventario] = @Id_Inventario
GO

CREATE PROCEDURE SP_ELIMINAR_PROVEEDOR
(
	@Id_Proveedor
)
AS
DELETE FROM [Sch_Administrativo].[T_Proveedor]
WHERE FROM [Id_Proveedor] = @Id_Proveedor
GO

CREATE PROCEDURE SP_ELIMINAR_ROL
(
	@Id_Rol Int
)
AS
DELETE FROM [Sch_Administrativo].[T_Rol]
WHERE [Id_Rol] = @Id_Rol
GO

--LISTAR--

CREATE PROCEDURE SP_LISTAR_TIPO_CLIENTE
AS
SELECT
	[Id_Tipo_Cliente]
	[Nombre],
	[Descripcion],
	[Id_Estado]
FROM [Sch_General].[T_Tipo_Cliente]
GO


CREATE PROCEDURE SP_LISTAR_TIPO_EMPLEADO
AS
SELECT
	[Id_Tipo_Empleado]
	[Nombre],
	[Descripcion],
	[Id_Estado]

FROM [Sch_General].[T_Tipo_Empleado]
GO


CREATE PROCEDURE SP_LISTAR_TIPO_PAGO
AS 
SELECT
	[Id_Tipo_Pago]
	[Nombre_Tipo_Pago],
	[Id_Estado]  
FROM [Sch_General].[T_Tipo_Pago]
GO


CREATE PROCEDURE SP_LISTAR_INVENTARIO
AS 
SELECT
	[Id_Inventario]
	[Nombre_Inventario],
	[Cantidad],
	[Id_Estado],
	[Id_Empleado]
FROM [Sch_Administrativo].[T_Inventario]
GO


CREATE PROCEDURE SP_LISTAR_PROVEEDOR
AS
SELECT
	[Id_Proveedor]
	[Nombre_Proveedor],
	[Descripcion],
	[Id_Estado] 
FROM  [Sch_Administrativo].[T_Proveedor]
GO

CREATE PROCEDURE SP_LISTAR_ROL
AS 
SELECT 
	[Id_Rol]
	[Nombre],
	[Descripcion],
	[Id_Estado]
FROM[Sch_Administrativo].[T_Rol]
GO

--FILTRAR--

CREATE PROCEDURE SP_LISTAR_TIPO_CLIENTE
(
	@Id_Tipo_Cliente Int
)
AS
SELECT
	[Id_Tipo_Cliente]
	[Nombre],
	[Descripcion],
	[Id_Estado]
FROM [Sch_General].[T_Tipo_Cliente] 
WHERE([Id_Tipo_Cliente] LIKE '%Id_Tipo_Cliente%')
GO


CREATE PROCEDURE SP_LISTAR_TIPO_EMPLEADO
(
	@Id_Tipo_Empleado Int
)
AS
SELECT
	[Id_Tipo_Empleado]
	[Nombre],
	[Descripcion],
	[Id_Estado]

FROM [Sch_General].[T_Tipo_Empleado] 
WHERE ([Id_Tipo_Empleado] LIKE '%Id_Tipo_Empleado%')
GO


CREATE PROCEDURE SP_LISTAR_TIPO_PAGO
(
	@Id_Tipo_Pago Int
)
AS 
SELECT
	[Id_Tipo_Pago]
	[Nombre_Tipo_Pago],
	[Id_Estado]  
FROM [Sch_General].[T_Tipo_Pago]
WHERE ([Id_Tipo_Pago] LIKE '%Id_Tipo_Pago%')
GO


CREATE PROCEDURE SP_LISTAR_INVENTARIO
(
	@Id_Inventario INT
)
AS 
SELECT
	[Id_Inventario]
	[Nombre_Inventario],
	[Cantidad],
	[Id_Estado],
	[Id_Empleado]
FROM [Sch_Administrativo].[T_Inventario]
WHERE([Id_Inventario] LIKE '%Id_Inventario%')
GO


CREATE PROCEDURE SP_LISTAR_PROVEEDOR
(
	@Id_Proveedor INT
)
AS
SELECT
	[Id_Proveedor]
	[Nombre_Proveedor],
	[Descripcion],
	[Id_Estado] 
FROM  [Sch_Administrativo].[T_Proveedor]
WHERE ([Id_Proveedor] LIKE '&Id_Proveedor&')
GO

CREATE PROCEDURE SP_LISTAR_ROL
(
	@Id_Rol INT
)
AS 
SELECT 
	[Id_Rol]
	[Nombre],
	[Descripcion],
	[Id_Estado]
FROM[Sch_Administrativo].[T_Rol]
WHERE([Id_Rol] LIKE '%Id_Rol%')
GO