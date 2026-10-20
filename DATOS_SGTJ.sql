USE [SGTJ] 
GO

INSERT INTO Cargo (nombre_cargo, descripcion) VALUES
('Gerente General','Responsable de la direccion general de la empresa'),
('Administrador','Responsable de la gestion administrativa'),
('Ingeniero Residente','Responsable tecnico de los proyectos'),
('Supervisor de Operaciones','Supervisa las actividades operativas'),
('Operador de Maquinaria','Opera maquinaria pesada'),
('Conductor','Conduce vehiculos y unidades de transporte'),
('Tecnico de Mantenimiento','Realiza mantenimiento preventivo y correctivo'),
('Responsable de Combustible','Controla el abastecimiento de combustible');

INSERT INTO TipoEquipo (nombre_tipo, descripcion) VALUES
('Excavadora','Maquinaria para excavacion y movimiento de tierras'),
('Cargador Frontal','Equipo para carga y movimiento de materiales'),
('Retroexcavadora','Equipo para excavacion y carga'),
('Motoniveladora','Equipo para nivelacion de terrenos'),
('Rodillo Compactador','Equipo para compactacion de superficies'),
('Volquete','Vehiculo para transporte de material'),
('Camioneta 4x4','Unidad para transporte y supervision de operaciones'),
('Minibus','Unidad para transporte de personal'),
('Torre de Iluminacion','Equipo para iluminacion de zonas de trabajo'),
('Cisterna de Combustible','Unidad destinada al abastecimiento de combustible');

INSERT INTO Servicio (nombre_servicio, descripcion) VALUES
('Ejecucion de Proyectos Civiles','Ejecucion de obras civiles para mineria, construccion e industria'),
('Movimiento de Tierras','Excavacion, corte, relleno y nivelacion de terrenos'),
('Alquiler de Maquinaria Pesada','Alquiler de maquinaria pesada para operaciones'),
('Alquiler de Camionetas 4x4','Alquiler de camionetas para operaciones y supervision'),
('Alquiler de Unidades para Transporte de Personal','Transporte de personal mediante unidades habilitadas'),
('Alquiler de Torres de Iluminacion','Alquiler de torres para iluminacion de operaciones'),
('Cisternas de Combustible','Abastecimiento de combustible para operaciones mineras');

INSERT INTO Cliente
(razon_social,ruc,sector,direccion,telefono,email,fecha_registro) VALUES
('Gold Fields La Cima S.A.','20507828915','Mineria','Cajamarca - Cajamarca','076360000','contacto@goldfields.com.pe','2015-03-10'),
('CCA PERU S.A.C.','20529325488','Construccion','Cajamarca - Cajamarca','076345210','operaciones@ccaperu.com.pe','2017-06-15'),
('Contratista San Nicolas E.I.R.L.','20602058795','Construccion','Cajamarca - Cajamarca','976452180','contacto@sannicolas.com.pe','2019-02-20'),
('Galena Contratistas Generales Mineria y Construccion S.R.L.','20495687890','Mineria','Cajamarca - Cajamarca','976325410','operaciones@galena.com.pe','2018-08-12'),
('Cumbra Peru S.A.','20100154057','Construccion','Lima - Lima','014110000','contacto@cumbra.com.pe','2014-04-18'),
('Bechtel Peru S.C.R.L.','20603629451','Ingenieria','Lima - Lima','014150000','contacto@bechtel.com','2018-01-25'),
('Transportes M. Catalan S.A.C.','20369120817','Transporte','Cajamarca - Cajamarca','976541230','administracion@transportescatalan.com','2020-05-10'),
('Minera Yanacocha S.R.L.','20137291313','Mineria','Cajamarca - Cajamarca','076584000','contacto@yanacocha.com','2014-07-21'),
('Compañia Minera Coimolache S.A.','20140688640','Mineria','Hualgayoc - Cajamarca','076362000','operaciones@coimolache.com.pe','2016-09-14'),
('Minera La Zanja S.R.L.','20507975977','Mineria','Santa Cruz - Cajamarca','076365500','contacto@lazanja.com.pe','2017-03-08'),
('Consorcio La Cima','20608000001','Construccion','Cajamarca - Cajamarca','976632140','administracion@consorciolacima.pe','2025-11-20'),
('Consorcio Los Andes','20608000002','Construccion','Cajamarca - Cajamarca','976521630','administracion@consorciolosandes.pe','2026-01-15'),
('Transportes Sagitario','20608000003','Transporte','Cajamarca - Cajamarca','976415220','contacto@transportessagitario.pe','2026-02-10'),
('Contratista Andina Norte S.A.C.','20608000004','Construccion','Cajamarca - Cajamarca','976305410','contacto@andinanorte.pe','2026-03-05');

