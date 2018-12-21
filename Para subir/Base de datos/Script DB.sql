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
	 [Id_Estado] Int Identity (1,1) Not Null,
	 [Descripcion] Nvarchar(20) Not Null,
	Constraint [Pk_Estado] Primary Key Clustered
	(
		[Id_Estado] Asc
	)
)

Create Table [Sch_Administrativo].[T_Cuenta]
(
	[Id_Cuenta] Int Identity (1,1) Not Null,
	[Descripcion] Nvarchar(20) Not Null,
	[Id_Estado] Int Not Null
	
	Constraint [Pk_Cuenta] Primary Key Clustered
	(
		[Id_Cuenta] Asc
	)
)
Create Table [Sch_General].[T_Tipo_Cliente]
(
	[Id_Tipo_Cliente] Int Identity (1,1) Not Null,
	[Nombre] Nvarchar(30) Not Null,
	[Descripcion] Nvarchar(30),
	[Id_Estado] Int Not Null

	Constraint [Pk_Tipo_Cliente] Primary Key Clustered
	(
		[Id_Tipo_Cliente] ASC
	)
)
Create Table [Sch_General].[T_Departamento]
(
	[Id_Departamento] Int Identity (1,1) Not Null,
	[Nombre] NVarchar(20) Not Null,
	[Descripcion] Nvarchar (30),
	[Id_Estado] Int Not Null
	Constraint [Pk_Departamento] Primary Key Clustered
	(
		[Id_Departamento] Asc
	)
)
Create Table [Sch_Administrativo].[T_Rol]
(
	[Id_Rol] Int Identity (1,1) Not null,
	[Nombre] Nvarchar(20) Not Null,
	[Descripcion] Nvarchar(30),
	[Id_Estado] Int Not null
	Constraint [Pk_Rol] Primary Key Clustered
	(
		[Id_Rol] Asc
	)
)
Create Table [Sch_Administrativo].[T_Empleados]
(
	[Id_Empleado] Int Identity (1,1) Not Null,
	[Nombre] Nvarchar(30) Not Null,
	[Apellidos] Nvarchar(60) Not Null,
	[Id_Departamento] Int Not Null,
	[Id_Rol] Int Not null,
	[Id_Estado] Int not null
	Constraint [Pk_Empleado] Primary Key Clustered
	(
		[Id_Empleado] Asc
	)
)

Create Table [Sch_General].[T_Tipo_Empleado]
(
	[Id_Tipo_Empleado] Int Identity(1,1) Not Null,
	[Nombre] Nvarchar(20) Not Null,
	[Descripcion] Nvarchar(30),
	[Id_Estado] Int Not Null
	Constraint [Pk_Tipo_Empleado] Primary Key Clustered
	(
		[Id_Tipo_Empleado] Asc
	)
)
Create Table [Sch_Administrativo].[T_Cliente]
(
	[Id_Cliente] Int Identity(1,1) Not Null,
	[Nombre] Nvarchar(30) Not Null,
	[Apellidos] Nvarchar(60) Not Null,
	[Direccion] Nvarchar (150) Not Null,
	[Email] Nvarchar(30) Not Null,
	[Id_Tipo_Cliente] Int Not Null,
	[Id_Estado] Int Not Null,
	[Id_Cuenta] Int Not Null,
	[Codigo_Pais] Int Not Null
	Constraint [Pk_Cliente] Primary Key Clustered
	(
		[Id_Cliente] Asc
	)
)

Create Table [Sch_General].[T_Pais]
(
	[Codigo_Pais] Int Not Null,
	[Nombre] Nvarchar(20) Not Null,
	[Id_Estado] Int
	Constraint [Pk_Pais] Primary Key Clustered
	(
		[Codigo_Pais] Asc
	)
)

Create Table [Sch_General].[T_Moneda]
(
	[Id_Moneda] Int Identity (1,1) Not Null,
	[Nombre] Nvarchar(20) Not Null,
	[Id_Estado] Int Not Null,
	[Codigo_Pais] Int Not Null
	Constraint [Pk_Moneda] Primary Key Clustered
	(
		[Id_Moneda] Asc
	)
)
Create Table [Sch_Administrativo].[T_Factura]
(
	[Numero_Factura] Int Identity (1,1) Not Null,
	[Monto_Factura] Money Not Null,
	[Fecha_Factura] Datetime Not Null,
	[Id_Estado] Int Not Null,
	[Id_Tipo_Pago] Int Not Null,
	[Orden_Compra] Int Not Null

	Constraint [Pk_Factura] Primary Key Clustered
	(
		[Numero_Factura] Asc
	)
)
Create Table [Sch_General].[T_Articulo]
(
	[Id_Articulo] Int Identity (1,1) Not Null,
	[Nombre] Nvarchar(20) Not Null,
	[Id_Estado] Int Not Null,
	[Id_Proveedor] Int Not Null,
	[Id_Categoria] Int Not Null
	Constraint [Pk_Articulo] Primary Key Clustered
	(
		[Id_Articulo] Asc
	)
)
Create Table [Sch_Administrativo].[T_Proveedor]
(
	[Id_Proveedor] Int Identity (1,1) Not Null,
	[Nombre_Proveedor] Nvarchar(20)Not Null,
	[Descripcion] Nvarchar(30),
	[Id_Estado] Int Not Null
	Constraint [Pk_Proveedor] Primary Key Clustered
	(
		[Id_Proveedor] Asc
	)
)
Create Table [Sch_Administrativo].[T_Inventario]
(
	[Id_Inventario] Int Identity (1,1) Not Null,
	[Nombre_Inventario] Nvarchar(20) Not Null,
	[Cantidad] Int Not Null,
	[Id_Estado] Int Not Null,
	[Id_Empleado] Int Not Null
	Constraint [Pk_Inventario] Primary Key Clustered
	(
		[Id_Inventario] Asc
	)
)
Create Table [Sch_General].[T_Categoria]
(
	[Id_Categoria] Int Identity (1,1) Not Null,
	[Nombre] Nvarchar(20) Not Null,
	[Descripcion] Nvarchar(30),
	[Id_Estado] Int Not Null,
	[Id_Articulo] Int Not Null,
	[Id_Inventario] Int Not Null,

	Constraint [Pk_Categoria] Primary Key Clustered
	(
		[Id_Categoria] Asc
	)
)
Create Table [Sch_General].[T_Tipo_Pago]
(
	[Id_Tipo_Pago] Int Identity (1,1) Not Null,
	[Nombre_Tipo_Pago] Nvarchar(20) Not Null,
	[Id_Estado] Int Not Null
	Constraint [Pk_Tipo_Pago] Primary Key Clustered
	(
		[Id_Tipo_Pago] Asc
	)
)
Create Table [Sch_Administrativo].[T_Compras]
(
	[Orden_Compra] Int Identity (1,1) Not Null,
	[Cantidad] Int Not null,
	[Fecha_Compra] Datetime Not Null,
	[Id_Estado] Int Not Null,
	[Id_Moneda]Int Not Null,
	[Id_Cliente]Int Not Null,
	[Id_Articulo]Int Not Null
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