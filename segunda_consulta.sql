/*==============================================================*/
/* Nombre:   	Cifuentes Castro Irvin Gustavo          	    */
/* Curso: 		5to Nivel B, Gestion de Bases de Datos  	    */
/*==============================================================*/


/* Segunda consulta */
select h.habitacion_descripcion, c.cliente_nombre, c.cliente_apellido,
count(f.habitacion_id) as veces_utilizadas
from factura f
inner join cliente c on c.cliente_id = f.cliente_id
inner join habitacion h on h.habitacion_id = f.habitacion_id 
group by c.cliente_nombre, c.cliente_apellido, h.habitacion_descripcion 
order by veces_utilizadas desc;
