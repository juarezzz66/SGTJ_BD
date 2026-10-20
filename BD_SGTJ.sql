CREATE DATABASE SGTJ
GO
USE SGTJ;
GO

CREATE TABLE Cargo(
    id_cargo        INT IDENTITY(1,1) PRIMARY KEY,
    nombre_cargo    NVARCHAR(60) NOT NULL,
    descripcion     NVARCHAR(200) NULL
);
GO

CREATE TABLE TipoEquipo(
    id_tipo_equipo  INT IDENTITY(1,1) PRIMARY KEY,
    nombre_tipo     NVARCHAR(60) NOT NULL,
    descripcion     NVARCHAR(200) NULL
);
GO

CREATE TABLE Servicio (
    id_servicio     INT IDENTITY(1,1) PRIMARY KEY,
    nombre_servicio NVARCHAR(80) NOT NULL,
    descripcion     NVARCHAR(300) NULL
);
GO

CREATE TABLE Cliente (
    id_cliente      INT IDENTITY(1,1) PRIMARY KEY,
    razon_social    NVARCHAR(150) NOT NULL,
    ruc             CHAR(11) NOT NULL UNIQUE,
    sector          NVARCHAR(50) NULL,    
    direccion       NVARCHAR(200) NULL,
    telefono        NVARCHAR(20) NULL,
    email           NVARCHAR(100) NULL,
    fecha_registro  DATE NOT NULL DEFAULT GETDATE()
);
GO

CREATE TABLE Proveedor (
    id_proveedor    INT IDENTITY(1,1) PRIMARY KEY,
    razon_social    NVARCHAR(150) NOT NULL,
    tipo_proveedor  NVARCHAR(50) NOT NULL,  
    telefono        NVARCHAR(20) NULL,
    email           NVARCHAR(100) NULL
);
GO

CREATE TABLE Combustible (
    id_combustible      INT IDENTITY(1,1) PRIMARY KEY,
    nombre_combustible  NVARCHAR(50) NOT NULL,          
    unidad_medida       NVARCHAR(20) NOT NULL DEFAULT 'Galones'
);
GO

CREATE TABLE Sede (
    id_sede         INT IDENTITY(1,1) PRIMARY KEY,
    nombre_sede     NVARCHAR(80) NOT NULL,
    direccion       NVARCHAR(200) NULL,
    ciudad          NVARCHAR(60) NULL,
    region          NVARCHAR(60) NULL,
    telefono        NVARCHAR(20) NULL
);
GO

CREATE TABLE Empleado (
    id_empleado     INT IDENTITY(1,1) PRIMARY KEY,
    id_cargo        INT NOT NULL,
    id_sede         INT NULL,
    nombres         NVARCHAR(80) NOT NULL,
    apellidos       NVARCHAR(80) NOT NULL,
    dni             CHAR(8) NOT NULL UNIQUE,
    telefono        NVARCHAR(20) NULL,
    email           NVARCHAR(100) NULL,
    fecha_ingreso   DATE NOT NULL,
    CONSTRAINT FK_Empleado_Cargo FOREIGN KEY (id_cargo) REFERENCES Cargo(id_cargo),
    CONSTRAINT FK_Empleado_Sede FOREIGN KEY (id_sede) REFERENCES Sede(id_sede)
);
GO

CREATE TABLE Equipo (
    id_equipo           INT IDENTITY(1,1) PRIMARY KEY,
    id_tipo_equipo      INT NOT NULL,
    marca               NVARCHAR(50) NOT NULL,
    modelo              NVARCHAR(50) NOT NULL,
    placa_serie         NVARCHAR(20) NOT NULL UNIQUE,
    anio_fabricacion    SMALLINT NULL,
    estado_operativo    NVARCHAR(20) NOT NULL DEFAULT 'Operativo',  
    fecha_adquisicion   DATE NULL,
    CONSTRAINT FK_Equipo_TipoEquipo FOREIGN KEY (id_tipo_equipo) REFERENCES TipoEquipo(id_tipo_equipo),
    CONSTRAINT CK_Equipo_Estado CHECK (estado_operativo IN ('Operativo','Mantenimiento','Fuera de servicio'))
);
GO

