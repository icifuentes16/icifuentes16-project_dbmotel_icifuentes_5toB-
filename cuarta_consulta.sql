/*==============================================================*/
/* Nombre:   	Cifuentes Castro Irvin Gustavo          	    */
/* Curso: 		5to Nivel B, Gestion de Bases de Datos  	    */
/*==============================================================*/


/* Cuarta consulta */
select e.empleado_nombre, e.empleado_apellido, m.mantenimiento_descripcion, m.mantenimiento_costo, 
count(m.empleado_id) as numero_mantenimiento, m.mantenimiento_costo * count(m.empleado_id) as total_gasto
from mantenimiento m
inner join empleado e on e.empleado_id = m.empleado_id
group by e.empleado_nombre, e.empleado_apellido, m.mantenimiento_descripcion, m.mantenimiento_costo
order by numero_mantenimiento desc;