INSERT INTO Proveedor
(razon_social,tipo_proveedor,telefono,email) VALUES
('Ferreyros S.A.','Maquinaria','017080000','ventas@ferreyros.com.pe'),
('Komatsu-Mitsui Maquinarias Peru S.A.','Maquinaria','016150000','ventas@kmmp.com.pe'),
('Divemotor S.A.','Vehiculos','016130000','ventas@divemotor.com.pe'),
('Toyota del Peru S.A.','Vehiculos','016120000','ventas@toyotaperu.com.pe'),
('La Positiva Seguros','Seguros','016121212','atencion@lapositiva.com.pe'),
('RIMAC Seguros','Seguros','016251919','atencion@rimac.com.pe'),
('MAPFRE Peru','Seguros','016130000','atencion@mapfre.com.pe'),
('Repsol Comercial S.A.C.','Combustible','016150500','ventas@repsol.com'),
('Petroperu S.A.','Combustible','016144444','ventas@petroperu.com.pe'),
('Taller Diesel Cajamarca S.A.C.','Mantenimiento','976456321','servicios@tallerdieselcajamarca.pe');

INSERT INTO Combustible
(nombre_combustible,unidad_medida) VALUES
('Diesel B5 S50','Galones'),
('Gasohol Regular','Galones'),
('Gasolina Premium','Galones');

INSERT INTO Sede
(nombre_sede,direccion,ciudad,region,telefono) VALUES
('Sede Principal Cajamarca','Prol. Cinco Esquinas Nro. 1577, San Antonio','Cajamarca','Cajamarca','927286962');

INSERT INTO Empleado
(id_cargo,id_sede,nombres,apellidos,dni,telefono,email,fecha_ingreso) VALUES
(1,1,'Cristobal','Juarez Sanchez','DEMO0001','927286962','gerencia@sgtjuarez.com','2017-01-15'),
(2,1,'Rosa','Cabrera Mendoza','DEMO0002','965464653','administracion@sgtjuarez.com','2018-03-10'),
(3,1,'Carlos','Vasquez Torres','DEMO0003','976321450','ingenieria@sgtjuarez.com','2019-06-17'),
(4,1,'Miguel','Sanchez Rojas','DEMO0004','976452130','supervision@sgtjuarez.com','2020-02-08'),
(4,1,'Daniel','Huaman Perez','DEMO0005','976451236','supervision2@sgtjuarez.com','2022-04-10'),
(5,1,'Juan','Perez Diaz','DEMO0006','976325410','operador1@sgtjuarez.com','2020-08-03'),
(5,1,'Luis','Cabrera Silva','DEMO0007','976214530','operador2@sgtjuarez.com','2021-01-11'),
(5,1,'Pedro','Mendoza Ruiz','DEMO0008','976185420','operador3@sgtjuarez.com','2021-05-16'),
(5,1,'Jorge','Torres Chavez','DEMO0009','976365410','operador4@sgtjuarez.com','2022-01-09'),
(5,1,'Oscar','Vargas Luna','DEMO0010','976321874','operador5@sgtjuarez.com','2024-02-05'),
(6,1,'Edwin','Lopez Castillo','DEMO0011','976452780','conductor1@sgtjuarez.com','2020-04-20'),
(6,1,'Marco','Fernandez Ruiz','DEMO0012','976365214','conductor2@sgtjuarez.com','2021-07-12'),
(6,1,'Victor','Quispe Flores','DEMO0013','976541230','conductor3@sgtjuarez.com','2022-03-14'),
(7,1,'Raul','Morales Diaz','DEMO0014','976214785','mantenimiento@sgtjuarez.com','2019-09-02'),
(8,1,'Alberto','Rojas Silva','DEMO0015','976325874','combustible@sgtjuarez.com','2020-11-16');