CREATE TABLE Cisterna (
    id_cisterna         INT IDENTITY(1,1) PRIMARY KEY,
    id_equipo           INT NOT NULL UNIQUE,
    id_combustible      INT NOT NULL,
    capacidad_galones   DECIMAL(10,2) NOT NULL,
    numero_cisterna     NVARCHAR(20) NOT NULL UNIQUE,
    CONSTRAINT FK_Cisterna_Equipo FOREIGN KEY (id_equipo) REFERENCES Equipo(id_equipo),
    CONSTRAINT FK_Cisterna_Combustible FOREIGN KEY (id_combustible) REFERENCES Combustible(id_combustible)
);
GO

CREATE TABLE Proyecto (
    id_proyecto         INT IDENTITY(1,1) PRIMARY KEY,
    id_cliente          INT NOT NULL,
    nombre_proyecto     NVARCHAR(150) NOT NULL,
    ubicacion           NVARCHAR(150) NULL,
    fecha_inicio        DATE NULL,
    fecha_fin_estimada  DATE NULL,
    estado              NVARCHAR(20) NOT NULL DEFAULT 'En curso', 
    CONSTRAINT FK_Proyecto_Cliente FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    CONSTRAINT CK_Proyecto_Estado CHECK (estado IN ('En curso','Finalizado','Suspendido'))
);
GO

CREATE TABLE ContratoServicio (
    id_contrato     INT IDENTITY(1,1) PRIMARY KEY,
    id_cliente      INT NOT NULL,
    id_proyecto     INT NULL,
    id_servicio     INT NOT NULL,
    fecha_inicio    DATE NOT NULL,
    fecha_fin       DATE NULL,
    monto_total     DECIMAL(12,2) NOT NULL DEFAULT 0,
    estado          NVARCHAR(20) NOT NULL DEFAULT 'Vigente', 
    CONSTRAINT FK_Contrato_Cliente FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    CONSTRAINT FK_Contrato_Proyecto FOREIGN KEY (id_proyecto) REFERENCES Proyecto(id_proyecto),
    CONSTRAINT FK_Contrato_Servicio FOREIGN KEY (id_servicio) REFERENCES Servicio(id_servicio),
    CONSTRAINT CK_Contrato_Estado CHECK (estado IN ('Vigente','Finalizado','Cancelado'))
);
GO

CREATE TABLE AsignacionEquipo (
    id_asignacion_equipo   INT IDENTITY(1,1) PRIMARY KEY,
    id_contrato            INT NOT NULL,
    id_equipo              INT NOT NULL,
    fecha_asignacion       DATE NOT NULL,
    fecha_devolucion       DATE NULL,
    horas_operadas         DECIMAL(8,2) NULL,
    CONSTRAINT FK_AsigEquipo_Contrato FOREIGN KEY (id_contrato) REFERENCES ContratoServicio(id_contrato),
    CONSTRAINT FK_AsigEquipo_Equipo FOREIGN KEY (id_equipo) REFERENCES Equipo(id_equipo)
);
GO

CREATE TABLE AsignacionPersonal (
    id_asignacion_personal INT IDENTITY(1,1) PRIMARY KEY,
    id_contrato            INT NOT NULL,
    id_empleado            INT NOT NULL,
    rol_en_proyecto        NVARCHAR(60) NULL,
    fecha_inicio           DATE NOT NULL,
    fecha_fin              DATE NULL,
    CONSTRAINT FK_AsigPersonal_Contrato FOREIGN KEY (id_contrato) REFERENCES ContratoServicio(id_contrato),
    CONSTRAINT FK_AsigPersonal_Empleado FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
);
GO

