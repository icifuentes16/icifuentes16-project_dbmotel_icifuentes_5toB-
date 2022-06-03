/*==============================================================*/
/* Nombre:   	Cifuentes Castro Irvin Gustavo          	    */
/* Curso: 		5to Nivel B, Gestion de Bases de Datos  	    */
/*==============================================================*/


/* INSERTAR TIPO CLIENTE */
INSERT INTO TIPO_CLIENTE VALUES (1, 'CLIENTE REGISTRADO');
INSERT INTO TIPO_CLIENTE VALUES (2, 'CLIENTE NO REGISTRADO');

/* INSERTAR CLIENTE REGISTRADO */
INSERT INTO CLIENTE VALUES (1, 1, 'CAMILO ALBERTO', 'CARVAJAL VARGAS', '1315467154', 'LOS CEIBOS', 'camilo@gmail.com');
INSERT INTO CLIENTE VALUES (3, 1, 'CARLOS FELIPE', 'REY SANCHEZ', '1314865451', 'CUMBAYA', 'felipe@gmail.com');
INSERT INTO CLIENTE VALUES (5, 1, 'LEONARDO ANDRES', 'SIERRA VILLAMIL', '1143465153', 'QUITUMBE', 'sierra@gmail.com');
INSERT INTO CLIENTE VALUES (7, 1, 'MARIA ALEJANDRA', 'RODRIGUEZ TORRES', '1256877152', 'SAN SEBASTIAN', 'torres@gmail.com');
INSERT INTO CLIENTE VALUES (8, 1, 'MARIO FABIAN', 'CASAS PAEZ', '1313465153', '15 DE ABRIL', 'fabian@gmail.com');

/* INSERTAR CLIENTE NO REGISTRADO */
INSERT INTO CLIENTE VALUES (2, 2, 'OSCAR DAVID', 'LARREA HOLGUIN', '', '', '');
INSERT INTO CLIENTE VALUES (4, 2, 'MIGUEL ANGEL', 'PILLIGUA SANCHEZ', '', '', '');
INSERT INTO CLIENTE VALUES (6, 2, 'MANUEL JESUS', 'GOMEZ GOMEZ', '', '', '');
INSERT INTO CLIENTE VALUES (9, 2, 'JAVIER DAVID', 'JIMENEZ PEREZ', '', '', '');
INSERT INTO CLIENTE VALUES (10, 2, 'CARLOS GUSTAVO', 'RODRIGUEZ NAVARRO', '', '', '');
INSERT INTO CLIENTE VALUES (11, 2, 'ANTONIA', 'RUIZ DIAZ', '', '', '');


/* INSERTAR TIPO EMPLEADO*/
INSERT INTO TIPO_EMPLEADO VALUES (1, 'EMPLEADO RECEPCION');
INSERT INTO TIPO_EMPLEADO VALUES (2, 'EMPLEADO LIMPIEZA');
INSERT INTO TIPO_EMPLEADO VALUES (3, 'EMPLEADO MANTENIMIENTO');

/* INSERTAR EMPLEADO*/
INSERT INTO EMPLEADO VALUES (1, 1, 'SANDRA XIMENA', 'GARCES PARRA', '0989171955', '1313465169');
INSERT INTO EMPLEADO VALUES (2, 2, 'MARCOS JOSE', 'HEREDIA ZAMORA', '0971714777', '1223155588');
INSERT INTO EMPLEADO VALUES (3, 2, 'LINA MARIA', 'ZUNIGA RAMIREZ', '0912336648', '1456568887');
INSERT INTO EMPLEADO VALUES (4, 2, 'LEONARDO ANDRES', 'DIAZ MEJIA', '0989189554', '1154585512');
INSERT INTO EMPLEADO VALUES (5, 3, 'JULIO ANDRES', 'CEPEDA MONTES', '0974445585', '1317889413');
INSERT INTO EMPLEADO VALUES (6, 3, 'LAURA NATALIA', 'HORTA OCHOA', '0955568848', '1051515866');

