use Autobuses

select *from SituacionAsi

insert into SituacionAsi(iIdSituacionAsi, vSituacionA) values(1,'Ocupado')
insert into SituacionAsi(iIdSituacionAsi, vSituacionA) values(2,'Disponible')

select *from Asiento

insert into Asiento(iIdAsiento,iIdSituacionAsi) values(3,1)
insert into Asiento(iIdAsiento,iIdSituacionAsi) values(4,2)
insert into Asiento(iIdAsiento,iIdSituacionAsi) values(5,1)
insert into Asiento(iIdAsiento,iIdSituacionAsi) values(6,1)
insert into Asiento(iIdAsiento,iIdSituacionAsi) values(7,2)
insert into Asiento(iIdAsiento,iIdSituacionAsi) values(8,2)
insert into Asiento(iIdAsiento,iIdSituacionAsi) values(9,2)
insert into Asiento(iIdAsiento,iIdSituacionAsi) values(10,2)
insert into Asiento(iIdAsiento,iIdSituacionAsi) values(11,1)
insert into Asiento(iIdAsiento,iIdSituacionAsi) values(12,2)

select *from Autobus

insert into Autobus(iIdAutobus,vMarca,iModelo,tCantidadPasajeros) values(13,'DINA',2010,60)
insert into Autobus(iIdAutobus,vMarca,iModelo,tCantidadPasajeros) values(14,'Volvo',2017,80)
insert into Autobus(iIdAutobus,vMarca,iModelo,tCantidadPasajeros) values(15,'Mercedes Benz',2015,50)
insert into Autobus(iIdAutobus,vMarca,iModelo,tCantidadPasajeros) values(16,'Mercedes Benz',2012,70)
insert into Autobus(iIdAutobus,vMarca,iModelo,tCantidadPasajeros) values(17,'King',2009,60)
insert into Autobus(iIdAutobus,vMarca,iModelo,tCantidadPasajeros) values(18,'Isuzu',2011,70)
insert into Autobus(iIdAutobus,vMarca,iModelo,tCantidadPasajeros) values(19,'Mercedes Benz',2015,80)
insert into Autobus(iIdAutobus,vMarca,iModelo,tCantidadPasajeros) values(20,'Isuzu',2016,70)
insert into Autobus(iIdAutobus,vMarca,iModelo,tCantidadPasajeros) values(21,'DINA',2017,50)
insert into Autobus(iIdAutobus,vMarca,iModelo,tCantidadPasajeros) values(22,'Volvo',2012,60)

select *from Puesto

insert into Puesto(iIdPuesto, vPuesto) values(23,'Chofer')
insert into Puesto(iIdPuesto, vPuesto) values(24,'Vendedor')

select *from Empleados

insert into Empleados(iIdEmpleado,vNomEm,vApPat,vApMat,tEdadEmp,iIdPuesto) values(25,'Elizabeth','Ayala','Rodriguez',25,24)
insert into Empleados(iIdEmpleado,vNomEm,vApPat,vApMat,tEdadEmp,iIdPuesto) values(26,'Halisson','Gonzales','Garci',19,24)
insert into Empleados(iIdEmpleado,vNomEm,vApPat,vApMat,tEdadEmp,iIdPuesto) values(27,'Darian','Llamas','Castillo',19,24)
insert into Empleados(iIdEmpleado,vNomEm,vApPat,vApMat,tEdadEmp,iIdPuesto) values(28,'Devani','Esparza','Peña',22,24)
insert into Empleados(iIdEmpleado,vNomEm,vApPat,vApMat,tEdadEmp,iIdPuesto) values(29,'Aurelio','Hernandez','Lopez',30,23)
insert into Empleados(iIdEmpleado,vNomEm,vApPat,vApMat,tEdadEmp,iIdPuesto) values(30,'Irving','Aguilar','Alvarado',28,23)
insert into Empleados(iIdEmpleado,vNomEm,vApPat,vApMat,tEdadEmp,iIdPuesto) values(31,'Fernanda','Aleman','Acevedo',19,24)
insert into Empleados(iIdEmpleado,vNomEm,vApPat,vApMat,tEdadEmp,iIdPuesto) values(32,'Fabio','Lozano','Mendoza',35,23)
insert into Empleados(iIdEmpleado,vNomEm,vApPat,vApMat,tEdadEmp,iIdPuesto) values(33,'Rafael','Marquez','Obregon',40,23)
insert into Empleados(iIdEmpleado,vNomEm,vApPat,vApMat,tEdadEmp,iIdPuesto) values(34,'Lucia','Cordero','Cabrejo',27,24)
insert into Empleados(iIdEmpleado,vNomEm,vApPat,vApMat,tEdadEmp,iIdPuesto) values(35,'Lucas','Fuente','Loera',27,23)

