/*==============================================================*/
/* Nombre:   	Cifuentes Castro Irvin Gustavo          	    */
/* Curso: 		5to Nivel B, Gestion de Bases de Datos  	    */
/*==============================================================*/


/* Primer consulta */
select h.habitacion_descripcion, sh.servicio_habitacion_fecha, c.cliente_nombre, c.cliente_apellido, s.servicio_precio
from servicio_habitacion sh
inner join habitacion h on sh.habitacion_id = h.habitacion_id
inner join servicio s on s.servicio_id = sh.servicio_id
inner join factura f on f.cliente_id = h.habitacion_id
inner join cliente c on c.cliente_id = f.habitacion_id 