INSERT INTO Equipo
(id_tipo_equipo,marca,modelo,placa_serie,anio_fabricacion,estado_operativo,fecha_adquisicion) VALUES
(1,'Caterpillar','320D','EXC-001',2018,'Operativo','2019-02-15'),
(1,'Komatsu','PC210LC','EXC-002',2020,'Operativo','2021-03-20'),
(2,'Caterpillar','950M','CAR-001',2017,'Operativo','2018-06-10'),
(3,'Caterpillar','420F','RET-001',2020,'Operativo','2021-11-12'),
(3,'JCB','3CX','RET-002',2019,'Operativo','2020-05-18'),
(4,'Caterpillar','140K','MOT-001',2017,'Operativo','2018-08-22'),
(5,'Bomag','BW211D','ROD-001',2018,'Operativo','2019-09-14'),
(6,'Volvo','FMX 440','VOL-001',2019,'Operativo','2020-01-25'),
(6,'Volvo','FMX 420','VOL-002',2021,'Operativo','2022-02-18'),
(6,'Mercedes-Benz','Actros','VOL-003',2018,'Operativo','2019-04-11'),
(7,'Toyota','Hilux','CAM-001',2019,'Operativo','2020-09-15'),
(7,'Toyota','Hilux','CAM-002',2021,'Operativo','2022-10-20'),
(7,'Toyota','Hilux','CAM-003',2023,'Operativo','2023-05-12'),
(7,'Mitsubishi','L200','CAM-004',2020,'Operativo','2021-02-16'),
(8,'Mercedes-Benz','Sprinter','MIN-001',2019,'Operativo','2020-10-08'),
(8,'Hyundai','County','MIN-002',2020,'Operativo','2021-12-15'),
(9,'Atlas Copco','HiLight','TOR-001',2020,'Operativo','2021-01-20'),
(9,'Generac','MLT6','TOR-002',2022,'Operativo','2022-09-10'),
(10,'International','7600','CIS-001',2019,'Operativo','2020-04-16'),
(10,'Mercedes-Benz','Atego','CIS-002',2021,'Operativo','2022-06-20');

INSERT INTO Cisterna
(id_equipo,id_combustible,capacidad_galones,numero_cisterna) VALUES
(19,1,5000,'CIS-001'),
(20,1,4000,'CIS-002');

INSERT INTO Proyecto
(id_cliente,nombre_proyecto,ubicacion,fecha_inicio,fecha_fin_estimada,estado) VALUES
(1,'Mejoramiento de plataforma operativa','Cerro Corona - Hualgayoc','2026-04-01','2026-04-25','Finalizado'),
(2,'Alquiler de maquinaria para plataforma industrial','Cajamarca','2026-04-08','2026-05-10','Finalizado'),
(3,'Ejecucion de obras civiles zona norte','Cajamarca','2026-04-12','2026-05-20','Finalizado'),
(4,'Iluminacion de zona operativa','Hualgayoc','2026-04-20','2026-05-15','Finalizado'),
(5,'Maquinaria para infraestructura auxiliar','Cajamarca','2026-05-05','2026-06-10','Finalizado'),
(6,'Supervision y movilidad operativa','Cajamarca','2026-05-12','2026-06-15','Finalizado'),
(7,'Movimiento de tierras zona sur','Cajamarca','2026-05-20','2026-06-20','Finalizado'),
(11,'Construccion de plataforma auxiliar','Cajamarca','2026-05-25','2026-06-25','Finalizado'),
(8,'Maquinaria para mantenimiento de vias','Cajamarca','2026-06-10','2026-07-30','Finalizado'),
(9,'Obras civiles en zona minera','Hualgayoc','2026-06-15','2026-07-25','Finalizado'),
(12,'Transporte de personal operativo','Cajamarca','2026-06-20','2026-07-20','Finalizado'),
(10,'Alquiler de maquinaria para accesos','Santa Cruz','2026-07-05','2026-08-05','Finalizado'),
(13,'Abastecimiento de combustible fase inicial','Hualgayoc','2026-07-10','2026-08-31','Finalizado'),
(1,'Movimiento de tierras ampliacion operativa','Cajamarca','2026-07-20','2026-08-15','Finalizado'),
(4,'Transporte 4x4 para supervision','Hualgayoc','2026-07-22','2026-08-20','Finalizado'),
(2,'Ejecucion de obras complementarias','Cajamarca','2026-08-01','2026-08-30','Finalizado'),
(9,'Maquinaria para ampliacion operativa','Hualgayoc','2026-08-05','2026-09-10','Finalizado'),
(14,'Abastecimiento de combustible para obra','Cajamarca','2026-08-10','2026-09-10','Finalizado'),
(13,'Abastecimiento de combustible campaña septiembre','Hualgayoc','2026-09-01','2026-09-15','En curso');