select *from Chofer

insert into Chofer(iIdChofer,idIdAutobus,iIdEmpleado) values (36,13,30)
insert into Chofer(iIdChofer,idIdAutobus,iIdEmpleado) values (37,18,33)
insert into Chofer(iIdChofer,idIdAutobus,iIdEmpleado) values (38,17,35)
insert into Chofer(iIdChofer,idIdAutobus,iIdEmpleado) values (39,21,32)
insert into Chofer(iIdChofer,idIdAutobus,iIdEmpleado) values (40,15,30)
insert into Chofer(iIdChofer,idIdAutobus,iIdEmpleado) values (41,20,35)
insert into Chofer(iIdChofer,idIdAutobus,iIdEmpleado) values (42,16,33)
insert into Chofer(iIdChofer,idIdAutobus,iIdEmpleado) values (43,22,35)
insert into Chofer(iIdChofer,idIdAutobus,iIdEmpleado) values (44,19,30)
insert into Chofer(iIdChofer,idIdAutobus,iIdEmpleado) values (45,14,32)
insert into Chofer(iIdChofer,idIdAutobus,iIdEmpleado) values (46,15,33)

select *from Codigo

insert into Codigo(iIdCodigo,uCodigo) values(47,NEWID())
insert into Codigo(iIdCodigo,uCodigo) values(48,NEWID())
insert into Codigo(iIdCodigo,uCodigo) values(49,NEWID())
insert into Codigo(iIdCodigo,uCodigo) values(50,NEWID())
insert into Codigo(iIdCodigo,uCodigo) values(51,NEWID())
insert into Codigo(iIdCodigo,uCodigo) values(52,NEWID())
insert into Codigo(iIdCodigo,uCodigo) values(53,NEWID())
insert into Codigo(iIdCodigo,uCodigo) values(54,NEWID())
insert into Codigo(iIdCodigo,uCodigo) values(55,NEWID())
insert into Codigo(iIdCodigo,uCodigo) values(56,NEWID())
insert into Codigo(iIdCodigo,uCodigo) values(57,NEWID())

select *from EstadoV

insert into EstadoV(iIdEstadoV,vEstadoV) values (58,'Disponible')
insert into EstadoV(iIdEstadoV,vEstadoV) values (59,'No Disponible')
insert into EstadoV(iIdEstadoV,vEstadoV) values (60,'Progreso')

select *from Origen

insert into Origen(iIdOrigen,vOrigen) values (61,'Monterrey')
insert into Origen(iIdOrigen,vOrigen) values (62,'Torreon')
insert into Origen(iIdOrigen,vOrigen) values (63,'Saltillo')
insert into Origen(iIdOrigen,vOrigen) values (64,'Ciudad de Mexico')
insert into Origen(iIdOrigen,vOrigen) values (65,'Acuña')
insert into Origen(iIdOrigen,vOrigen) values (66,'Aguascalientes')
insert into Origen(iIdOrigen,vOrigen) values (67,'Austin')
insert into Origen(iIdOrigen,vOrigen) values (68,'Cadereyta')
insert into Origen(iIdOrigen,vOrigen) values (69,'Cedral')
insert into Origen(iIdOrigen,vOrigen) values (70,'Chihuahua')
insert into Origen(iIdOrigen,vOrigen) values (71,'Charcas')

