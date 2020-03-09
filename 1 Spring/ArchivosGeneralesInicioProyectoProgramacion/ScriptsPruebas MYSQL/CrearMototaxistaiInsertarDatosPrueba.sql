CREATE DATABASE db_mysql_movi;
show databases;
create user 'moviadmin'@'%' identified by 'Awesome123';
grant all on db_mysql_movi.* to 'moviadmin'@'%'

INSERT INTO Mototaxistas (name, phone , password ) VALUES ('Omitar', 'Cuadrado', 'omitarcuadrado@gmail.com');
INSERT INTO Mototaxistas (name, phone , password ) VALUES ('Pedro', 'Gutierrez', 'pedrogutierrez@gmail.com');
INSERT INTO Mototaxistas (name, phone , password ) VALUES ('Pablo', 'Arenas', 'pabloarenas@gmail.com');
INSERT INTO Mototaxistas (name, phone , password ) VALUES ('Pedro', 'Gutierrez', 'pedrogutierrez@gmail.com');