INSERT INTO ContratoServicio
(id_cliente,id_proyecto,id_servicio,fecha_inicio,fecha_fin,monto_total,estado) VALUES
(1,1,2,'2026-04-01','2026-04-25',24000,'Finalizado'),
(2,2,3,'2026-04-08','2026-05-10',18000,'Finalizado'),
(3,3,1,'2026-04-12','2026-05-20',32000,'Finalizado'),
(4,4,6,'2026-04-20','2026-05-15',15000,'Finalizado'),
(5,5,3,'2026-05-05','2026-06-10',26000,'Finalizado'),
(6,6,4,'2026-05-12','2026-06-15',12000,'Finalizado'),
(7,7,2,'2026-05-20','2026-06-20',28000,'Finalizado'),
(11,8,1,'2026-05-25','2026-06-25',20000,'Finalizado'),
(8,9,3,'2026-06-10','2026-07-30',35000,'Finalizado'),
(9,10,1,'2026-06-15','2026-07-25',16000,'Finalizado'),
(12,11,5,'2026-06-20','2026-07-20',22000,'Finalizado'),
(10,12,3,'2026-07-05','2026-08-05',14000,'Finalizado'),
(13,13,7,'2026-07-10','2026-08-31',30000,'Finalizado'),
(1,14,2,'2026-07-20','2026-08-15',24000,'Finalizado'),
(4,15,4,'2026-07-22','2026-08-20',18000,'Finalizado'),
(2,16,1,'2026-08-01','2026-08-30',27000,'Finalizado'),
(9,17,3,'2026-08-05','2026-09-10',16000,'Finalizado'),
(14,18,7,'2026-08-10','2026-09-10',22000,'Finalizado'),
(13,19,7,'2026-09-01','2026-09-15',15000,'Vigente');

INSERT INTO AsignacionEquipo
(id_contrato,id_equipo,fecha_asignacion,fecha_devolucion,horas_operadas) VALUES
(1,1,'2026-04-01','2026-04-25',142),
(1,6,'2026-04-03','2026-04-24',118),
(2,3,'2026-04-08','2026-05-10',185),
(2,8,'2026-04-10','2026-05-08',162),
(3,4,'2026-04-12','2026-05-20',156),
(3,7,'2026-04-15','2026-05-18',124),
(3,10,'2026-04-18','2026-05-16',138),
(4,17,'2026-04-20','2026-05-15',96),
(5,2,'2026-05-05','2026-06-10',210),
(5,5,'2026-05-06','2026-06-08',174),
(6,11,'2026-05-12','2026-06-15',620),
(6,12,'2026-05-15','2026-06-14',585),
(7,4,'2026-05-20','2026-06-20',168),
(7,10,'2026-05-22','2026-06-18',150),
(8,6,'2026-05-25','2026-06-25',180),
(8,7,'2026-05-27','2026-06-23',132),
(9,3,'2026-06-10','2026-07-30',225),
(9,8,'2026-06-12','2026-07-28',204),
(10,1,'2026-06-15','2026-07-25',170),
(10,7,'2026-06-18','2026-07-23',130),
(11,15,'2026-06-20','2026-07-20',720),
(11,16,'2026-06-22','2026-07-18',680),
(12,2,'2026-07-05','2026-08-05',168),
(12,5,'2026-07-07','2026-08-03',142),
(13,19,'2026-07-10','2026-08-31',410),
(14,1,'2026-07-20','2026-08-15',160),
(14,6,'2026-07-22','2026-08-13',145),
(15,13,'2026-07-22','2026-08-20',710),
(15,14,'2026-07-25','2026-08-18',650),
(16,4,'2026-08-01','2026-08-30',175),
(16,7,'2026-08-03','2026-08-28',132),
(17,3,'2026-08-05','2026-09-10',188),
(17,9,'2026-08-07','2026-09-08',165),
(18,20,'2026-08-10','2026-09-10',305),
(19,19,'2026-09-01','2026-09-15',185);

