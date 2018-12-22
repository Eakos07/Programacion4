Use [master]
Go

Create Database[Db_Proyecto_Progra4]
Go

Use[Db_Proyecto_Progra4]
Go

Create Schema[Sch_General]
Go
Create Schema[Sch_Administrativo]
Go

Create Table [Sch_General].[T_Estados]
(
	 [Id_Estado] Smallint Identity(1,1) Not Null,
	 [Descripcion] Nvarchar(20) Not Null,
	Constraint [Pk_Estado] Primary Key Clustered
	(
		[Id_Estado] Asc
	)
)

Create Table [Sch_Administrativo].[T_Cuenta]
(
	[Id_Cuenta] Smallint Not Null,
	[Descripcion] Nvarchar(20) Not Null,
	[Id_Estado] Smallint Not Null
	
	Constraint [Pk_Cuenta] Primary Key Clustered
	(
		[Id_Cuenta] Asc
	)
)
Create Table [Sch_General].[T_Tipo_Cliente]
(
	[Id_Tipo_Cliente] Smallint Not Null,
	[Nombre] Nvarchar(30) Not Null,
	[Descripcion] Nvarchar(30),
	[Id_Estado] Smallint Not Null

	Constraint [Pk_Tipo_Cliente] Primary Key Clustered
	(
		[Id_Tipo_Cliente] ASC
	)
)
Create Table [Sch_General].[T_Departamento]
(
	[Id_Departamento] Smallint Not Null,
	[Nombre] NVarchar(20) Not Null,
	[Descripcion] Nvarchar (30),
	[Id_Estado] Smallint Not Null
	Constraint [Pk_Departamento] Primary Key Clustered
	(
		[Id_Departamento] Asc
	)
)
Create Table [Sch_Administrativo].[T_Rol]
(
	[Id_Rol] Smallint Not null,
	[Nombre] Nvarchar(20) Not Null,
	[Descripcion] Nvarchar(30),
	[Id_Estado] Smallint Not null
	Constraint [Pk_Rol] Primary Key Clustered
	(
		[Id_Rol] Asc
	)
)
Create Table [Sch_Administrativo].[T_Empleados]
(
	[Id_Empleado] Smallint Not Null,
	[Nombre] Nvarchar(30) Not Null,
	[Apellidos] Nvarchar(60) Not Null,
	[Id_Departamento] Smallint Not Null,
	[Id_Rol] Smallint Not null,
	[Id_Estado] Smallint not null
	Constraint [Pk_Empleado] Primary Key Clustered
	(
		[Id_Empleado] Asc
	)
)

Create Table [Sch_General].[T_Tipo_Empleado]
(
	[Id_Tipo_Empleado] Smallint Not Null,
	[Nombre] Nvarchar(20) Not Null,
	[Descripcion] Nvarchar(30),
	[Id_Estado] Smallint Not Null
	Constraint [Pk_Tipo_Empleado] Primary Key Clustered
	(
		[Id_Tipo_Empleado] Asc
	)
)
Create Table [Sch_Administrativo].[T_Cliente]
(
	[Id_Cliente] Smallint Not Null,
	[Nombre] Nvarchar(30) Not Null,
	[Apellidos] Nvarchar(60) Not Null,
	[Direccion] Nvarchar (150) Not Null,
	[Email] Nvarchar(30) Not Null,
	[Id_Tipo_Cliente] Smallint Not Null,
	[Id_Estado] Smallint Not Null,
	[Id_Cuenta] Smallint Not Null,
	[Codigo_Pais] Smallint Not Null
	Constraint [Pk_Cliente] Primary Key Clustered
	(
		[Id_Cliente] Asc
	)
)

Create Table [Sch_General].[T_Pais]
(
	[Codigo_Pais] Smallint Not Null,
	[Nombre] Nvarchar(20) Not Null,
	[Id_Estado] Smallint
	Constraint [Pk_Pais] Primary Key Clustered
	(
		[Codigo_Pais] Asc
	)
)

