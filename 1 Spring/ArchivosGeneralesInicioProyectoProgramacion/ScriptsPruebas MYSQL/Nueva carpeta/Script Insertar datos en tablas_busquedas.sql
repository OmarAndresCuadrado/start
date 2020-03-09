-- Agergar valores a la tabla carrera
INSERT INTO carrera values(1,'Ingenieria de Sistemas',10);
INSERT INTO carrera values(2,'Ingenieria de Telecomunicaciones',10);
INSERT INTO carrera values(3,'Ingenieria de Emprendimiento',10);


-- Agergar valores a la tabla Materia
INSERT INTO materia values(1,'Calculo','5 semanas');
INSERT INTO materia values(2,'Fisica','5 semanas');
INSERT INTO materia values(3,'Algebra','5 semanas');


-- Agergar valores a la tabla Profesor
INSERT INTO profesor values(1,'Luis Esteven','3103130302','mañana');
INSERT INTO profesor values(2,'Luis pablo','3103130302','noche');
INSERT INTO profesor values(3,'Luis','3103130302','mañana');


-- Agergar valores a la tabla Alumno
-- Teniendo como referencia la llave foranea de carrera
INSERT INTO alumno values(1,'Omar Andres Cuadrado',10,1);
INSERT INTO alumno values(2,'Napoleon Gil',10,1);


/*Agregar datos a las tablas con relaciones muchos a muchos*/

/*Alumno--Profesor*/
INSERT INTO alu_prof values(1,2);
INSERT INTO alu_prof values(2,2);
INSERT INTO alu_prof values(2,3);

/*Alumno--Materia*/
INSERT INTO alu_mat values(1,2);
INSERT INTO alu_mat values(2,2);
INSERT INTO alu_mat values(2,3);

/*Profesor--Materia*/
INSERT INTO prof_mat values(1,2);
INSERT INTO prof_mat values(2,2);
INSERT INTO prof_mat values(2,3);


/* BASE DE DATOS DE SUPERMERCADO PEQUEÑA */
create database modificar;

use modificar;

create table producto(
clave_prod int,
nom_prod varchar(20),
precio float,
constraint pk_cp primary key (clave_prod));

create table cliente(
clave_clie int,
nom_clie varchar(20),
constraint pk_cc primary key (clave_clie));

create table nota(
folio int,
clave_prod1 int,
clave_clie1 int,
cant int,
subtot float,
constraint fk_cp1 foreign key (clave_prod1) references producto (clave_prod),
constraint fk_cc1 foreign key (clave_clie1) references cliente (clave_clie));

insert into producto values (1,'papas',7);
insert into producto values (2,'refresco',9);
insert into producto values (3,'galletas',9);


insert into cliente values (1,'ana');
insert into cliente values (2,'sergio');

insert into nota values (1,1,1,4,null);
insert into nota values (2,2,2,1,null);