/* INSERTAR EMPRESA*/
INSERT INTO EMPRESA VALUES (1, 'ULTIPRIMES');

/* INSERTAR CONVENIO*/
INSERT INTO CONVENIO VALUES (1, 1, 'LA EMPRESA DE TRANSPORTE PESADO ULTIPRIMES TIENE UN ACUERDO CON EL MOTEL PARA QUE NUESTROS EMPLEADOS PUEDAN DORMIR TODOS LOS DIAS ALREDEDOR DE LAS 23H00 PM Y LAS 4H00 AM');

/* INSERTAR CIUDAD*/
INSERT INTO CIUDAD VALUES (1, 'MANTA');

/* INSERTAR MOTEL*/
INSERT INTO MOTEL VALUES (1, 1, 1, 'LA VENIDA', 'MARIA AUXILIADORA #1', '0984141954');

/* INSERTAR HABITACIÓN*/
INSERT INTO HABITACION VALUES (1, 1, 35, 6, 'HABITACION SUITE: JACUZZI, MUEBLERIA COMPLETA, AIRE ACONDICIONADO, DOS BAÑOS');
INSERT INTO HABITACION VALUES (2, 1, 25, 6, 'HABITACION JUNIOR SUITE, MUEBLERIA COMPLETA, BAÑO, AIRE ACONDICIONADO');
INSERT INTO HABITACION VALUES (3, 1, 15, 4, 'HABITACION DOBLE, MUEBLERIA COMPLETA, BAÑO');
INSERT INTO HABITACION VALUES (4, 1, 10, 2, 'HABITACION NORMAL, CAMA, BAÑO');
INSERT INTO HABITACION VALUES (5, 1, 10, 1, 'HABITACION INDIVIUDAL, CAMA, BAÑO');