Create Table [Sch_General].[T_Moneda]
(
	[Id_Moneda] Smallint Not Null,
	[Nombre] Nvarchar(20) Not Null,
	[Id_Estado] Smallint Not Null,
	[Codigo_Pais] Smallint Not Null
	Constraint [Pk_Moneda] Primary Key Clustered
	(
		[Id_Moneda] Asc
	)
)
Create Table [Sch_Administrativo].[T_Factura]
(
	[Numero_Factura] Smallint Not Null,
	[Monto_Factura] Money Not Null,
	[Fecha_Factura] Datetime Not Null,
	[Id_Estado] Smallint Not Null,
	[Id_Tipo_Pago] Smallint Not Null,
	[Orden_Compra] Smallint Not Null

	Constraint [Pk_Factura] Primary Key Clustered
	(
		[Numero_Factura] Asc
	)
)
Create Table [Sch_General].[T_Articulo]
(
	[Id_Articulo] Smallint Not Null,
	[Nombre] Nvarchar(20) Not Null,
	[Id_Estado] Smallint Not Null,
	[Id_Proveedor] Smallint Not Null,
	[Id_Categoria] Smallint Not Null
	Constraint [Pk_Articulo] Primary Key Clustered
	(
		[Id_Articulo] Asc
	)
)
Create Table [Sch_Administrativo].[T_Proveedor]
(
	[Id_Proveedor] Smallint Not Null,
	[Nombre_Proveedor] Nvarchar(20)Not Null,
	[Descripcion] Nvarchar(30),
	[Id_Estado] Smallint Not Null
	Constraint [Pk_Proveedor] Primary Key Clustered
	(
		[Id_Proveedor] Asc
	)
)
Create Table [Sch_Administrativo].[T_Inventario]
(
	[Id_Inventario] Smallint Not Null,
	[Nombre_Inventario] Nvarchar(20) Not Null,
	[Cantidad] Smallint Not Null,
	[Id_Estado] Smallint Not Null,
	[Id_Empleado] Smallint Not Null
	Constraint [Pk_Inventario] Primary Key Clustered
	(
		[Id_Inventario] Asc
	)
)
Create Table [Sch_General].[T_Categoria]
(
	[Id_Categoria] Smallint Not Null,
	[Nombre] Nvarchar(20) Not Null,
	[Descripcion] Nvarchar(30),
	[Id_Estado] Smallint Not Null,
	[Id_Articulo] Smallint Not Null,
	[Id_Inventario] Smallint Not Null,

	Constraint [Pk_Categoria] Primary Key Clustered
	(
		[Id_Categoria] Asc
	)
)
Create Table [Sch_General].[T_Tipo_Pago]
(
	[Id_Tipo_Pago] Smallint Not Null,
	[Nombre_Tipo_Pago] Nvarchar(20) Not Null,
	[Id_Estado] Smallint Not Null
	Constraint [Pk_Tipo_Pago] Primary Key Clustered
	(
		[Id_Tipo_Pago] Asc
	)
)
Create Table [Sch_Administrativo].[T_Compras]
(
	[Orden_Compra] Smallint Not Null,
	[Cantidad] Smallint Not null,
	[Fecha_Compra] Datetime Not Null,
	[Id_Estado] Smallint Not Null,
	[Id_Moneda]Smallint Not Null,
	[Id_Cliente]Smallint Not Null,
	[Id_Articulo]Smallint Not Null
	Constraint [Pk_Compra] Primary Key Clustered
	(
		[Orden_Compra] Asc
	)
)

-- Llaves Foráneas--
--Tabla Cuenta
Alter Table [Sch_Administrativo].[T_Cuenta] With NoCheck
Add Constraint Fk_T_Cuenta_T_Estados_Id_Estado
	Foreign Key(Id_Estado)
	References [Sch_General].[T_Estados]
	Go
Alter Table [Sch_Administrativo].[T_Cuenta]
	Check Constraint Fk_T_Cuenta_T_Estados_Id_Estado
	Go


--Tabla Cliente
Alter Table [Sch_Administrativo].[T_Cliente] With NoCheck
Add Constraint Fk_T_Cliente_T_Estados_Id_Estado
	Foreign Key(Id_Estado)
	References [Sch_General].[T_Estados]
Go
Alter Table [Sch_Administrativo].[T_Cliente]
	Check Constraint Fk_T_Cliente_T_Estados_Id_Estado
Go

Alter Table [Sch_Administrativo].[T_Cliente] With NoCheck
Add Constraint Fk_T_Cliente_T_Pais_Codigo_Pais
	Foreign Key(Codigo_Pais)
	References [Sch_General].[T_Pais]
Go
Alter Table [Sch_Administrativo].[T_Cliente] 
	Check Constraint Fk_T_Cliente_T_Pais_Codigo_Pais
Go

Alter Table [Sch_Administrativo].[T_Cliente] With NoCheck
	Add Constraint Fk_T_Cliente_T_Cuenta_Id_Cuenta
	Foreign Key(Id_Cuenta)
	References[Sch_Administrativo].[T_Cuenta]
Go
Alter Table [Sch_Administrativo].[T_Cliente] 
	Check Constraint Fk_T_Cliente_T_Cuenta_Id_Cuenta
Go

Alter Table [Sch_Administrativo].[T_Cliente] With NoCheck
	Add Constraint Fk_T_Cliente_T_Tipo_Cuenta_Id_Tipo_Cliente
	Foreign Key (Id_Tipo_Cliente)
	References [Sch_General].[T_Tipo_Cliente]
Go
Alter Table [Sch_Administrativo].[T_Cliente] 
	Check Constraint Fk_T_Cliente_T_Tipo_Cuenta_Id_Tipo_Cliente
Go

--Tabla Pais
Alter Table [Sch_General].[T_Pais] With NoCheck
	Add Constraint Fk_T_Pais_T_Estados_Id_Estado
	Foreign Key(Id_Estado)
	References [Sch_General].[T_Estados]
Go
Alter Table [Sch_General].[T_Pais]
	Check Constraint Fk_T_Pais_T_Estados_Id_Estado
Go

--Tabla Compras
Alter Table [Sch_Administrativo].[T_Compras] With NoCheck
	Add Constraint Fk_T_Compras_T_Estados_Id_Estado
	Foreign Key(Id_Estado)
	References [Sch_General].[T_Estados]
