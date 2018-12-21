USE [Db_Proyecto_Progra4]
GO


CREATE PROCEDURE SP_INSERTAR_CLIENTE

(
		@Id_Cliente INT,
		@Nombre NVARCHAR(30),
        @Apellidos NVARCHAR (30),
        @Direccion NVARCHAR (30),
        @Email NVARCHAR (30),
        @Id_Tipo_Cliente INT,
        @Id_Estado INT,
        @Id_Cuenta INT,
        @Codigo_País INT
        
)

AS

INSERT INTO [Sch_Administrativo].[T_Cliente]
(
	
	[Id_Cliente],
	[Nombre],
	[Apellidos],
	[Direccion],
	[Email],
	[Id_Tipo_Cliente],
	[Id_Estado],
	[Id_Cuenta],
	[Codigo_Pais]

)

VALUES
(
	
		@Id_Cliente,
		@Nombre,
        @Apellidos,
        @Direccion,
        @Email,
        @Id_Tipo_Cliente,
        @Id_Estado,
        @Id_Cuenta,
        @Codigo_País


)
GO







--------------------------------------------------------------

CREATE PROCEDURE SP_INSERTAR_COMPRAS

(

	@Orden_Compra INT,
	@Cantidad INT,
	@Fecha_Compra Datetime,
	@Id_Estado INT,
	@Id_Moneda INT,
	@Id_Cliente INT,
	@Id_Articulo INT



)

AS 

INSERT INTO [Sch_Administrativo].[T_Compras]


(

	[Orden_Compra],
	[Cantidad],
	[Fecha_Compra],
	[Id_Estado],
	[Id_Moneda],
	[Id_Cliente],
	[Id_Articulo]


)

VALUES


(

	@Orden_Compra,
	@Cantidad,
	@Fecha_Compra,
	@Id_Estado,
	@Id_Moneda,
	@Id_Cliente,
	@Id_Articulo

)


GO

------------------------------------------------------------




CREATE PROCEDURE SP_INSERTAR_CUENTA

(
	
	@Id_Cuenta INT,
	@Descripcion NVARCHAR (20),
	@Id_Estado INT

)


AS


INSERT INTO [Sch_Administrativo].[T_Cuenta]

(

	[Id_Cuenta],
	[Descripcion],
	[Id_Estado]

)


VALUES

(

	@Id_Cuenta,
	@Descripcion,
	@Id_Estado


)


GO





----------------------------------------------------------------



CREATE PROCEDURE SP_INSERTAR_EMPLEADOS 

(

@Id_Empleado INT,
@Nombre NVARCHAR (30),
@Apellidos NVARCHAR (60),
@Id_Departamento INT,
@Id_Roll INT,
@Id_Estado INT


)


AS

INSERT INTO [Sch_Administrativo].[T_Empleados]

(

	[Id_Empleado],
	[Nombre],
	[Apellidos],
	[Id_Departamento],
	[Id_Rol],
	[Id_Estado]

)

VALUES


(

	@Id_Empleado,
	@Nombre,
	@Apellidos,
	@Id_Departamento,
	@Id_Roll,
	@Id_Estado 

)

 GO


---------------------------------------------------------------


CREATE PROCEDURE SP_INSERTAR_FACTURA

(


	@Numero_Factura INT,
	@Monto_Factura Money,
	@Fecha_Factura datetime,
	@Id_Estado INT,
	@Id_Tipo_Pago INT,
	@Orden_Compra INT


)

AS

INSERT INTO [Sch_Administrativo].[T_Factura]

(
 
	[Numero_Factura],
	[Monto_Factura],
	[Fecha_Factura],
	[Id_Estado],
	[Id_Tipo_Pago],
	[Orden_Compra]


)


VALUES

(

	@Numero_Factura,
	@Monto_Factura,
	@Fecha_Factura,
	@Id_Estado,
	@Id_Tipo_Pago,
	@Orden_Compra


)


GO







----------------------------------------------------------------
----------------------------------------------------------------
---------------------------------------------------------------- UPDATE 




CREATE PROCEDURE SP_MODIFICAR_CLIENTE 

(


		@Id_Cliente INT,
		@Nombre NVARCHAR(30),
        @Apellidos NVARCHAR (30),
        @Direccion NVARCHAR (30),
        @Email NVARCHAR (30),
        @Id_Tipo_Cliente INT,
        @Id_Estado INT,
        @Id_Cuenta INT,
        @Codigo_País INT

)

AS 

UPDATE [Sch_Administrativo].[T_Cliente]