CREATE TABLE Mantenimiento (
    id_mantenimiento    INT IDENTITY(1,1) PRIMARY KEY,
    id_equipo           INT NOT NULL,
    tipo_mantenimiento  NVARCHAR(20) NOT NULL,  
    fecha_mantenimiento DATE NOT NULL,
    costo               DECIMAL(10,2) NULL,
    descripcion         NVARCHAR(300) NULL,
    CONSTRAINT FK_Mantenimiento_Equipo FOREIGN KEY (id_equipo) REFERENCES Equipo(id_equipo),
    CONSTRAINT CK_Mantenimiento_Tipo CHECK (tipo_mantenimiento IN ('Preventivo','Correctivo'))
);
GO

CREATE TABLE PolizaSeguro (
    id_poliza           INT IDENTITY(1,1) PRIMARY KEY,
    id_equipo           INT NOT NULL,
    id_proveedor        INT NOT NULL,
    numero_poliza       NVARCHAR(40) NOT NULL UNIQUE,
    tipo_cobertura      NVARCHAR(60) NULL,
    fecha_inicio        DATE NOT NULL,
    fecha_vencimiento   DATE NOT NULL,
    monto_prima         DECIMAL(10,2) NULL,
    CONSTRAINT FK_Poliza_Equipo FOREIGN KEY (id_equipo) REFERENCES Equipo(id_equipo),
    CONSTRAINT FK_Poliza_Proveedor FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor)
);
GO

CREATE TABLE AbastecimientoCombustible (
    id_abastecimiento      INT IDENTITY(1,1) PRIMARY KEY,
    id_cisterna             INT NOT NULL,
    id_combustible           INT NOT NULL,
    id_contrato              INT NULL,
    id_proyecto               INT NULL,
    id_empleado                INT NOT NULL,         
    fecha_abastecimiento        DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
    cantidad_galones             DECIMAL(10,2) NOT NULL,
    ubicacion                     NVARCHAR(150) NULL,
    observaciones                  NVARCHAR(300) NULL,
    CONSTRAINT FK_Abastecimiento_Cisterna FOREIGN KEY (id_cisterna) REFERENCES Cisterna(id_cisterna),
    CONSTRAINT FK_Abastecimiento_Combustible FOREIGN KEY (id_combustible) REFERENCES Combustible(id_combustible),
    CONSTRAINT FK_Abastecimiento_Contrato FOREIGN KEY (id_contrato) REFERENCES ContratoServicio(id_contrato),
    CONSTRAINT FK_Abastecimiento_Proyecto FOREIGN KEY (id_proyecto) REFERENCES Proyecto(id_proyecto),
    CONSTRAINT FK_Abastecimiento_Empleado FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
);
GO

CREATE TABLE Certificacion (
    id_certificacion       INT IDENTITY(1,1) PRIMARY KEY,
    id_empleado             INT NOT NULL,
    nombre_certificacion     NVARCHAR(100) NOT NULL, 
    entidad_emisora           NVARCHAR(100) NULL,
    fecha_emision              DATE NOT NULL,
    fecha_vencimiento           DATE NULL,
    CONSTRAINT FK_Certificacion_Empleado FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
);
GO

CREATE TABLE Factura (
    id_factura      INT IDENTITY(1,1) PRIMARY KEY,
    id_contrato     INT NOT NULL,
    serie_numero    NVARCHAR(20) NOT NULL UNIQUE,
    fecha_emision   DATE NOT NULL,
    monto           DECIMAL(12,2) NOT NULL,
    estado_pago     NVARCHAR(20) NOT NULL DEFAULT 'Pendiente',
    CONSTRAINT FK_Factura_Contrato FOREIGN KEY (id_contrato) REFERENCES ContratoServicio(id_contrato),
    CONSTRAINT CK_Factura_Estado CHECK (estado_pago IN ('Pendiente','Pagada','Vencida','Anulada'))
);
GO

CREATE TABLE Pago (
    id_pago         INT IDENTITY(1,1) PRIMARY KEY,
    id_factura      INT NOT NULL,
    fecha_pago      DATE NOT NULL,
    monto_pagado    DECIMAL(12,2) NOT NULL,
    medio_pago      NVARCHAR(30) NULL,   
    CONSTRAINT FK_Pago_Factura FOREIGN KEY (id_factura) REFERENCES Factura(id_factura)
);
GO