/* INSERTAR MANTENIMIENTO*/
INSERT INTO MANTENIMIENTO VALUES (1, 1, 2, to_date('2022/02/15:03:05:00PM', 'yyyy/mm/dd:hh:mi:sspm'), to_date('2022/02/15:03:30:00PM', 'yyyy/mm/dd:hh:mi:sspm'), 'MANTENIMIENTO LIMPIEZA', 10);
INSERT INTO MANTENIMIENTO VALUES (2, 5, 3, to_date('2022/02/16:06:05:10AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/02/16:06:34:14AM', 'yyyy/mm/dd:hh:mi:ssam'), 'MANTENIMIENTO LIMPIEZA', 10);
INSERT INTO MANTENIMIENTO VALUES (3, 4, 4, to_date('2022/02/17:06:05:03AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/02/17:06:34:03AM', 'yyyy/mm/dd:hh:mi:ssam'), 'MANTENIMIENTO LIMPIEZA', 10);
INSERT INTO MANTENIMIENTO VALUES (4, 1, 4, to_date('2022/02/17:05:15:33PM', 'yyyy/mm/dd:hh:mi:sspm'), to_date('2022/02/17:05:45:47PM', 'yyyy/mm/dd:hh:mi:sspm'), 'MANTENIMIENTO LIMPIEZA', 10);
INSERT INTO MANTENIMIENTO VALUES (5, 4, 6, to_date('2022/02/17:06:00:40AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/02/17:06:32:40AM', 'yyyy/mm/dd:hh:mi:ssam'), 'MANTENIMIENTO ELECTRICIDAD', 23);
INSERT INTO MANTENIMIENTO VALUES (6, 4, 5, to_date('2022/03/01:06:05:34AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/03/01:06:47:23AM', 'yyyy/mm/dd:hh:mi:ssam'), 'MANTENIMIENTO MUEBLERIA', 18);
INSERT INTO MANTENIMIENTO VALUES (7, 4, 2, to_date('2022/03/02:06:07:20AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/03/02:06:47:14AM', 'yyyy/mm/dd:hh:mi:ssam'), 'MANTENIMIENTO LIMPIEZA', 10);
INSERT INTO MANTENIMIENTO VALUES (8, 2, 3, to_date('2022/03/05:10:08:40PM', 'yyyy/mm/dd:hh:mi:sspm'), to_date('2022/03/05:11:03:44PM', 'yyyy/mm/dd:hh:mi:sspm'), 'MANTENIMIENTO LIMPIEZA', 10);
INSERT INTO MANTENIMIENTO VALUES (9, 4, 6, to_date('2022/03/07:06:10:04AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/03/07:06:44:04AM', 'yyyy/mm/dd:hh:mi:ssam'), 'MANTENIMIENTO ELECTRICIDAD', 15);
INSERT INTO MANTENIMIENTO VALUES (10, 4, 4, to_date('2022/03/25:06:08:56AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/03/25:06:28:00AM', 'yyyy/mm/dd:hh:mi:ssam'), 'MANTENIMIENTO LIMPIEZA', 10);
INSERT INTO MANTENIMIENTO VALUES (11, 5, 2, to_date('2022/04/10:06:10:41AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/04/10:06:43:15AM', 'yyyy/mm/dd:hh:mi:ssam'), 'MANTENIMIENTO LIMPIEZA', 10);
INSERT INTO MANTENIMIENTO VALUES (12, 3, 3, to_date('2022/04/11:10:10:00PM', 'yyyy/mm/dd:hh:mi:sspm'), to_date('2022/04/11:10:28:14PM', 'yyyy/mm/dd:hh:mi:sspm'), 'MANTENIMIENTO LIMPIEZA', 10);
INSERT INTO MANTENIMIENTO VALUES (13, 5, 6, to_date('2022/04/12:06:03:26AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/04/12:06:33:46AM', 'yyyy/mm/dd:hh:mi:ssam'), 'MANTENIMIENTO ELECTRICIDAD', 23);
INSERT INTO MANTENIMIENTO VALUES (14, 3, 2, to_date('2022/04/28:04:12:11PM', 'yyyy/mm/dd:hh:mi:sspm'), to_date('2022/04/28:04:05:17PM', 'yyyy/mm/dd:hh:mi:sspm'), 'MANTENIMIENTO LIMPIEZA', 10);
INSERT INTO MANTENIMIENTO VALUES (15, 1, 2, to_date('2022/04/30:02:08:11PM', 'yyyy/mm/dd:hh:mi:sspm'), to_date('2022/04/30:03:01:31PM', 'yyyy/mm/dd:hh:mi:sspm'), 'MANTENIMIENTO LIMPIEZA', 10);


/* INSERTAR SERVICIO*/
INSERT INTO SERVICIO VALUES (1, 3, 'SERVICIO DE COMIDA: ENCEBOLLADOS');

/* INSERTAR SERVICIO_HABITACION*/
INSERT INTO SERVICIO_HABITACION VALUES (1, 4, 1, to_date('2022/02/16:05:54:10AM', 'yyyy/mm/dd:hh:mi:ssam'));
INSERT INTO SERVICIO_HABITACION VALUES (2, 4, 1, to_date('2022/02/17:05:44:03AM', 'yyyy/mm/dd:hh:mi:ssam'));
INSERT INTO SERVICIO_HABITACION VALUES (3, 4, 1, to_date('2022/02/17:05:49:10AM', 'yyyy/mm/dd:hh:mi:ssam'));
INSERT INTO SERVICIO_HABITACION VALUES (4, 4, 1, to_date('2022/03/01:05:51:34AM', 'yyyy/mm/dd:hh:mi:ssam'));
INSERT INTO SERVICIO_HABITACION VALUES (5, 4, 1, to_date('2022/03/02:05:31:22AM', 'yyyy/mm/dd:hh:mi:ssam'));
INSERT INTO SERVICIO_HABITACION VALUES (6, 5, 1, to_date('2022/03/07:05:48:06AM', 'yyyy/mm/dd:hh:mi:ssam'));
INSERT INTO SERVICIO_HABITACION VALUES (7, 4, 1, to_date('2022/03/25:05:44:56AM', 'yyyy/mm/dd:hh:mi:ssam'));
INSERT INTO SERVICIO_HABITACION VALUES (8, 5, 1, to_date('2022/04/10:05:51:41AM', 'yyyy/mm/dd:hh:mi:ssam'));
INSERT INTO SERVICIO_HABITACION VALUES (9, 5, 1, to_date('2022/04/12:05:22:26AM', 'yyyy/mm/dd:hh:mi:ssam'));