Go
Alter Table [Sch_Administrativo].[T_Compras]
	Check Constraint Fk_T_Compras_T_Estados_Id_Estado
Go

Alter Table [Sch_Administrativo].[T_Compras] With NoCheck
	Add Constraint Fk_T_Compras_T_Moneda_Id_Moneda
	Foreign Key (Id_Moneda)
	References[Sch_General].[T_Moneda]
Go
Alter Table[Sch_Administrativo].[T_Compras]
	Check Constraint Fk_T_Compras_T_Moneda_Id_Moneda
Go

Alter Table[Sch_Administrativo].[T_Compras] With NoCheck
	Add Constraint Fk_T_Compras_T_Cliente_Id_Cliente
	Foreign Key(Id_Cliente)
	References [Sch_Administrativo].[T_Cliente]
Go

Alter Table[Sch_Administrativo].[T_Compras] With NoCheck
	Add Constraint Fk_T_Compras_T_Articulo_Id_Articulo
	Foreign Key(Id_Articulo)
	References [Sch_General].[T_Articulo]
Go
Alter Table[Sch_Administrativo].[T_Compras]
	Check Constraint Fk_T_Compras_T_Articulo_Id_Articulo
Go

--Tabla Tipo Pago
Alter Table[Sch_General].[T_Tipo_Pago] With NoCheck
	Add Constraint Fk_T_Tipo_Pago_T_Estados_Id_Estado
	Foreign Key(Id_Estado)
	References [Sch_General].[T_Estados]
Go
Alter Table [Sch_General].[T_Tipo_Pago]
	Check Constraint Fk_T_Tipo_Pago_T_Estados_Id_Estado
Go

--Tabla Moneda	
Alter Table[Sch_General].[T_Moneda] With NoCheck
	Add Constraint Fk_T_Moneda_T_Estados_Id_Estado
	Foreign Key(Id_Estado)
	References [Sch_General].[T_Estados]
Go
Alter Table [Sch_General].[T_Moneda]
	Check Constraint Fk_T_Moneda_T_Estados_Id_Estado
Go

--Tabla Departamento
Alter Table [Sch_General].[T_Departamento] With NoCheck
	Add Constraint Fk_T_Departamento_T_Estados_Id_Estado
	Foreign Key (Id_Estado)
	References[Sch_General].[T_Estados]
Go
Alter Table [Sch_General].[T_Departamento]
	Check Constraint Fk_T_Departamento_T_Estados_Id_Estado
Go

--Tabla Empleado
Alter Table [Sch_Administrativo].[T_Empleados] With NoCheck
	Add Constraint Fk_T_Empleados_T_Estados_Id_Estado
	Foreign Key (Id_Estado)
	References[Sch_General].[T_Estados]
Alter Table [Sch_Administrativo].[T_Empleados] 
	Check Constraint Fk_T_Empleados_T_Estados_Id_Estado
Go

Alter Table [Sch_Administrativo].[T_Empleados] With NoCheck
	Add Constraint Fk_T_Empleados_T_Rol_Id_Rol
	Foreign Key(Id_Rol)
	References[Sch_Administrativo].[T_Rol]
Go
Alter Table [Sch_Administrativo].[T_Empleados] 
	Check Constraint Fk_T_Empleados_T_Rol_Id_Rol
Go

Alter Table [Sch_Administrativo].[T_Empleados] With NoCheck
	Add Constraint Fk_T_Empleados_T_Departamento_Id_Departamento
	Foreign Key (Id_Departamento)
	References [Sch_General].[T_Departamento]
Go
Alter Table [Sch_Administrativo].[T_Empleados] With NoCheck
	Check Constraint Fk_T_Empleados_T_Departamento_Id_Departamento
Go

--Tabla Rol
Alter Table [Sch_Administrativo].[T_Rol] With NoCheck
	Add Constraint Fk_T_Rol_T_Estados_Id_Estado
	Foreign Key(Id_Estado)
	References[Sch_General].[T_Estados]
Go
Alter Table [Sch_Administrativo].[T_Rol] 
	Check Constraint Fk_T_Rol_T_Estados_Id_Estado
Go

--Tabla Factura
Alter Table [Sch_Administrativo].[T_Factura] With NoCheck
	Add Constraint Fk_T_Factura_T_Estados_Id_Estado
	Foreign Key(Id_Estado)
	References[Sch_General].[T_Estados]
Go
Alter Table [Sch_Administrativo].[T_Factura] 
	Check Constraint Fk_T_Factura_T_Estados_Id_Estado
Go

Alter Table [Sch_Administrativo].[T_Factura] With NoCheck
	Add Constraint Fk_T_Factura_T_Tipo_Pago_Id_Tipo_Pago
	Foreign Key(Id_Tipo_Pago)
	References [Sch_General].[T_Tipo_Pago]
Go
Alter Table [Sch_Administrativo].[T_Factura] 
	Check Constraint Fk_T_Factura_T_Tipo_Pago_Id_Tipo_Pago
Go

Alter Table [Sch_Administrativo].[T_Factura] With NoCheck
	Add Constraint Fk_T_Factura_T_Compras_Orden_Compra
	Foreign Key(Orden_Compra)
	References[Sch_Administrativo].[T_Compras]
