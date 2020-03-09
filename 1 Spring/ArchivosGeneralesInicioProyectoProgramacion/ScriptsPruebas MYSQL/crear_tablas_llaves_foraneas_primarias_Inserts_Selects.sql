create database db_escuela ;
use db_escuela;

-- Crear la tabla de carrera con  llave primaria
CREATE TABLE `db_escuela`.`carrera`  (
`clave_c` INT,
`nomb_c` VARCHAR(50),
`dur_c` FLOAT,
CONSTRAINT pk_cc PRIMARY KEY (clave_c)
);

-- Crear la tabla de profersor con llave primaria
CREATE TABLE `db_escuela`.`profesor`  (
`clave_p` INT,
`nomb_p` VARCHAR(50),
`tel_p`  VARCHAR(50),
`hor_p`  datetime,
CONSTRAINT pk_cp PRIMARY KEY (clave_p)
);


-- Crear la tabla de materia con llave primaria
CREATE TABLE `db_escuela`.`materia`  (
`clave_m` INT,
`nomb_m` VARCHAR(50),
`dur_m` FLOAT,
CONSTRAINT pk_cm PRIMARY KEY (clave_m)
);


-- Crear la tabla de alumno con llave primaria y foranea
/*Relacion uno a muchos entre
Alumno y
Carrera*/

CREATE TABLE `db_escuela`.`alumno`  (
`clave_a` INT,
`nomb_a` VARCHAR(50),
`semb_a` FLOAT,
`clave_c1` INT,
CONSTRAINT pk_ca PRIMARY KEY (clave_a),
CONSTRAINT fk_fc1 FOREIGN KEY (clave_c1) REFERENCES carrera (clave_c)
);


-- Crear la tabla de alumno con llave primaria y foranea
/*Relacion muchos a muchos entre
Alumno y
Carrera*/

CREATE TABLE `db_escuela`.`alu_prof`  (
`clave_a2` INT,
`clave_p1` INT,
CONSTRAINT fk_fca2 FOREIGN KEY (clave_a2) REFERENCES alumno (clave_a),
CONSTRAINT fk_fcp1 FOREIGN KEY (clave_p1) REFERENCES profesor (clave_p)
);

CREATE TABLE `db_escuela`.`prof_mat`  (
`clave_p2` INT,
`clave_m2` INT,
CONSTRAINT fk_fcp2 FOREIGN KEY (clave_p2) REFERENCES profesor (clave_p),
CONSTRAINT fk_fcm2 FOREIGN KEY (clave_m2) REFERENCES materia (clave_m)
);

CREATE TABLE `db_escuela`.`alu_mat`  (
`clave_a1` INT,
`clave_m1` INT,
CONSTRAINT fk_fca1 FOREIGN KEY (clave_a1) REFERENCES alumno (clave_a),
CONSTRAINT fk_fcm1 FOREIGN KEY (clave_m1) REFERENCES materia (clave_m)
);

-- Agergar valores a la tabla carrera
INSERT INTO carrera values(1,'Ingenieria de Sistemas',10);
INSERT INTO carrera values(2,'Ingenieria de Telecomunicaciones',10);
INSERT INTO carrera values(3,'Ingenieria de Emprendimiento',10);


-- Seleccionar todos los valores de las carreras
SELECT * FROM carrera;
SELECT nomb_c, dur_c FROM carrera;



