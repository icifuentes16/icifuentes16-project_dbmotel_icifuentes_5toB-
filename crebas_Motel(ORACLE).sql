/*==============================================================*/
/* Nombre:   	Cifuentes Castro Irvin Gustavo          	    */
/* Curso: 		5to Nivel B, Gestion de Bases de Datos  	    */
/*==============================================================*/



/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD  (
   CIUDAD_ID            INTEGER                         not null,
   CIUDAD_NOMBRE        VARCHAR2(100)                   not null,
   constraint PK_CIUDAD primary key (CIUDAD_ID)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE  (
   CLIENTE_ID           INTEGER                         not null,
   TIPO_CLIENTE_ID      INTEGER,
   CLIENTE_NOMBRE       VARCHAR2(50)                    not null,
   CLIENTE_APELLIDO     VARCHAR2(50)                    not null,
   CLIENTE_CEDULA       VARCHAR2(10),
   CLIENTE_DIRECCION    VARCHAR2(50),
   CLIENTE_CORREO       VARCHAR2(50),
   constraint PK_CLIENTE primary key (CLIENTE_ID)
);

/*==============================================================*/
/* Table: CONVENIO                                              */
/*==============================================================*/
create table CONVENIO  (
   CONVENIO_ID          INTEGER                         not null,
   EMPRESA_ID           INTEGER,
   CONVENIO_CONDICIONES VARCHAR2(1000)                  not null,
   constraint PK_CONVENIO primary key (CONVENIO_ID)
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO  (
   EMPLEADO_ID          INTEGER                         not null,
   TIPO_EMPLEADO_ID     INTEGER,
   EMPLEADO_NOMBRE      VARCHAR2(50)                    not null,
   EMPLEADO_APELLIDO    VARCHAR2(50)                    not null,
   EMPLEADO_TELEFONO    VARCHAR2(10)                    not null,
   EMPLEADO_CEDULA      VARCHAR2(10)                    not null,
   constraint PK_EMPLEADO primary key (EMPLEADO_ID)
);

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA  (
   EMPRESA_ID           INTEGER                         not null,
   EMPRESA_NOMBRE       VARCHAR2(100)                   not null,
   constraint PK_EMPRESA primary key (EMPRESA_ID)
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA  (
   FACTURA_ID           INTEGER                         not null,
   CLIENTE_ID           INTEGER,
   HABITACION_ID        INTEGER,
   FACTURA_FECHA_LLEGADA DATE                            not null,
   FACTURA_FECHA_SALIDA DATE                            not null,
   FACTURA_TOTAL        NUMBER(8,2)                     not null,
   constraint PK_FACTURA primary key (FACTURA_ID)
);

/*==============================================================*/
/* Table: HABITACION                                            */
/*==============================================================*/
create table HABITACION  (
   HABITACION_ID        INTEGER                         not null,
   MOTEL_ID             INTEGER,
   HABITACION_PRECIO    NUMBER(8,2)                     not null,
   HABITACION_CAPACIDAD SMALLINT                        not null,
   HABITACION_DESCRIPCION VARCHAR2(100)                   not null,
   constraint PK_HABITACION primary key (HABITACION_ID)
);

/*==============================================================*/
/* Table: MANTENIMIENTO                                         */
/*==============================================================*/
create table MANTENIMIENTO  (
   MANTENIMIENTO_ID     INTEGER                         not null,
   HABITACION_ID        INTEGER,
   EMPLEADO_ID          INTEGER,
   MANTENIMIENTO_FECHA_INICIO DATE                            not null,
   MANTENIMIENTO_FECHA_FIN DATE                            not null,
   MANTENIMIENTO_DESCRIPCION VARCHAR2(100)                   not null,
   MANTENIMIENTO_COSTO  NUMBER                          not null,
   constraint PK_MANTENIMIENTO primary key (MANTENIMIENTO_ID)
);

/*==============================================================*/
/* Table: MOTEL                                                 */
/*==============================================================*/
create table MOTEL  (
   MOTEL_ID             INTEGER                         not null,
   CONVENIO_ID          INTEGER,
   CIUDAD_ID            INTEGER,
   MOTEL_NOMBRE         VARCHAR2(10)                    not null,
   MOTEL_DIRECCION      VARCHAR2(100)                   not null,
   MOTEL_TELEFONO       VARCHAR2(10)                    not null,
   constraint PK_MOTEL primary key (MOTEL_ID)
);

/*==============================================================*/
/* Table: SERVICIO                                              */
/*==============================================================*/
create table SERVICIO  (
   SERVICIO_ID          INTEGER                         not null,
   SERVICIO_PRECIO      NUMBER(8,2)                     not null,
   SERVICIO_DESCRIPCION VARCHAR2(100)                   not null,
   constraint PK_SERVICIO primary key (SERVICIO_ID)
);

/*==============================================================*/
/* Table: SERVICIO_HABITACION                                   */
/*==============================================================*/
create table SERVICIO_HABITACION  (
   SERVICIO_HABITACION_ID INTEGER                         not null,
   HABITACION_ID        INTEGER,
   SERVICIO_ID          INTEGER,
   SERVICIO_HABITACION_FECHA DATE                            not null,
   constraint PK_SERVICIO_HABITACION primary key (SERVICIO_HABITACION_ID)
);

/*==============================================================*/
/* Table: TIPO_CLIENTE                                          */
/*==============================================================*/
create table TIPO_CLIENTE  (
   TIPO_CLIENTE_ID      INTEGER                         not null,
   TIPO_CLIENTE_DESCRIPCION VARCHAR2(50)                    not null,
   constraint PK_TIPO_CLIENTE primary key (TIPO_CLIENTE_ID)
);

/*==============================================================*/
/* Table: TIPO_EMPLEADO                                         */
/*==============================================================*/
create table TIPO_EMPLEADO  (
   TIPO_EMPLEADO_ID     INTEGER                         not null,
   TIPO_EMPLEADO_DESCRIPCION VARCHAR2(50)                    not null,
   constraint PK_TIPO_EMPLEADO primary key (TIPO_EMPLEADO_ID)
);

alter table CLIENTE
   add constraint FK_CLIENTE_RELATIONS_TIPO_CLI foreign key (TIPO_CLIENTE_ID)
      references TIPO_CLIENTE (TIPO_CLIENTE_ID);

alter table CONVENIO
   add constraint FK_CONVENIO_RELATIONS_EMPRESA foreign key (EMPRESA_ID)
      references EMPRESA (EMPRESA_ID);

alter table EMPLEADO
   add constraint FK_EMPLEADO_RELATIONS_TIPO_EMP foreign key (TIPO_EMPLEADO_ID)
      references TIPO_EMPLEADO (TIPO_EMPLEADO_ID);

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_CLIENTE foreign key (CLIENTE_ID)
      references CLIENTE (CLIENTE_ID);

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_HABITACI foreign key (HABITACION_ID)
      references HABITACION (HABITACION_ID);

alter table HABITACION
   add constraint FK_HABITACI_RELATIONS_MOTEL foreign key (MOTEL_ID)
      references MOTEL (MOTEL_ID);

alter table MANTENIMIENTO
   add constraint FK_MANTENIM_RELATIONS_HABITACI foreign key (HABITACION_ID)
      references HABITACION (HABITACION_ID);

alter table MANTENIMIENTO
   add constraint FK_MANTENIM_RELATIONS_EMPLEADO foreign key (EMPLEADO_ID)
      references EMPLEADO (EMPLEADO_ID);

alter table MOTEL
   add constraint FK_MOTEL_RELATIONS_CONVENIO foreign key (CONVENIO_ID)
      references CONVENIO (CONVENIO_ID);

alter table MOTEL
   add constraint FK_MOTEL_RELATIONS_CIUDAD foreign key (CIUDAD_ID)
      references CIUDAD (CIUDAD_ID);

alter table SERVICIO_HABITACION
   add constraint FK_SERVICIO_RELATIONS_HABITACI foreign key (HABITACION_ID)
      references HABITACION (HABITACION_ID);

alter table SERVICIO_HABITACION
   add constraint FK_SERVICIO_RELATIONS_SERVICIO foreign key (SERVICIO_ID)
      references SERVICIO (SERVICIO_ID);

