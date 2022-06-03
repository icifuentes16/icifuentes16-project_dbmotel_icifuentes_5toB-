/*==============================================================*/
/* Nombre:   	Cifuentes Castro Irvin Gustavo          	    */
/* Curso: 		5to Nivel B, Gestion de Bases de Datos  	    */
/*==============================================================*/


create or replace trigger tr_descuento_habitacion
before update on factura
for each row
begin
	if :new.factura_total > :old.factura_total then
		RAISE_APPLICATION_ERROR(-20019, 'No se puede aplicar descuento, el valor nuevo debe ser menor');
	end if;
end;
