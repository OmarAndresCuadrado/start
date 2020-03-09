-- Unir dos tablas one-to-many
SELECT nomb_a,semb_a , nomb_c
FROM alumno INNER JOIN carrera on alumno.clave_a = carrera.clave_c ;

-- Unir tres tablas one-to-many many-to-many 
SELECT nomb_a, nomb_m, semb_a , nomb_c, nomb_p 	
FROM alumno INNER JOIN carrera ON alumno.clave_c1 = carrera.clave_c
INNER JOIN alu_prof ON alu_prof.clave_a2 = alumno.clave_a
INNER JOIN profesor ON profesor.clave_p = alu_prof.clave_p1


-- Unir cuatro tablas one-to-many many-to-many 
SELECT nomb_a, nomb_m, semb_a , nomb_c, nomb_p 	
FROM alumno INNER JOIN carrera ON alumno.clave_c1 = carrera.clave_c
INNER JOIN alu_prof ON alu_prof.clave_a2 = alumno.clave_a
INNER JOIN profesor ON profesor.clave_p = alu_prof.clave_p1
INNER JOIN alu_mat ON alu_mat.clave_a1 = alumno.clave_a
INNER JOIN materia ON materia.clave_m = alu_mat.clave_m1


-- Filtros
-- Unir tres tablas one-to-many many-to-many 
SELECT nomb_a, nomb_m, semb_a , nomb_c, nomb_p 	
FROM alumno INNER JOIN carrera ON alumno.clave_c1 = carrera.clave_c
INNER JOIN alu_prof ON alu_prof.clave_a2 = alumno.clave_a
INNER JOIN profesor ON profesor.clave_p = alu_prof.clave_p1
INNER JOIN alu_mat ON alu_mat.clave_a1 = alumno.clave_a
INNER JOIN materia ON materia.clave_m = alu_mat.clave_m1
WHERE nomb_c = 'Ingenieria de Sistemas'