INSERT INTO AsignacionPersonal
(id_contrato,id_empleado,rol_en_proyecto,fecha_inicio,fecha_fin) VALUES
(1,3,'Ingeniero Residente','2026-04-01','2026-04-25'),
(1,6,'Operador de Excavadora','2026-04-01','2026-04-25'),
(2,4,'Supervisor de Operaciones','2026-04-08','2026-05-10'),
(2,7,'Operador de Cargador','2026-04-08','2026-05-10'),
(3,3,'Ingeniero Residente','2026-04-12','2026-05-20'),
(3,8,'Operador de Retroexcavadora','2026-04-12','2026-05-20'),
(4,5,'Supervisor de Operaciones','2026-04-20','2026-05-15'),
(4,10,'Operador de Torre','2026-04-20','2026-05-15'),
(5,4,'Supervisor de Operaciones','2026-05-05','2026-06-10'),
(5,6,'Operador de Excavadora','2026-05-05','2026-06-10'),
(6,5,'Supervisor de Operaciones','2026-05-12','2026-06-15'),
(6,11,'Conductor 4x4','2026-05-12','2026-06-15'),
(7,14,'Supervisor de Operaciones','2026-05-20','2026-06-20'),
(7,9,'Operador de Retroexcavadora','2026-05-20','2026-06-20'),
(8,3,'Ingeniero Residente','2026-05-25','2026-06-25'),
(8,8,'Operador de Motoniveladora','2026-05-25','2026-06-25'),
(9,4,'Supervisor de Operaciones','2026-06-10','2026-07-30'),
(9,7,'Operador de Cargador','2026-06-10','2026-07-30'),
(10,3,'Ingeniero Residente','2026-06-15','2026-07-25'),
(10,6,'Operador de Excavadora','2026-06-15','2026-07-25'),
(11,5,'Supervisor de Operaciones','2026-06-20','2026-07-20'),
(11,11,'Conductor de Personal','2026-06-20','2026-07-20'),
(12,14,'Supervisor de Operaciones','2026-07-05','2026-08-05'),
(12,9,'Operador de Cargador','2026-07-05','2026-08-05'),
(13,4,'Supervisor de Operaciones','2026-07-10','2026-08-31'),
(13,15,'Responsable de Combustible','2026-07-10','2026-08-31'),
(13,12,'Conductor de Cisterna','2026-07-10','2026-08-31'),
(14,5,'Supervisor de Operaciones','2026-07-20','2026-08-15'),
(14,8,'Operador de Excavadora','2026-07-20','2026-08-15'),
(15,14,'Supervisor de Operaciones','2026-07-22','2026-08-20'),
(15,13,'Conductor 4x4','2026-07-22','2026-08-20'),
(16,3,'Ingeniero Residente','2026-08-01','2026-08-30'),
(16,6,'Operador de Retroexcavadora','2026-08-01','2026-08-30'),
(17,4,'Supervisor de Operaciones','2026-08-05','2026-09-10'),
(17,7,'Operador de Cargador','2026-08-05','2026-09-10'),
(18,5,'Supervisor de Operaciones','2026-08-10','2026-09-10'),
(18,15,'Responsable de Combustible','2026-08-10','2026-09-10'),
(18,12,'Conductor de Cisterna','2026-08-10','2026-09-10'),
(19,5,'Supervisor de Operaciones','2026-09-01','2026-09-15'),
(19,15,'Responsable de Combustible','2026-09-01','2026-09-15'),
(19,12,'Conductor de Cisterna','2026-09-01','2026-09-15');