Go
Alter Table [Sch_Administrativo].[T_Factura] 
	Check Constraint Fk_T_Factura_T_Compras_Orden_Compra
Go

--Tabla Proveedor
Alter Table [Sch_Administrativo].[T_Proveedor]With NoCheck
	Add Constraint Fk_T_Proveedor_T_Estados_Id_Estado
	Foreign Key(Id_Estado)
	References[Sch_General].[T_Estados]
Go
Alter Table [Sch_Administrativo].[T_Proveedor]
	Check Constraint Fk_T_Proveedor_T_Estados_Id_Estado
Go
	
--Tabla Articulo
Alter Table [Sch_General].[T_Articulo] With NoCheck
	Add Constraint Fk_T_Articulo_T_Estados_Id_Estado
	Foreign Key (Id_Estado)
	References [Sch_General].[T_Estados]
Go
Alter Table [Sch_General].[T_Articulo] 
	Check Constraint Fk_T_Articulo_T_Estados_Id_Estado
Go

Alter Table [Sch_General].[T_Articulo] With NoCheck
	Add Constraint Fk_T_Articulo_T_Categoria_Id_Categoria
	Foreign Key(Id_Categoria)
	References[Sch_General].[T_Categoria]
Go
Alter Table [Sch_General].[T_Articulo] 
	Check Constraint Fk_T_Articulo_T_Categoria_Id_Categoria
Go

Alter Table [Sch_General].[T_Articulo] With NoCheck
	Add Constraint Fk_T_Articulo_T_Proveedor_Id_Proveedor
	Foreign Key(Id_Proveedor)
	References[Sch_Administrativo].[T_Proveedor]
Go
Alter Table [Sch_General].[T_Articulo] 
	Check Constraint Fk_T_Articulo_T_Proveedor_Id_Proveedor
Go

--Tabla Inventario
Alter Table [Sch_Administrativo].[T_Inventario] With NoCheck
	Add Constraint Fk_T_Inventario_T_Estados_Id_Estado
	Foreign Key(Id_Estado)
	References [Sch_General].[T_Estados]
Go
Alter Table [Sch_Administrativo].[T_Inventario] 
	Check Constraint Fk_T_Inventario_T_Estados_Id_Estado
Go

Alter Table [Sch_Administrativo].[T_Inventario] With NoCheck
	Add Constraint Fk_T_Inventario_T_Empleados_Id_Empleados
	Foreign Key(Id_Empleado)
	References[Sch_Administrativo].[T_Empleados]
Go
Alter Table [Sch_Administrativo].[T_Inventario] 
	Check Constraint Fk_T_Inventario_T_Empleados_Id_Empleados
Go

--Tabla Categoria
Alter Table [Sch_General].[T_Categoria] With NoCheck
	Add Constraint Fk_T_Categoria_T_Estados_Id_Estado
	Foreign Key (Id_Estado)
	References[Sch_General].[T_Estados]
Go
Alter Table [Sch_General].[T_Categoria] 
	Check Constraint Fk_T_Categoria_T_Estados_Id_Estado
Go

Alter Table [Sch_General].[T_Categoria] With NoCheck
	Add Constraint Fk_T_Categoria_T_Inventario_Id_Inventario
	Foreign Key(Id_Inventario)
	References [Sch_Administrativo].[T_Inventario]
Go
Alter Table [Sch_General].[T_Categoria] 
	Check Constraint Fk_T_Categoria_T_Inventario_Id_Inventario
Go

Alter Table [Sch_General].[T_Categoria] With NoCheck
	Add Constraint Fk_T_Categoria_T_Articulo_Id_Articulo
	Foreign Key(Id_Articulo)
	References[Sch_General].[T_Articulo]
Go
Alter Table [Sch_General].[T_Categoria] 
	Check Constraint Fk_T_Categoria_T_Articulo_Id_Articulo
Go

--INSERTS

CREATE PROCEDURE SP_INSERTAR_TIPO_CLIENTE
(	@Id_Tipo_Cliente Smallint,
	@Nombre Nvarchar(30),
	@Descripcion Nvarchar(30),
	@Id_Estado Smallint
)
AS
INSERT INTO [Sch_General].[T_Tipo_Cliente]
(	[Id_Tipo_Cliente],
	[Nombre],
	[Descripcion],
	[Id_Estado]
)
VALUES
(	@Id_Tipo_Cliente,
	@Nombre,
	@Descripcion,
	@Id_Estado
)
GO


CREATE PROCEDURE SP_INSERTAR_TIPO_EMPLEADO
(	@Id_Tipo_Empleado Smallint,
	@Nombre Nvarchar(20),
	@Descripcion Nvarchar(30),
	@Id_Estado Smallint
)
AS
INSERT INTO [Sch_General].[T_Tipo_Empleado]
(	[Id_Tipo_Empleado],
	[Nombre],
	[Descripcion],
	[Id_Estado]
)
VALUES
(	@Id_Tipo_Empleado,
	@Nombre,
	@Descripcion,
	@Id_Estado
)
GO