select *from Destino

insert into Destino(iIdDestino,vDestino) values (72,'Adobes')
insert into Destino(iIdDestino,vDestino) values (73,'Allende')
insert into Destino(iIdDestino,vDestino) values (74,'Dallas')
insert into Destino(iIdDestino,vDestino) values (75,'Detroit')
insert into Destino(iIdDestino,vDestino) values (76,'Denton')
insert into Destino(iIdDestino,vDestino) values (77,'Garland')
insert into Destino(iIdDestino,vDestino) values (78,'Houston')
insert into Destino(iIdDestino,vDestino) values (79,'Laredo')
insert into Destino(iIdDestino,vDestino) values (80,'Longview')
insert into Destino(iIdDestino,vDestino) values (81,'San Antonio')
insert into Destino(iIdDestino,vDestino) values (82,'Waco')

select *from Ruta

insert into Ruta (iIdRuta,iIdOrigen,iIdDestino,tTiempoEstimado) values(83,62,77,'03:00:00')
insert into Ruta (iIdRuta,iIdOrigen,iIdDestino,tTiempoEstimado) values(84,71,78,'08:50:00')
insert into Ruta (iIdRuta,iIdOrigen,iIdDestino,tTiempoEstimado) values(85,61,75,'01:30:00')
insert into Ruta (iIdRuta,iIdOrigen,iIdDestino,tTiempoEstimado) values(86,65,74,'06:05:00')
insert into Ruta (iIdRuta,iIdOrigen,iIdDestino,tTiempoEstimado) values(87,69,79,'02:30:00')
insert into Ruta (iIdRuta,iIdOrigen,iIdDestino,tTiempoEstimado) values(88,63,80,'04:20:00')
insert into Ruta (iIdRuta,iIdOrigen,iIdDestino,tTiempoEstimado) values(89,64,72,'0:50:00')
insert into Ruta (iIdRuta,iIdOrigen,iIdDestino,tTiempoEstimado) values(90,68,76,'02:15:00')
insert into Ruta (iIdRuta,iIdOrigen,iIdDestino,tTiempoEstimado) values(91,66,81,'03:35:00')
insert into Ruta (iIdRuta,iIdOrigen,iIdDestino,tTiempoEstimado) values(92,67,73,'01:45:00')
insert into Ruta (iIdRuta,iIdOrigen,iIdDestino,tTiempoEstimado) values(93,62,82,'01:45:00')

select *from Viaje

insert into Viaje(iIdViaje,iIdRuta,iIdChofer,dFechaS,iIdEstadoV) values (94,83,36,'01-10-19',58)
insert into Viaje(iIdViaje,iIdRuta,iIdChofer,dFechaS,iIdEstadoV) values (95,93,43,'10-20-19',59)
insert into Viaje(iIdViaje,iIdRuta,iIdChofer,dFechaS,iIdEstadoV) values (96,88,46,'07-06-19',58)
insert into Viaje(iIdViaje,iIdRuta,iIdChofer,dFechaS,iIdEstadoV) values (97,85,37,'12-22-19',58)
insert into Viaje(iIdViaje,iIdRuta,iIdChofer,dFechaS,iIdEstadoV) values (98,89,42,'03-18-19',60)
insert into Viaje(iIdViaje,iIdRuta,iIdChofer,dFechaS,iIdEstadoV) values (99,91,45,'11-21-19',60)
insert into Viaje(iIdViaje,iIdRuta,iIdChofer,dFechaS,iIdEstadoV) values (100,84,41,'05-17-19',59)
insert into Viaje(iIdViaje,iIdRuta,iIdChofer,dFechaS,iIdEstadoV) values (101,86,38,'04-02-19',58)
insert into Viaje(iIdViaje,iIdRuta,iIdChofer,dFechaS,iIdEstadoV) values (102,90,44,'06-09-19',58)
insert into Viaje(iIdViaje,iIdRuta,iIdChofer,dFechaS,iIdEstadoV) values (103,87,40,'02-15-19',60)
insert into Viaje(iIdViaje,iIdRuta,iIdChofer,dFechaS,iIdEstadoV) values (104,92,39,'02-15-19',59)