INSERT INTO Mantenimiento
(id_equipo,tipo_mantenimiento,fecha_mantenimiento,costo,descripcion) VALUES
(1,'Preventivo','2025-11-15',2100,'Servicio preventivo general'),
(2,'Preventivo','2026-01-20',2250,'Cambio de filtros y lubricantes'),
(3,'Correctivo','2026-04-28',3200,'Reparacion del sistema hidraulico'),
(4,'Preventivo','2026-05-03',1450,'Servicio preventivo de motor'),
(5,'Correctivo','2026-05-24',2800,'Reparacion del sistema de transmision'),
(6,'Preventivo','2026-06-05',1700,'Revision de motor y cuchilla'),
(7,'Preventivo','2026-06-18',1250,'Servicio de compactacion'),
(8,'Correctivo','2026-06-25',3100,'Mantenimiento del sistema de frenos'),
(9,'Preventivo','2026-07-02',1650,'Cambio de filtros y lubricantes'),
(10,'Preventivo','2026-07-18',1800,'Revision preventiva'),
(11,'Correctivo','2026-07-26',2350,'Cambio de componentes de suspension'),
(12,'Preventivo','2026-08-04',1450,'Servicio preventivo general'),
(13,'Preventivo','2026-08-09',1550,'Revision de motor y frenos'),
(14,'Correctivo','2026-08-14',2600,'Reparacion del sistema de direccion'),
(15,'Preventivo','2026-08-19',1950,'Mantenimiento preventivo de minibus'),
(16,'Preventivo','2026-08-22',1850,'Revision del sistema de refrigeracion'),
(17,'Preventivo','2026-05-28',1350,'Revision de iluminacion y generador'),
(18,'Preventivo','2026-08-27',1450,'Revision de iluminacion y generador'),
(19,'Preventivo','2026-08-28',2900,'Revision integral de cisterna'),
(20,'Preventivo','2026-09-02',2750,'Mantenimiento preventivo de cisterna');

INSERT INTO PolizaSeguro
(id_equipo,id_proveedor,numero_poliza,tipo_cobertura,fecha_inicio,fecha_vencimiento,monto_prima) VALUES
(1,5,'POL-2026-001','Todo riesgo','2026-01-15','2027-01-15',4200),
(2,6,'POL-2026-002','Todo riesgo','2026-02-10','2027-02-10',4400),
(3,5,'POL-2026-003','Todo riesgo','2026-03-05','2027-03-05',3900),
(4,6,'POL-2026-004','Todo riesgo','2026-01-20','2027-01-20',3200),
(5,7,'POL-2026-005','Todo riesgo','2026-02-18','2027-02-18',3100),
(6,5,'POL-2026-006','Todo riesgo','2026-03-12','2027-03-12',3500),
(7,6,'POL-2026-007','Todo riesgo','2026-01-25','2027-01-25',2800),
(8,5,'POL-2026-008','Todo riesgo','2026-02-05','2027-02-05',4600),
(9,6,'POL-2026-009','Todo riesgo','2026-03-15','2027-03-15',4550),
(10,7,'POL-2026-010','Todo riesgo','2026-02-22','2027-02-22',4300),
(11,5,'POL-2026-011','Vehicular','2026-01-10','2027-01-10',2500),
(12,6,'POL-2026-012','Vehicular','2026-02-15','2027-02-15',2550),
(13,7,'POL-2026-013','Vehicular','2026-03-01','2027-03-01',2700),
(14,5,'POL-2026-014','Vehicular','2026-01-18','2027-01-18',2400),
(15,6,'POL-2026-015','Transporte de personal','2026-02-08','2027-02-08',3100),
(16,7,'POL-2026-016','Transporte de personal','2026-03-08','2027-03-08',3200),
(17,5,'POL-2026-017','Equipo movil','2026-01-12','2027-01-12',2100),
(18,6,'POL-2026-018','Equipo movil','2026-02-12','2027-02-12',2200),
(19,7,'POL-2026-019','Transporte de combustible','2026-01-05','2027-01-05',5200),
(20,5,'POL-2026-020','Transporte de combustible','2026-02-01','2027-02-01',5000);