CREATE PROCEDURE SP_INSERTAR_TIPO_PAGO
(	@Id_Tipo_Pago Smallint,
	@Nombre_Tipo_Pago Nvarchar(20),
	@Id_Estado Smallint 
)
AS 
INSERT INTO [Sch_General].[T_Tipo_Pago]
(	[Id_Tipo_Pago],
	[Nombre_Tipo_Pago],
	[Id_Estado]  
)
VALUES
(	@Id_Tipo_Pago,
	@Nombre_Tipo_Pago,
	@Id_Estado
)
GO


CREATE PROCEDURE SP_INSERTAR_INVENTARIO
(	@Id_Inventario Smallint,
	@Nombre_Inventario Nvarchar(20),
	@Cantidad Smallint,
	@Id_Estado Smallint,
	@Id_Empleado Smallint
)
AS 
INSERT INTO [Sch_Administrativo].[T_Inventario]
(	[Id_Inventario],
	[Nombre_Inventario],
	[Cantidad],
	[Id_Estado],
	[Id_Empleado]
)
VALUES
(	@Id_Inventario,
	@Nombre_Inventario,
	@Cantidad,
	@Id_Estado,
	@Id_Empleado
)
GO

CREATE PROCEDURE SP_INSERTAR_PROVEEDOR
(	@Id_Proveedor Smallint,
	@Nombre_Proveedor Nvarchar(20),
	@Descripcion Nvarchar(30),
	@Id_Estado Smallint 
)
AS
INSERT INTO [Sch_Administrativo].[T_Proveedor]
(	[Id_Proveedor],
	[Nombre_Proveedor],
	[Descripcion],
	[Id_Estado] 
)
VALUES
(	@Id_Proveedor,
	@Nombre_Proveedor,
	@Descripcion,
	@Id_Estado
)
GO

CREATE PROCEDURE SP_INSERTAR_ROL
(	@Id_Rol Smallint,
	@Nombre Nvarchar(20),
	@Descripcion Nvarchar(30),
	@Id_Estado Smallint
)
AS 
INSERT INTO[Sch_Administrativo].[T_Rol]
(	[Id_Rol],
	[Nombre],
	[Descripcion],
	[Id_Estado]
)
VALUES
(	@Id_Rol,
	@Nombre,
	@Descripcion,
	@Id_Estado
)
GO


