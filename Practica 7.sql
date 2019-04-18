use Autobuses

--Subconsultas--

select * from  
	(select tEdadEmp, count (tEdadEmp) as 'Cantided de personas'
		from Empleados
		group by tEdadEmp) as e
	where e.[Cantided de personas]>0

select * from  
	(select iModelo, count (iModelo) as 'Cantidad de años de modelos'
		from Autobus
		group by iModelo) as a
	where a.[Cantidad de años de modelos]>0

select * from  
	(select mPrecio, count (mPrecio) as 'Cantidad de precios'
		from Precio
		group by mPrecio) as p
	where p.[Cantidad de precios] >0

Select * from
	(select iEdadPas, count (iEdadPas) as 'Cantidad de persona'
		from Pasajero
		group by iEdadPas) as p
	where p.[Cantidad de persona] >0

--Subconsulta with--
with Edades
as 
(select iEdadPas,count(iEdadPas)as p
	from Pasajero
	group by iEdadPas)
select *
from Edades
where Edades.p>0


with EdadEmpleado
as 
(select tEdadEmp, count(tEdadEmp) as e
	from Empleados
	group by tEdadEmp
	)
select *
from EdadEmpleado
where EdadEmpleado.e >0

--Vistas Tablas--

create view SituacionAsientos
as 
select *from SituacionAsi;

create view Asientos
as 
select *from Asiento;

create view Autobuses
as 
select *from Autobus;

create view Puestos
as 
select *from Puesto;

create view Empleados1
as 
select *from Empleados;

create view Choferes
as 
select *from Chofer;

create view Codigos
as 
select *from Codigo;

create view EstadoViajes
as 
select *from EstadoV;

create view Origenes
as 
select *from Origen;

create view Destinos
as 
select *from Destino;

create view Rutas
as 
select *from Ruta;

create view Viajes
as 
select *from Viaje

create view Precios
as 
select *from Precio;

create view Boletos
as 
select *from Boleto;

create view Pagos
as 
select *from Pago;

create view Ventas
as 
select *from Venta;

create view TipoPasajeros
as 
select *from TipoPasajero;

create view Pasajeros
as 
select *from Pasajero;

create view PasajerosBoletos
as 
select *from PasajeroBol;
