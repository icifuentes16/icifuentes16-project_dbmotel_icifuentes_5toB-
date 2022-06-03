/*==============================================================*/
/* Nombre:   	Cifuentes Castro Irvin Gustavo          	    */
/* Curso: 		5to Nivel B, Gestion de Bases de Datos  	    */
/*==============================================================*/


/* Tercer consulta */
select * from    
    (select c.cliente_nombre, c.cliente_apellido, tc.tipo_cliente_descripcion, f.factura_total *
    count(f.cliente_id) as factura_total
    from factura f
    inner join cliente c on c.cliente_id = f.cliente_id
    inner join tipo_cliente tc on tc.tipo_cliente_id = c.tipo_cliente_id
    group by c.cliente_nombre, c.cliente_apellido, tc.tipo_cliente_descripcion, f.factura_total
    order by factura_total desc)
where rownum <= 1;