CREATE PROCEDURE SP_INSERTAR_ESTADO
(
	@Id_Estado SMALLINT,
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
	@Id_Moneda SMALLINT,
	@Nombre NVARCHAR(20),
	@Id_Estado SMALLINT,
	@Codigo_Pais SMALLINT
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
	@Codigo_Pais SMALLINT,
	@Nombre NVARCHAR(20),
	@Id_Estado SMALLINT
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
	@Id_Articulo SMALLINT,
	@Nombre NVARCHAR(20),
	@Id_Estado SMALLINT,
	@Id_Proveedor SMALLINT,
	@Id_Categoria SMALLINT
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
	@Id_Categoria SMALLINT,
	@Nombre NVARCHAR(20),
	@Descripcion NVARCHAR(20),
	@Id_Estado SMALLINT,
	@Id_Articulo SMALLINT,
	@Id_Inventario SMALLINT
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
	@Id_Departamento SMALLINT,
	@Nombre NVARCHAR(20),
	@Descripcion NVARCHAR(20),
	@Id_Estado SMALLINT
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


CREATE PROCEDURE SP_INSERTAR_CLIENTE

(
	@Id_Cliente SMALLINT,
	@Nombre NVARCHAR(30),
        @Apellidos NVARCHAR (30),
        @Direccion NVARCHAR (30),
        @Email NVARCHAR (30),
        @Id_Tipo_Cliente SMALLINT,
        @Id_Estado SMALLINT,
        @Id_Cuenta SMALLINT,
        @Codigo_País SMALLINT
        
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

CREATE PROCEDURE SP_INSERTAR_COMPRAS
(
	@Orden_Compra SMALLINT,
	@Cantidad SMALLINT,
	@Fecha_Compra Datetime,
	@Id_Estado SMALLINT,
	@Id_Moneda SMALLINT,
	@Id_Cliente SMALLINT,
	@Id_Articulo SMALLINT
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


CREATE PROCEDURE SP_INSERTAR_CUENTA
(
	@Id_Cuenta SMALLINT,
	@Descripcion NVARCHAR (20),
	@Id_Estado SMALLINT
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


CREATE PROCEDURE SP_INSERTAR_EMPLEADOS 
(
	@Id_Empleado SMALLINT,
	@Nombre NVARCHAR (30),
	@Apellidos NVARCHAR (60),
	@Id_Departamento SMALLINT,
	@Id_Roll SMALLINT,
	@Id_Estado SMALLINT
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


CREATE PROCEDURE SP_INSERTAR_FACTURA
(
	@Numero_Factura SMALLINT,
	@Monto_Factura Money,
	@Fecha_Factura datetime,
	@Id_Estado SMALLINT,
	@Id_Tipo_Pago SMALLINT,
	@Orden_Compra SMALLINT
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

--UPDATES--

CREATE PROCEDURE SP_MODIFICAR_TIPO_CLIENTE
(	@Id_Tipo_Cliente Smallint,
	@Nombre Nvarchar(30),
	@Descripcion Nvarchar(30),
	@Id_Estado Smallint
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
(	@Id_Tipo_Empleado Smallint,
	@Nombre Nvarchar(20),
	@Descripcion Nvarchar(30),
	@Id_Estado Smallint
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
(	@Id_Tipo_Pago Smallint,
	@Nombre_Tipo_Pago Nvarchar(20),
	@Id_Estado Smallint 
)
AS 
UPDATE [Sch_General].[T_Tipo_Pago]
SET
	[Nombre_Tipo_Pago] = @Nombre_Tipo_Pago,
	[Id_Estado] = @Id_Estado 

WHERE [Id_Tipo_Pago] = @Id_Tipo_Pago
GO


CREATE PROCEDURE SP_MODIFICAR_INVENTARIO
(	@Id_Inventario Smallint,
	@Nombre_Inventario Nvarchar(20),
	@Cantidad Smallint,
	@Id_Estado Smallint,
	@Id_Empleado Smallint
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
(	@Id_Proveedor Smallint,
	@Nombre_Proveedor Nvarchar(20),
	@Descripcion Nvarchar(30),
	@Id_Estado Smallint 
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
(	@Id_Rol Smallint,
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

CREATE PROCEDURE SP_MODIFICAR_ESTADO
(
	@Id_Estado SMALLINT,
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
	@Id_Moneda SMALLINT,
	@Nombre NVARCHAR(20),
	@Id_Estado SMALLINT,
	@Codigo_Pais SMALLINT
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
	@Codigo_Pais SMALLINT,
	@Nombre NVARCHAR(20),
	@Id_Estado SMALLINT
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
	@Id_Articulo SMALLINT,
	@Nombre NVARCHAR(20),
	@Id_Estado SMALLINT,
	@Id_Proveedor SMALLINT,
	@Id_Categoria SMALLINT
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
	@Id_Categoria SMALLINT,
	@Nombre NVARCHAR(20),
	@Descripcion NVARCHAR(20),
	@Id_Estado SMALLINT,
	@Id_Articulo SMALLINT,
	@Id_Inventario SMALLINT
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
	@Id_Departamento SMALLINT,
	@Nombre NVARCHAR(20),
	@Descripcion NVARCHAR(20),
	@Id_Estado SMALLINT
)
AS
UPDATE [Sch_General].[T_Departamento]

SET
	
	[Nombre] = @Nombre,
	[Descripcion] = @Descripcion,
	[Id_Estado] = @Id_Estado

WHERE [Id_Departamento] = @Id_Departamento

GO


CREATE PROCEDURE SP_MODIFICAR_CLIENTE 
(
		@Id_Cliente SMALLINT,
		@Nombre NVARCHAR(30),
        @Apellidos NVARCHAR (30),
        @Direccion NVARCHAR (30),
        @Email NVARCHAR (30),
        @Id_Tipo_Cliente SMALLINT,
        @Id_Estado SMALLINT,
        @Id_Cuenta SMALLINT,
        @Codigo_País SMALLINT
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

CREATE PROCEDURE SP_MODIFICAR_COMPRAS
(

	@Orden_Compra SMALLINT,
	@Cantidad SMALLINT,
	@Fecha_Compra Datetime,
	@Id_Estado SMALLINT,
	@Id_Moneda SMALLINT,
	@Id_Cliente SMALLINT,
	@Id_Articulo SMALLINT
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

CREATE PROCEDURE SP_MODIFICAR_CUENTA
(
	@Id_Cuenta SMALLINT,
	@Descripcion NVARCHAR (20),
	@Id_Estado SMALLINT
)
AS
UPDATE [Sch_Administrativo].[T_Cuenta]
SET 
	[Descripcion]=@Descripcion,
	[Id_Estado] = @Id_Estado
WHERE [Id_Cuenta] = @Id_Cuenta
GO

CREATE PROCEDURE SP_MODIFICAR_EMPLEADOS
(
	@Id_Empleado SMALLINT,
	@Nombre NVARCHAR (30),
	@Apellidos NVARCHAR (60),
	@Id_Departamento SMALLINT,
	@Id_Roll SMALLINT,
	@Id_Estado SMALLINT
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

CREATE PROCEDURE SP_MODIFICAR_FACTURA
(
	@Numero_Factura SMALLINT,
	@Monto_Factura Money,
	@Fecha_Factura datetime,
	@Id_Estado SMALLINT,
	@Id_Tipo_Pago SMALLINT,
	@Orden_Compra SMALLINT
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

--DELETES

CREATE PROCEDURE SP_ELIMINAR_TIPO_CLIENTE
(	
	@Id_Tipo_Cliente Smallint
)
AS 
DELETE FROM [Sch_General].[T_Tipo_Cliente] 
WHERE [Id_Tipo_Cliente] = @Id_Tipo_Cliente
GO


CREATE PROCEDURE SP_ELIMINAR_TIPO_EMPLEADO
(
	@Id_Tipo_Empleado Smallint
)
AS
DELETE FROM [Sch_General].[T_Tipo_Empleado]
WHERE [Id_Tipo_Empleado] = @Id_Tipo_Empleado
GO

CREATE PROCEDURE SP_ELIMINAR_TIPO_PAGO
(
	@Id_Tipo_Pago Smallint
)
AS
DELETE FROM [Sch_General].[T_Tipo_Pago]
WHERE [Id_Tipo_Pago] = @Id_Tipo_Pago
GO


CREATE PROCEDURE SP_ELIMINAR_INVENTARIO
(
	@Id_Inventario Smallint
)
AS
DELETE FROM[Sch_Administrativo].[T_Inventario]
WHERE [Id_Inventario] = @Id_Inventario
GO

CREATE PROCEDURE SP_ELIMINAR_PROVEEDOR
(
	@Id_Proveedor Smallint
)
AS
DELETE FROM [Sch_Administrativo].[T_Proveedor]
WHERE [Id_Proveedor] = @Id_Proveedor
GO

CREATE PROCEDURE SP_ELIMINAR_ROL
(
	@Id_Rol Smallint
)
AS
DELETE FROM [Sch_Administrativo].[T_Rol]
WHERE [Id_Rol] = @Id_Rol
GO


CREATE PROCEDURE SP_ELIMINAR_ESTADO
(
	@Id_Estado SMALLINT
)
AS
DELETE FROM [Sch_General].[T_Estados] WHERE [Id_Estado] = @Id_Estado
GO

CREATE PROCEDURE SP_ELIMINAR_MONEDA
(
	@Id_Moneda SMALLINT
)
AS
DELETE FROM [Sch_General].[T_Moneda] WHERE [Id_Moneda] = @Id_Moneda
GO

CREATE PROCEDURE SP_ELIMINAR_PAIS
(
	@Codigo_Pais SMALLINT
)
AS
DELETE FROM [Sch_General].[T_Pais] WHERE [Codigo_Pais] = @Codigo_Pais
GO

CREATE PROCEDURE SP_ELIMINAR_ARTICULO
(
	@Id_Articulo SMALLINT
)
AS

DELETE FROM [Sch_General].[T_Articulo] WHERE [Id_Articulo] = @Id_Articulo
GO

CREATE PROCEDURE SP_ELIMINAR_CATEGORIA
(
	@Id_Categoria SMALLINT
)
AS
DELETE FROM [Sch_General].[T_Categoria] WHERE [Id_Categoria] = @Id_Categoria
GO

CREATE PROCEDURE SP_ELIMINAR_DEPARTAMENTO
(
	@Id_Departamento SMALLINT
)
AS
DELETE FROM [Sch_General].[T_Departamento] WHERE [Id_Departamento] = @Id_Departamento
GO

CREATE PROCEDURE SP_ELIMINAR_CLIENTE
(
	@Id_Cliente SMALLINT
)
AS
DELETE FROM [Sch_Administrativo].[T_Cliente] WHERE [Id_Cliente] = @Id_Cliente

GO

CREATE PROCEDURE SP_ELIMINAR_COMPRA
(
	@Orden_Compras SMALLINT
)
AS
DELETE FROM  [Sch_Administrativo].[T_Compras] WHERE [Orden_Compra] = @Orden_Compras

GO

CREATE PROCEDURE SP_ELIMINAR_CUENTA
(
	@Id_Cuenta SMALLINT
)
AS
DELETE FROM [Sch_Administrativo].[T_Cuenta] WHERE [Id_Cuenta] = @Id_Cuenta
GO

CREATE PROCEDURE SP_ELIMINAR_EMPLEADOS
(
	@Id_Empleado SMALLINT
)
AS
DELETE FROM [Sch_Administrativo].[T_Empleados] WHERE [Id_Empleado] = @Id_Empleado
GO

CREATE PROCEDURE SP_ELIMINAR_FACTURA 
(
	@Numero_Factura SMALLINT
)
AS
DELETE FROM [Sch_Administrativo].[T_Factura] WHERE [Numero_Factura] = @Numero_Factura
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


CREATE PROCEDURE SP_LISTAR_CUENTA
AS
SELECT 
	[Id_Cuenta],
	[Descripcion],
	[Id_Estado]
FROM [Sch_Administrativo].[T_Cuenta]
GO

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

--FILTRAR--

CREATE PROCEDURE SP_FILTRAR_TIPO_CLIENTE
(
	@Nombre Nvarchar
)
AS
SELECT
	[Id_Tipo_Cliente]
	[Nombre],
	[Descripcion],
	[Id_Estado]
FROM [Sch_General].[T_Tipo_Cliente] 
WHERE([Id_Tipo_Cliente] LIKE '%'+@Nombre+'%')
GO


CREATE PROCEDURE SP_FILTRAR_TIPO_EMPLEADO
(
	@Nombre Nvarchar
)
AS
SELECT
	[Id_Tipo_Empleado]
	[Nombre],
	[Descripcion],
	[Id_Estado]

FROM [Sch_General].[T_Tipo_Empleado] 
WHERE ([Id_Tipo_Empleado] LIKE '%' +@Nombre+'%')
GO


CREATE PROCEDURE SP_FILTRAR_TIPO_PAGO
(
	@Nombre_Tipo_Pago Nvarchar
)
AS 
SELECT
	[Id_Tipo_Pago]
	[Nombre_Tipo_Pago],
	[Id_Estado]  
FROM [Sch_General].[T_Tipo_Pago]
WHERE ([Id_Tipo_Pago] LIKE '%'+@Nombre_Tipo_Pago+'%')
GO


CREATE PROCEDURE SP_FILTRAR_INVENTARIO
(
	@Id_Inventario SMALLINT
)
AS 
SELECT
	[Id_Inventario]
	[Nombre_Inventario],
	[Cantidad],
	[Id_Estado],
	[Id_Empleado]
FROM [Sch_Administrativo].[T_Inventario]
WHERE([Id_Inventario] LIKE '%'+@Id_Inventario+'%')
GO


CREATE PROCEDURE SP_FILTRAR_PROVEEDOR
(
	@Nombre_Proveedor Nvarchar
)
AS
SELECT
	[Id_Proveedor]
	[Nombre_Proveedor],
	[Descripcion],
	[Id_Estado] 
FROM  [Sch_Administrativo].[T_Proveedor]
WHERE ([Id_Proveedor] LIKE '&'+@Nombre_Proveedor+'&')
GO

CREATE PROCEDURE SP_FILTRAR_ROL
(
	@Nombre Nvarchar
)
AS 
SELECT 
	[Id_Rol]
	[Nombre],
	[Descripcion],
	[Id_Estado]
FROM[Sch_Administrativo].[T_Rol]
WHERE([Id_Rol] LIKE '%'+@Nombre+'%')
GO

CREATE PROCEDURE SP_FILTRAR_ESTADO
(
	@Descripcion Nvarchar
)
AS

SELECT
	[Id_Estado]
	[Descripcion]

FROM [Sch_General].[T_Estados] WHERE ([Id_Estado] LIKE '%' + @Descripcion + '%')
GO

CREATE PROCEDURE SP_FILTRAR_MONEDA
(
	@Nombre Nvarchar
)

AS

SELECT

	[Id_Moneda],
	[Nombre],
	[Id_Estado],
	[Codigo_Pais]

FROM [Sch_General].[T_Moneda] WHERE ([Id_Moneda] LIKE '%' + @Nombre + '%' )
GO

CREATE PROCEDURE SP_FILTRAR_PAIS
(
	@Nombre Nvarchar
)
AS

SELECT
	[Codigo_Pais],
	[Nombre],
	[Id_Estado]

FROM [Sch_General].[T_Pais] WHERE ([Codigo_Pais] LIKE '%' + @Nombre + '%' )
GO

CREATE PROCEDURE SP_FILTRAR_ARTICULO
(
	@Nombre Nvarchar
)
AS

SELECT
	[Id_Articulo],
	[Nombre],
	[Id_Estado],
	[Id_Proveedor],
	[Id_Categoria]

FROM [Sch_General].[T_Articulo] WHERE ([Id_Articulo] LIKE'%' + @Nombre + '%' )
GO

CREATE PROCEDURE SP_FILTRAR_CATEGORIA
(
	@Nombre Nvarchar
)
AS

SELECT
	[Id_Categoria],
	[Nombre],
	[Descripcion],
	[Id_Estado],
	[Id_Articulo],
	[Id_Inventario]

FROM [Sch_General].[T_Categoria] WHERE ([Id_Categoria] LIKE '%' + @Nombre + '%')
GO

CREATE PROCEDURE SP_FILTRAR_DEPARTAMENTO
(
	@Nombre Nvarchar
)
AS

SELECT
	[Id_Departamento],
	[Nombre],
	[Descripcion],
	[Id_Estado]

FROM [Sch_General].[T_Departamento] WHERE ([Id_Departamento] LIKE '%' + @Nombre + '%')
GO
CREATE PROCEDURE SP_FILTRAR_CLIENTE 
(
	@Email Nvarchar
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
FROM [Sch_Administrativo].[T_Cliente] WHERE ([Id_Cliente] LIKE '%' + @Email  +'%')
GO


CREATE PROCEDURE SP_FILTRAR_COMPRA
(
		@Orden_Compra SMALLINT
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

CREATE PROCEDURE SP_FILTRAR_CUENTA
(
	@Id_Cuenta SMALLINT
)

AS
SELECT	
	[Id_Cuenta],
	[Descripcion],
	[Id_Estado]


FROM [Sch_Administrativo].[T_Cuenta] WHERE ([Id_Cuenta] LIKE '%' + @Id_Cuenta +'%')
GO
CREATE PROCEDURE SP_FILTRAR_EMPLEADOS

(
		@Apellidos Nvarchar(60)
)

AS	

SELECT

	[Id_Empleado],
	[Nombre],
	[Apellidos],
	[Id_Departamento],
	[Id_Rol],
	[Id_Estado]

FROM [Sch_Administrativo].[T_Empleados] WHERE ([Id_Empleado] LIKE '%' + @Apellidos +'%')

GO

CREATE PROCEDURE SP_FILTRAR_FACTURA
(
	@Numero_Factura SMALLINT
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