SET 


	[Nombre] = @Nombre,
	[Apellidos] = @Apellidos,
	[Direccion] = @Direccion,
	[Email] = @Email,
	[Id_Tipo_Cliente] = @Id_Tipo_Cliente,
	[Id_Estado] =  @Id_Estado,
	[Id_Cuenta] = @Id_Cuenta,
	[Codigo_Pais] = @Codigo_País


WHERE [Id_Cliente] = @Id_Cliente

GO




-----------------------------------------------------------------------------------






CREATE PROCEDURE SP_MODIFICAR_COMPRAS


(

	@Orden_Compra INT,
	@Cantidad INT,
	@Fecha_Compra Datetime,
	@Id_Estado INT,
	@Id_Moneda INT,
	@Id_Cliente INT,
	@Id_Articulo INT


)

AS 

UPDATE [Sch_Administrativo].[T_Compras]

SET 
	[Cantidad] = @Cantidad,
	[Fecha_Compra] = @Fecha_Compra,
	[Id_Estado] = @Id_Estado,
	[Id_Moneda] = @Id_Moneda,
	[Id_Cliente] = @Id_Cliente,
	[Id_Articulo] = @Id_Articulo


WHERE [Orden_Compra] = @Orden_Compra



GO


-----------------------------------------------------------------------------------



CREATE PROCEDURE SP_MODIFICAR_CUENTA

(

	@Id_Cuenta INT,
	@Descripcion NVARCHAR (20),
	@Id_Estado INT


)

AS
UPDATE [Sch_Administrativo].[T_Cuenta]

SET 


	
	[Descripcion]=@Descripcion,
	[Id_Estado] = @Id_Estado


WHERE [Id_Cuenta] = @Id_Cuenta


GO


----------------------------------------------------------------------------------------


CREATE PROCEDURE SP_MODIFICAR_EMPLEADOS


(

	@Id_Empleado INT,
	@Nombre NVARCHAR (30),
	@Apellidos NVARCHAR (60),
	@Id_Departamento INT,
	@Id_Roll INT,
	@Id_Estado INT


)

AS
 UPDATE [Sch_Administrativo].[T_Empleados]


SET 


		
		[Nombre] = @Nombre,
		[Apellidos] = @Apellidos,
		[Id_Departamento] = @Id_Departamento,
		[Id_Rol] = @Id_Roll,
		[Id_Estado] = @Id_Estado


WHERE [Id_Empleado] = @Id_Empleado


GO



-------------------------------------------------------------------------------------





CREATE PROCEDURE SP_MODIFICAR_FACTURA



(
	@Numero_Factura INT,
	@Monto_Factura Money,
	@Fecha_Factura datetime,
	@Id_Estado INT,
	@Id_Tipo_Pago INT,
	@Orden_Compra INT


)


AS

UPDATE [Sch_Administrativo].[T_Factura]

SET 


	
	[Monto_Factura] = @Monto_Factura,
	[Fecha_Factura] = 	@Fecha_Factura,
	[Id_Estado] =  @Id_Estado,
	[Id_Tipo_Pago] = @Id_Tipo_Pago,
	[Orden_Compra] = @Orden_Compra



WHERE   [Numero_Factura] = @Numero_Factura


GO







-----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
------------------------------------------------------------ ELIMINAR




CREATE PROCEDURE SP_ELIMINAR_CLIENTE


(

	@Id_Cliente INT


)

AS
DELETE FROM [Sch_Administrativo].[T_Cliente] WHERE [Id_Cliente] = @Id_Cliente

GO




-----------------------------------------------------------------------------------------------------------------


CREATE PROCEDURE SP_ELIMINAR_COMPRA

(
	@Orden_Compras INT

)
AS


DELETE FROM  [Sch_Administrativo].[T_Compras] WHERE [Orden_Compra] = @Orden_Compras

GO



----------------------------------------------------------------------------------------------------------------



CREATE PROCEDURE SP_ELIMINAR_CUENTA

(
	@Id_Cuenta INT
	
)


AS

DELETE FROM [Sch_Administrativo].[T_Cuenta] WHERE [Id_Cuenta] = @Id_Cuenta


GO


-------------------------------------------------------------------------------------------------------------


CREATE PROCEDURE SP_ELIMINAR_EMPLEADOS

(

	@Id_Empleado INT

)

AS

DELETE FROM [Sch_Administrativo].[T_Empleados] WHERE [Id_Empleado] = @Id_Empleado

GO

-------------------------------------------------------------------------------------------------------------




CREATE PROCEDURE SP_ELIMINAR_FACTURA 