INSERT INTO AbastecimientoCombustible
(id_cisterna,id_combustible,id_contrato,id_proyecto,id_empleado,fecha_abastecimiento,cantidad_galones,ubicacion,observaciones) VALUES
(1,1,13,13,15,'2026-07-12 08:30:00',850,'Campamento minero Hualgayoc','Abastecimiento programado'),
(1,1,13,13,12,'2026-07-18 09:15:00',920,'Campamento minero Hualgayoc','Abastecimiento de equipos'),
(1,1,13,13,15,'2026-07-25 08:45:00',780,'Zona operativa Hualgayoc','Abastecimiento programado'),
(2,1,13,13,12,'2026-08-02 10:00:00',880,'Zona operativa Hualgayoc','Abastecimiento de maquinaria'),
(2,1,13,13,15,'2026-08-12 09:30:00',940,'Campamento minero Hualgayoc','Abastecimiento programado'),
(2,1,13,13,12,'2026-08-22 08:50:00',760,'Zona operativa Hualgayoc','Abastecimiento de equipos'),
(1,1,18,18,15,'2026-08-15 09:10:00',820,'Cajamarca','Servicio de abastecimiento'),
(1,1,18,18,12,'2026-08-22 10:20:00',900,'Cajamarca','Abastecimiento programado'),
(2,1,18,18,15,'2026-09-01 08:30:00',780,'Cajamarca','Abastecimiento de equipos'),
(2,1,18,18,12,'2026-09-06 09:00:00',850,'Cajamarca','Abastecimiento programado'),
(1,1,19,19,15,'2026-09-02 08:15:00',720,'Campamento minero Hualgayoc','Abastecimiento inicial'),
(1,1,19,19,12,'2026-09-08 09:10:00',680,'Campamento minero Hualgayoc','Abastecimiento programado'),
(2,1,19,19,15,'2026-09-12 08:40:00',760,'Zona operativa Hualgayoc','Abastecimiento final');

INSERT INTO Certificacion
(id_empleado,nombre_certificacion,entidad_emisora,fecha_emision,fecha_vencimiento) VALUES
(6,'Operacion Segura de Maquinaria Pesada','SENATI','2024-02-10','2027-02-10'),
(7,'Operacion de Maquinaria Pesada','SENATI','2024-04-15','2027-04-15'),
(8,'Operacion de Maquinaria Pesada','SENATI','2025-06-20','2027-06-20'),
(9,'Operacion de Maquinaria Pesada','SENATI','2025-08-12','2027-08-12'),
(10,'Operacion de Maquinaria Pesada','SENATI','2025-02-12','2027-02-12'),
(11,'Conduccion Defensiva','SUTRAN','2024-01-15','2027-01-15'),
(12,'Transporte de Materiales Peligrosos','SUTRAN','2025-03-20','2027-03-20'),
(12,'Conduccion Defensiva','SUTRAN','2024-02-18','2027-02-18'),
(13,'Conduccion Defensiva','SUTRAN','2025-05-10','2027-05-10'),
(14,'Mantenimiento de Maquinaria Pesada','SENATI','2024-04-12','2027-04-12'),
(15,'Manejo Seguro de Combustibles','OSINERGMIN','2025-01-30','2027-01-30');