select *from Precio

insert into Precio(iIdPrecio,mPrecio) values(105,190)
insert into Precio(iIdPrecio,mPrecio) values(106,200)
insert into Precio(iIdPrecio,mPrecio) values(107,180)
insert into Precio(iIdPrecio,mPrecio) values(108,250)
insert into Precio(iIdPrecio,mPrecio) values(109,270) 
insert into Precio(iIdPrecio,mPrecio) values(110,210)
insert into Precio(iIdPrecio,mPrecio) values(111,300)
insert into Precio(iIdPrecio,mPrecio) values(112,270)
insert into Precio(iIdPrecio,mPrecio) values(113,290)
insert into Precio(iIdPrecio,mPrecio) values(114,185)
insert into Precio(iIdPrecio,mPrecio) values(115,185)

select *from Boleto

insert into Boleto(iIdBoleto,iIdViaje,iIdAsiento,iIdPrecio,iIdCodigo) values(116,94,9,105,  52)
insert into Boleto(iIdBoleto,iIdViaje,iIdAsiento,iIdPrecio,iIdCodigo) values(117,100,8,115, 57)
insert into Boleto(iIdBoleto,iIdViaje,iIdAsiento,iIdPrecio,iIdCodigo) values(118,95,10,106, 51)
insert into Boleto(iIdBoleto,iIdViaje,iIdAsiento,iIdPrecio,iIdCodigo) values(119,101,7,114, 56)
insert into Boleto(iIdBoleto,iIdViaje,iIdAsiento,iIdPrecio,iIdCodigo) values(120,96,11,107, 50)
insert into Boleto(iIdBoleto,iIdViaje,iIdAsiento,iIdPrecio,iIdCodigo) values(121,102,6,113, 55)
insert into Boleto(iIdBoleto,iIdViaje,iIdAsiento,iIdPrecio,iIdCodigo) values(122,97,12,108, 49)
insert into Boleto(iIdBoleto,iIdViaje,iIdAsiento,iIdPrecio,iIdCodigo) values(123,103,5,111, 54)
insert into Boleto(iIdBoleto,iIdViaje,iIdAsiento,iIdPrecio,iIdCodigo) values(124,98,4,109,  48)
insert into Boleto(iIdBoleto,iIdViaje,iIdAsiento,iIdPrecio,iIdCodigo) values(125,104,6,112, 53)
insert into Boleto(iIdBoleto,iIdViaje,iIdAsiento,iIdPrecio,iIdCodigo) values(126,99,3, 110, 47)

select *from Pago

insert into Pago(iIdPago,vTipoPago) values (127,'Efectivo')
insert into Pago(iIdPago,vTipoPago) values (128,'Tarjeta')


select *from Venta