(

	@Numero_Factura INT

)
AS

DELETE FROM [Sch_Administrativo].[T_Factura] WHERE [Numero_Factura] = @Numero_Factura

GO

--------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------- LIST 



CREATE PROCEDURE SP_LISTAR_CLIENTE 

AS

SELECT 


	[Id_Cliente],
	[Nombre],
	[Apellidos],
	[Direccion],
	[Email],
	[Id_Tipo_Cliente],
	[Id_Estado],
	[Id_Cuenta],
	[Codigo_Pais]

FROM [Sch_Administrativo].[T_Cliente]
GO




-----------------------------------------------------------------------------------------------------------------


CREATE PROCEDURE SP_LISTAR_COMPRAS


AS

SELECT

	[Orden_Compra],
	[Cantidad],
	[Fecha_Compra],
	[Id_Estado],
	[Id_Moneda],
	[Id_Cliente],
	[Id_Articulo]

FROM [Sch_Administrativo].[T_Compras]

GO


------------------------------------------------------------------------------------------------------------------


CREATE PROCEDURE SP_LISTAR_CUENTA

AS

SELECT
   
	[Id_Cuenta],
	[Descripcion],
	[Id_Estado]


FROM [Sch_Administrativo].[T_Cuenta]

GO



-----------------------------------------------------------------------------------------------------------------------


CREATE PROCEDURE SP_LISTAR_EMPLEADOS


AS

SELECT
      	[Id_Empleado],
		[Nombre],
		[Apellidos],
		[Id_Departamento],
		[Id_Rol],
		[Id_Estado]


FROM [Sch_Administrativo].[T_Empleados]

GO


----------------------------------------------------------------------------------------------------------------------




CREATE PROCEDURE SP_LISTAR_FACTURA

AS

SELECT  

	[Numero_Factura],
	[Monto_Factura],
	[Fecha_Factura],
	[Id_Estado],
	[Id_Tipo_Pago],
	[Orden_Compra]

FROM [Sch_Administrativo].[T_Factura]

GO



------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------FILT





CREATE PROCEDURE SP_FILTRAR_CLIENTE 

(

	@Id_Cliente INT

)

AS


SELECT 

	[Id_Cliente],
	[Nombre],
	[Apellidos],
	[Direccion],
	[Email],
	[Id_Tipo_Cliente],
	[Id_Estado],
	[Id_Cuenta],
	[Codigo_Pais]


FROM [Sch_Administrativo].[T_Cliente] WHERE ([Id_Cliente] LIKE '%' + @Id_Cliente +'%')
GO



------------------------------------------------------------------------------------------------------------------------------



CREATE PROCEDURE SP_FILTRAR_COMPRA

(
		@Orden_Compra INT

)

AS

SELECT 
	
	[Orden_Compra],
	[Cantidad],
	[Fecha_Compra],
	[Id_Estado],
	[Id_Moneda],
	[Id_Cliente],
	[Id_Articulo]


FROM [Sch_Administrativo].[T_Compras] WHERE ([Orden_Compra] LIKE '%' + @Orden_Compra +'%')

GO



-------------------------------------------------------------------------------------------------------------------------------





CREATE PROCEDURE SP_FILTRAR_CUENTA

(

	@Id_Cuenta INT

)


AS

SELECT
	
	[Id_Cuenta],
	[Descripcion],
	[Id_Estado]


FROM [Sch_Administrativo].[T_Cuenta] WHERE ([Id_Cuenta] LIKE '%' + @Id_Cuenta +'%')

GO




---------------------------------------------------------------------------------------------------------------------------------



CREATE PROCEDURE SP_FILTRAR_EMPLEADOS

(
		@Id_Empleado INT
)

AS	

SELECT

	[Id_Empleado],
	[Nombre],
	[Apellidos],
	[Id_Departamento],
	[Id_Rol],
	[Id_Estado]

FROM [Sch_Administrativo].[T_Empleados] WHERE ([Id_Empleado] LIKE '%' + @Id_Empleado +'%')

GO




----------------------------------------------------------------------------------------------------------------------------------




CREATE PROCEDURE SP_FILTRAR_FACTURA


(

	@Numero_Factura INT

)

AS

SELECT
	
	[Numero_Factura],
	[Monto_Factura],
	[Fecha_Factura],
	[Id_Estado],
	[Id_Tipo_Pago],
	[Orden_Compra]


FROM  [Sch_Administrativo].[T_Factura] WHERE ([Numero_Factura] LIKE '%' + @Numero_Factura +'%')

GO