INSERT INTO Factura
(id_contrato,serie_numero,fecha_emision,monto,estado_pago) VALUES
(1,'F001-000001','2026-04-15',12000,'Pagada'),
(1,'F001-000002','2026-04-25',12000,'Pagada'),
(2,'F001-000003','2026-04-30',9000,'Pagada'),
(2,'F001-000004','2026-05-10',9000,'Pagada'),
(3,'F001-000005','2026-04-30',16000,'Pagada'),
(3,'F001-000006','2026-05-20',16000,'Pagada'),
(4,'F001-000007','2026-05-15',15000,'Pagada'),
(5,'F001-000008','2026-05-31',13000,'Pagada'),
(5,'F001-000009','2026-06-10',13000,'Pagada'),
(6,'F001-000010','2026-06-15',12000,'Pagada'),
(7,'F001-000011','2026-06-05',14000,'Pagada'),
(7,'F001-000012','2026-06-20',14000,'Pendiente'),
(8,'F001-000013','2026-06-15',10000,'Pagada'),
(8,'F001-000014','2026-06-25',10000,'Pagada'),
(9,'F001-000015','2026-07-15',17500,'Pagada'),
(9,'F001-000016','2026-07-30',17500,'Pendiente'),
(10,'F001-000017','2026-07-25',16000,'Pagada'),
(11,'F001-000018','2026-07-10',11000,'Pagada'),
(11,'F001-000019','2026-07-20',11000,'Pagada'),
(12,'F001-000020','2026-07-20',7000,'Pagada'),
(12,'F001-000021','2026-08-05',7000,'Pendiente'),
(13,'F001-000022','2026-07-31',10000,'Pagada'),
(13,'F001-000023','2026-08-15',10000,'Pagada'),
(13,'F001-000024','2026-08-31',10000,'Pendiente'),
(14,'F001-000025','2026-08-05',12000,'Pagada'),
(14,'F001-000026','2026-08-15',12000,'Pagada'),
(15,'F001-000027','2026-08-10',9000,'Pagada'),
(15,'F001-000028','2026-08-20',9000,'Pendiente'),
(16,'F001-000029','2026-08-15',13500,'Pagada'),
(16,'F001-000030','2026-08-30',13500,'Pendiente'),
(17,'F001-000031','2026-08-20',8000,'Pagada'),
(17,'F001-000032','2026-09-10',8000,'Pendiente'),
(18,'F001-000033','2026-08-31',11000,'Pagada'),
(18,'F001-000034','2026-09-10',11000,'Pendiente'),
(19,'F001-000035','2026-09-15',15000,'Pendiente');

INSERT INTO Pago
(id_factura,fecha_pago,monto_pagado,medio_pago) VALUES
(1,'2026-04-25',12000,'Transferencia bancaria'),
(2,'2026-05-05',12000,'Transferencia bancaria'),
(3,'2026-05-10',9000,'Transferencia bancaria'),
(4,'2026-05-20',9000,'Transferencia bancaria'),
(5,'2026-05-15',16000,'Transferencia bancaria'),
(6,'2026-06-05',16000,'Transferencia bancaria'),
(7,'2026-05-25',15000,'Transferencia bancaria'),
(8,'2026-06-10',13000,'Transferencia bancaria'),
(9,'2026-06-20',13000,'Transferencia bancaria'),
(10,'2026-06-25',12000,'Transferencia bancaria'),
(11,'2026-06-20',14000,'Transferencia bancaria'),
(13,'2026-07-10',10000,'Transferencia bancaria'),
(14,'2026-07-05',10000,'Transferencia bancaria'),
(15,'2026-07-25',17500,'Transferencia bancaria'),
(17,'2026-08-05',16000,'Transferencia bancaria'),
(18,'2026-07-25',11000,'Transferencia bancaria'),
(19,'2026-08-05',11000,'Transferencia bancaria'),
(20,'2026-08-10',7000,'Transferencia bancaria'),
(22,'2026-08-10',10000,'Transferencia bancaria'),
(23,'2026-08-25',10000,'Transferencia bancaria'),
(25,'2026-08-20',12000,'Transferencia bancaria'),
(26,'2026-08-25',12000,'Transferencia bancaria'),
(27,'2026-08-25',9000,'Transferencia bancaria'),
(29,'2026-08-25',13500,'Transferencia bancaria'),
(31,'2026-09-05',8000,'Transferencia bancaria'),
(33,'2026-09-10',11000,'Transferencia bancaria');

SELECT * FROM Cargo;
SELECT * FROM TipoEquipo;
SELECT * FROM Servicio;
SELECT * FROM Cliente;
SELECT * FROM Proveedor;
SELECT * FROM Combustible;
SELECT * FROM Sede;
SELECT * FROM Empleado;
SELECT * FROM Equipo;
SELECT * FROM Cisterna;
SELECT * FROM Proyecto;
SELECT * FROM ContratoServicio;
SELECT * FROM AsignacionEquipo;
SELECT * FROM AsignacionPersonal;
SELECT * FROM Mantenimiento;
SELECT * FROM PolizaSeguro;
SELECT * FROM AbastecimientoCombustible;
SELECT * FROM Certificacion;
SELECT * FROM Factura;
SELECT * FROM Pago;