insert into Venta(iIdVenta,iIdEmpleado,iIdPago,iIdPrecio,mTotal,dFecha,tHora) values(129,25,127, 110,210,'01-15-19','08:00:00')
insert into Venta(iIdVenta,iIdEmpleado,iIdPago,iIdPrecio,mTotal,dFecha,tHora) values(130,35,127, 114,185,'12-21-19','10:30:00')
insert into Venta(iIdVenta,iIdEmpleado,iIdPago,iIdPrecio,mTotal,dFecha,tHora) values(131,26,128, 112,270,'04-06-19','12:00:00')
insert into Venta(iIdVenta,iIdEmpleado,iIdPago,iIdPrecio,mTotal,dFecha,tHora) values(132,34,127, 106,200,'11-26-19','21:00:00')
insert into Venta(iIdVenta,iIdEmpleado,iIdPago,iIdPrecio,mTotal,dFecha,tHora) values(133,27,127, 107,180,'02-25-19','16:45:00')
insert into Venta(iIdVenta,iIdEmpleado,iIdPago,iIdPrecio,mTotal,dFecha,tHora) values(134,33,128, 108,250,'08-07-19','13:50:00')
insert into Venta(iIdVenta,iIdEmpleado,iIdPago,iIdPrecio,mTotal,dFecha,tHora) values(135,28,128, 109,270,'07-11-19','07:30:00')
insert into Venta(iIdVenta,iIdEmpleado,iIdPago,iIdPrecio,mTotal,dFecha,tHora) values(136,32,128, 105,190,'10-19-19','15:20:00')
insert into Venta(iIdVenta,iIdEmpleado,iIdPago,iIdPrecio,mTotal,dFecha,tHora) values(137,29,128, 111,300,'06-08-19','18:15:00')
insert into Venta(iIdVenta,iIdEmpleado,iIdPago,iIdPrecio,mTotal,dFecha,tHora) values(138,31,128, 113,290,'03-02-19','20:10:00')
insert into Venta(iIdVenta,iIdEmpleado,iIdPago,iIdPrecio,mTotal,dFecha,tHora) values(139,30,127, 115,185,'05-19-19','16:30:00')

select *from TipoPasajero

insert into TipoPasajero(iIdTipoPasajero,vTipoPas) values(140,'Niño')
insert into TipoPasajero(iIdTipoPasajero,vTipoPas) values(141,'Adulto')
insert into TipoPasajero(iIdTipoPasajero,vTipoPas) values(142,'Estudiante')
insert into TipoPasajero(iIdTipoPasajero,vTipoPas) values(143,'Adulto Mayor')

select *from Pasajero

insert into Pasajero(iIdPasajero,vNomPas,vApPatPas,vApMatPas,iEdadPas,iIdTipoPasajero,iIdVenta) values(144,'Maria','Martinez','Contreras',40,141,139)
insert into Pasajero(iIdPasajero,vNomPas,vApPatPas,vApMatPas,iEdadPas,iIdTipoPasajero,iIdVenta) values(145,'Felipe','Diaz','Herrera',70,143,129)
insert into Pasajero(iIdPasajero,vNomPas,vApPatPas,vApMatPas,iEdadPas,iIdTipoPasajero,iIdVenta) values(146,'Esther','Fernandez','Hernandez',5,140,138)
insert into Pasajero(iIdPasajero,vNomPas,vApPatPas,vApMatPas,iEdadPas,iIdTipoPasajero,iIdVenta) values(147,'Enrique','Gutierrez','Vidal',18,142,130)
insert into Pasajero(iIdPasajero,vNomPas,vApPatPas,vApMatPas,iEdadPas,iIdTipoPasajero,iIdVenta) values(148,'Omar','Torres','Fuente',38,141,137)
insert into Pasajero(iIdPasajero,vNomPas,vApPatPas,vApMatPas,iEdadPas,iIdTipoPasajero,iIdVenta) values(149,'Luisa','Sanchez','Ortiz',20,142,131)
insert into Pasajero(iIdPasajero,vNomPas,vApPatPas,vApMatPas,iEdadPas,iIdTipoPasajero,iIdVenta) values(150,'Rubi','Lozano','Costa',30,141,136)
insert into Pasajero(iIdPasajero,vNomPas,vApPatPas,vApMatPas,iEdadPas,iIdTipoPasajero,iIdVenta) values(151,'Gabriel','Davila','Molina',63,143,132)
insert into Pasajero(iIdPasajero,vNomPas,vApPatPas,vApMatPas,iEdadPas,iIdTipoPasajero,iIdVenta) values(152,'Carlos','Flores','Jimenez',10,140,135)
insert into Pasajero(iIdPasajero,vNomPas,vApPatPas,vApMatPas,iEdadPas,iIdTipoPasajero,iIdVenta) values(153,'Liliana','Puente','Jurado',39,141,133)
insert into Pasajero(iIdPasajero,vNomPas,vApPatPas,vApMatPas,iEdadPas,iIdTipoPasajero,iIdVenta) values(154,'Maribel','Quesada','Coral',23,142,134)

