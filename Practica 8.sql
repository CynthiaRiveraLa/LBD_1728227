use Autobuses
---SP---
create procedure NuevoPasajero(
	@iIdPasajero int,
	@vNomPas varchar(50),
	@vApPatPas varchar(50),
	@vApMatPas varchar(50),
	@iEdadPas int,
	@iIdTipoPasajero int,
	@iIdVenta int
)
as 
begin
	insert into Pasajero(iIdPasajero,vNomPas,vApPatPas,vApMatPas,iEdadPas,iIdTipoPasajero,iIdVenta)
	values  (@iIdPasajero,@vNomPas,@vApPatPas,@vApMatPas,@iEdadPas,@iIdTipoPasajero,@iIdVenta)
end 
	exec NuevoPasajero @iIdPasajero=166,@vNomPas='Karla',@vApPatPas='Reyna',@vApMatPas='Fernandez',@iEdadPas=26,@iIdTipoPasajero=141,@iIdVenta=130

---SP---
create procedure EmpleadoAutobus(
	@iIdEmpleado int
	)
as 
	select *from Empleados
	where iIdEmpleado=@iIdEmpleado
go
	exec EmpleadoAutobus 26

---Funciones---
select *from  function  EstadoAutobuses

create function EstadoAutobuses(@estado varchar)
returns varchar (50)
as 
begin
	declare @est int;
	declare @cam varchar(50);

	set @est=(select o.vEstadoV from EstadoV as o where o.vEstadoV=@estado);

	if(@est=1)
		begin 
			set @cam='LLeno';
			end
	else if(@est=2)
		begin 
			set @cam='Ocupado';
			end
	else if(@est=3)
		begin 
			set @cam='En Camino';
			end
		return @cam
	end
go		

---Funiones---
select *from  function  EstadoAutobuses

create function PuestoAutobuses(@puesto varchar)
returns varchar (50)
as 
begin
	declare @pue int;
	declare @op varchar(50);

	set @pue=(select p.vPuesto from Puesto as p where p.vPuesto=@puesto);

	if(@pue=1)
		begin 
			set @op='Conductor';
			end
	else if(@pue=2)
		begin 
			set @op='Cajero Casilla';
			end
		return @op
	end
go		

--Triggers--
select *from SituacionAsi

create trigger SA
on SituacionAsi
instead of insert 
as
begin 
	select *
	from inserted
	end
---
create trigger SA1
on SituacionAsi
instead of delete 
as
begin 
	select *
	from deleted
	end
---
create trigger SA2
on SituacionAsi
instead of update
as
begin 
	select *
	from updated
	end

---
select *from Codigo
create trigger A
on Asiento 
instead of insert 
as 
begin 
	select *
	from inserted 
end
insert into Asiento values(167,1)
---
create trigger A1
on Asiento 
instead of update
as 
begin 
	select *
	from inserted
	select *
	from updated
end
insert into Asiento values(168,1)

