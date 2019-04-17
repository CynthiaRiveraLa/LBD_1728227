--Practica 6
use Autobuses
--Mostrar edad mayor 25
select  vNomEm,vApPat, vApMat, tEdadEmp, iIdPuesto from Empleados as e where e.tEdadEmp> 25
--Mostrar pasajero que se llame Maria
select  iIdPasajero,vNomPas from Pasajero as p where p.vNomPas='Maria'
--Mostrar el precio mayor a 200
select  mPrecio from Precio as m where m.mPrecio>200
--Mostrar el el iIdOrigen en 62 que es Torreon
select  iIdRuta,iIdOrigen,iIdDestino,tTiempoEstimado from  Ruta as r where  r.iIdOrigen=62  
--Mostrar el tiempo estimado mayor a 3 horas
select  iIdRuta,iIdOrigen,iIdDestino,tTiempoEstimado from Ruta as r where r.tTiempoEstimado>'03:00:00'

--Sentencias de buscar en la tablas los diferentes campos con las letras que se escribieron  
--Ordenar en las ultimas sentencias por grupos en la penultima no se nota que pero se ordenan alfabeticamente ya que son con la letra D
--En la ultima sentencia se ordenan por la edad con la letra indicada
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

--En la diferentes tablas, algunos campos son iguales y nos muestra las diferentes columnas de los registros que son iguales los ID
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

--Utilice las funciones en las tablas y luego las combine con los group by
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