select *from PasajeroBol

insert into PasajeroBol(iIdPasajeroBol,iIdPasajero,iIdBoleto) values(155,154,126)
insert into PasajeroBol(iIdPasajeroBol,iIdPasajero,iIdBoleto) values(156,144,116)
insert into PasajeroBol(iIdPasajeroBol,iIdPasajero,iIdBoleto) values(157,153,125)
insert into PasajeroBol(iIdPasajeroBol,iIdPasajero,iIdBoleto) values(158,145,117)
insert into PasajeroBol(iIdPasajeroBol,iIdPasajero,iIdBoleto) values(159,152,124)
insert into PasajeroBol(iIdPasajeroBol,iIdPasajero,iIdBoleto) values(160,146,118)
insert into PasajeroBol(iIdPasajeroBol,iIdPasajero,iIdBoleto) values(161,151,123)
insert into PasajeroBol(iIdPasajeroBol,iIdPasajero,iIdBoleto) values(162,147,119)
insert into PasajeroBol(iIdPasajeroBol,iIdPasajero,iIdBoleto) values(163,150,122)
insert into PasajeroBol(iIdPasajeroBol,iIdPasajero,iIdBoleto) values(164,148,120)
insert into PasajeroBol(iIdPasajeroBol,iIdPasajero,iIdBoleto) values(165,149,121)



--Practica 6
select  vNomEm,vApPat, vApMat, tEdadEmp, iIdPuesto from Empleados as e where e.tEdadEmp> 25
select  iIdPasajero,vNomPas from Pasajero as p where p.vNomPas='Maria'
select  mPrecio from Precio as m where m.mPrecio>200
select  iIdDestino,tTiempoEstimado from Ruta as r,Origen as o where  o.vOrigen='Torreon' 
select  iIdRuta,iIdOrigen,iIdDestino,tTiempoEstimado from Ruta as r where r.tTiempoEstimado>'03:00:00'

select * from Autobus
where Autobus.vMarca like 'V%'

select *from Empleados
where Empleados.vNomEm like 'H%'

select *from Pasajero 
where Pasajero.vNomPas like 'E%'

select *from Destino
where Destino.vDestino like 'D%'
order by vDestino

select *from Pasajero
where Pasajero.vApMatPas like'H%'
order by iEdadPas

select *from Chofer
left join Autobus on Chofer.idIdAutobus=Autobus.iIdAutobus

select *from Chofer
right join Autobus on Chofer.idIdAutobus=Autobus.iIdAutobus

select *from Chofer
inner join Autobus on Chofer.idIdAutobus=Autobus.iIdAutobus

select *from Chofer
cross join Autobus 

select *from PasajeroBol
left join Pasajero on PasajeroBol.iIdPasajero=Pasajero.iIdPasajero

select *from PasajeroBol
right join Pasajero on PasajeroBol.iIdPasajero=Pasajero.iIdPasajero

select *from PasajeroBol
inner join Pasajero on PasajeroBol.iIdPasajero=Pasajero.iIdPasajero

select *from PasajeroBol
cross join Pasajero


select COUNT(iIdAutobus) as 'Cantidad Autobuses' from Autobus 
select COUNT(iIdAutobus) as 'Cantidad Autobuses' from Autobus group by iIdAutobus
select MIN(iEdadPas) as 'Minimo  Edad Pasajeros' from Pasajero
select MIN(iEdadPas) as 'Minimo  Edad Pasajeros' from Pasajero group by iEdadPas
select MAX(tTiempoEstimado)as 'Maximo de tiempo' from Ruta 
select MAX(tTiempoEstimado)as 'Maximo de tiempo' from Ruta group by tTiempoEstimado
select SUM(mPrecio) as 'Precios' from Precio
select SUM(mPrecio) as 'Precios' from Precio group by mPrecio
select AVG(tCantidadPasajeros) as 'Pasajeros' from Autobus
select AVG(tCantidadPasajeros) as 'Pasajeros' from Autobus group by tCantidadPasajeros