/* INSERTAR FACTURA*/
INSERT INTO FACTURA VALUES (1, 2, 1, to_date('2022/02/15:02:17:00PM', 'yyyy/mm/dd:hh:mi:sspm'), to_date('2022/02/15:03:00:00PM', 'yyyy/mm/dd:hh:mi:sspm'), 35);
INSERT INTO FACTURA VALUES (2, 3, 4, to_date('2022/02/16:03:21:10AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/02/16:06:00:10AM', 'yyyy/mm/dd:hh:mi:ssam'), 13);
INSERT INTO FACTURA VALUES (3, 3, 4, to_date('2022/02/17:04:02:52AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/02/17:06:00:03AM', 'yyyy/mm/dd:hh:mi:ssam'), 13);
INSERT INTO FACTURA VALUES (4, 4, 1, to_date('2022/02/17:04:20:05PM', 'yyyy/mm/dd:hh:mi:sspm'), to_date('2022/02/17:05:10:33PM', 'yyyy/mm/dd:hh:mi:sspm'), 35);
INSERT INTO FACTURA VALUES (5, 5, 4, to_date('2022/02/17:02:22:40AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/02/17:06:00:40AM', 'yyyy/mm/dd:hh:mi:ssam'), 13);
INSERT INTO FACTURA VALUES (6, 7, 4, to_date('2022/03/01:01:50:34AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/03/01:06:00:34AM', 'yyyy/mm/dd:hh:mi:ssam'), 13);
INSERT INTO FACTURA VALUES (7, 3, 4, to_date('2022/03/02:02:47:20AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/03/02:06:02:20AM', 'yyyy/mm/dd:hh:mi:ssam'), 13);
INSERT INTO FACTURA VALUES (8, 6, 2, to_date('2022/03/05:09:20:00PM', 'yyyy/mm/dd:hh:mi:sspm'), to_date('2022/03/05:10:03:40PM', 'yyyy/mm/dd:hh:mi:sspm'), 25);
INSERT INTO FACTURA VALUES (9, 3, 5, to_date('2022/03/07:03:01:04AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/03/07:06:01:04AM', 'yyyy/mm/dd:hh:mi:ssam'), 13);
INSERT INTO FACTURA VALUES (10, 8, 4, to_date('2022/03/25:01:17:00AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/03/25:06:03:56AM', 'yyyy/mm/dd:hh:mi:ssam'), 13);
INSERT INTO FACTURA VALUES (11, 7, 5, to_date('2022/04/10:03:45:41AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/04/10:06:00:41AM', 'yyyy/mm/dd:hh:mi:ssam'), 13);
INSERT INTO FACTURA VALUES (12, 9, 3, to_date('2022/04/11:09:26:00PM', 'yyyy/mm/dd:hh:mi:sspm'), to_date('2022/04/11:10:04:00PM', 'yyyy/mm/dd:hh:mi:sspm'), 15);
INSERT INTO FACTURA VALUES (13, 3, 5, to_date('2022/04/12:01:37:26AM', 'yyyy/mm/dd:hh:mi:ssam'), to_date('2022/04/12:06:01:26AM', 'yyyy/mm/dd:hh:mi:ssam'), 13);
INSERT INTO FACTURA VALUES (14, 10, 3, to_date('2022/04/28:03:01:56PM', 'yyyy/mm/dd:hh:mi:sspm'), to_date('2022/04/28:04:05:17PM', 'yyyy/mm/dd:hh:mi:sspm'), 15);
INSERT INTO FACTURA VALUES (15, 11, 1, to_date('2022/04/30:01:22:00PM', 'yyyy/mm/dd:hh:mi:sspm'), to_date('2022/04/30:02:05:31PM', 'yyyy/mm/dd:hh:mi:sspm'), 35);

