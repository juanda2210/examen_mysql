CREATE DATABASE MediSistema;

USE MediSistema;

CREATE TABLE medicos(
	id_medico INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR (25) NOT NULL,
    tipo ENUM ('TITULAR', 'INTERINO', 'SUSTITUTO') NOT NULL,
    especialidad ENUM ('Cardiologia', 'Dermatologia', 'Gastroenterologia', 'General') NOT NULL,
    horarios_de_consulta ENUM ('MATUTINO', 'NOCTURNO') NOT NULL,
    periodos_de_sustitucion ENUM ('MATUTINO', 'NOCTURNO') NOT NULL,
    active TINYINT(1) NOT NULL DEFAULT 1,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE empleados(
	id_empleado INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR (25) NOT NULL,
    tipo ENUM ('COCINERO', 'AUXENFERMERIA', 'CELADOR', 'ADMINISTRATIVO') NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE pacientes(
	id_paciente INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR (25) NOT NULL,
    active TINYINT(1) NOT NULL DEFAULT 1,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE vacaciones(
	id_vacaciones INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    id_medico INT UNSIGNED,
    id_empleado INT UNSIGNED,
    fecha_ingreso_vacaciones DATE,
    fecha_regreso_vacaciones DATE,
    estado ENUM ('PLANIFICADAS', 'DISFRUTADAS') NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,
	
    FOREIGN KEY(id_medico)
    REFERENCES medicos(id_medico)
    ON UPDATE CASCADE,
    
    FOREIGN KEY(id_empleado)
    REFERENCES empleados(id_empleado)
    ON UPDATE CASCADE
);

CREATE TABLE consultas(
	id_consulta INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_medico INT UNSIGNED,
    id_empleado INT UNSIGNED,
    dia_semana ENUM ('LUN', 'MAR', 'MIE', 'JUE', 'VIE'),
    fecha DATETIME,
    
    FOREIGN KEY(id_medico)
    REFERENCES medicos(id_medico)
    ON UPDATE CASCADE,
    
    FOREIGN KEY(id_empleado)
    REFERENCES empleados(id_empleado)
    ON UPDATE CASCADE
);

CREATE TABLE sustituciones(
	id_sustitucion INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_medico INT,
    fecha_inicializacion DATETIME,
    fecha_finalizacion DATETIME
);


INSERT INTO medicos (
    nombre,
    tipo,
    especialidad,
    horarios_de_consulta,
    periodos_de_sustitucion
)
VALUES
('Juan Perez', 'TITULAR', 'Cardiologia', 'MATUTINO', 'NOCTURNO'),
('Maria Gomez', 'INTERINO', 'Dermatologia', 'NOCTURNO', 'MATUTINO'),
('Carlos Ramirez', 'SUSTITUTO', 'General', 'MATUTINO', 'MATUTINO'),
('Ana Torres', 'TITULAR', 'Gastroenterologia', 'NOCTURNO', 'NOCTURNO'),
('Luis Herrera', 'INTERINO', 'Cardiologia', 'MATUTINO', 'NOCTURNO'),
('Sofia Martinez', 'SUSTITUTO', 'Dermatologia', 'NOCTURNO', 'MATUTINO'),
('Diego Castro', 'TITULAR', 'General', 'MATUTINO', 'MATUTINO'),
('Laura Rojas', 'INTERINO', 'Gastroenterologia', 'NOCTURNO', 'NOCTURNO'),
('Andres Mendoza', 'SUSTITUTO', 'Cardiologia', 'MATUTINO', 'NOCTURNO'),
('Valentina Ortiz', 'TITULAR', 'Dermatologia', 'NOCTURNO', 'MATUTINO'),
('Fernando Silva', 'INTERINO', 'General', 'MATUTINO', 'MATUTINO'),
('Paula Jimenez', 'SUSTITUTO', 'Gastroenterologia', 'NOCTURNO', 'NOCTURNO'),
('Ricardo Vargas', 'TITULAR', 'Cardiologia', 'MATUTINO', 'NOCTURNO'),
('Camila Moreno', 'INTERINO', 'Dermatologia', 'NOCTURNO', 'MATUTINO'),
('Jorge Pineda', 'SUSTITUTO', 'General', 'MATUTINO', 'NOCTURNO'),
('Natalia Cardenas', 'TITULAR', 'Gastroenterologia', 'NOCTURNO', 'MATUTINO'),
('Sebastian Lopez', 'INTERINO', 'Cardiologia', 'MATUTINO', 'MATUTINO'),
('Daniela Cruz', 'SUSTITUTO', 'Dermatologia', 'NOCTURNO', 'NOCTURNO'),
('Miguel Sanchez', 'TITULAR', 'General', 'MATUTINO', 'NOCTURNO'),
('Isabella Reyes', 'INTERINO', 'Gastroenterologia', 'NOCTURNO', 'MATUTINO'),
('David Herrera', 'SUSTITUTO', 'Cardiologia', 'MATUTINO', 'MATUTINO'),
('Gabriela Navarro', 'TITULAR', 'Dermatologia', 'NOCTURNO', 'NOCTURNO'),
('Oscar Molina', 'INTERINO', 'General', 'MATUTINO', 'NOCTURNO'),
('Patricia Rios', 'SUSTITUTO', 'Gastroenterologia', 'NOCTURNO', 'MATUTINO'),
('Alejandro Castillo', 'TITULAR', 'Cardiologia', 'MATUTINO', 'MATUTINO');


INSERT INTO empleados (nombre, tipo)
VALUES
('Juan Perez', 'COCINERO'),
('Maria Gomez', 'AUXENFERMERIA'),
('Carlos Ramirez', 'CELADOR'),
('Ana Torres', 'ADMINISTRATIVO'),
('Luis Herrera', 'COCINERO'),
('Sofia Martinez', 'AUXENFERMERIA'),
('Diego Castro', 'CELADOR'),
('Laura Rojas', 'ADMINISTRATIVO'),
('Andres Mendoza', 'COCINERO'),
('Valentina Ortiz', 'AUXENFERMERIA'),
('Fernando Silva', 'CELADOR'),
('Paula Jimenez', 'ADMINISTRATIVO'),
('Ricardo Vargas', 'COCINERO'),
('Camila Moreno', 'AUXENFERMERIA'),
('Jorge Pineda', 'CELADOR'),
('Natalia Cardenas', 'ADMINISTRATIVO'),
('Sebastian Lopez', 'COCINERO'),
('Daniela Cruz', 'AUXENFERMERIA'),
('Miguel Sanchez', 'CELADOR'),
('Isabella Reyes', 'ADMINISTRATIVO'),
('David Herrera', 'COCINERO'),
('Gabriela Navarro', 'AUXENFERMERIA'),
('Oscar Molina', 'CELADOR'),
('Patricia Rios', 'ADMINISTRATIVO'),
('Alejandro Castillo', 'COCINERO'),
('Juliana Franco', 'AUXENFERMERIA'),
('Kevin Restrepo', 'CELADOR'),
('Carolina Duarte', 'ADMINISTRATIVO'),
('Nicolas Salazar', 'COCINERO'),
('Tatiana Herrera', 'AUXENFERMERIA');

INSERT INTO pacientes (nombre)
VALUES
('Juan Perez'),
('Maria Gomez'),
('Carlos Ramirez'),
('Ana Torres'),
('Luis Herrera'),
('Sofia Martinez'),
('Diego Castro'),
('Laura Rojas'),
('Andres Mendoza'),
('Valentina Ortiz'),
('Fernando Silva'),
('Paula Jimenez'),
('Ricardo Vargas'),
('Camila Moreno'),
('Jorge Pineda'),
('Natalia Cardenas'),
('Sebastian Lopez'),
('Daniela Cruz'),
('Miguel Sanchez'),
('Isabella Reyes'),
('David Herrera'),
('Gabriela Navarro'),
('Oscar Molina'),
('Patricia Rios'),
('Alejandro Castillo'),
('Juliana Franco'),
('Kevin Restrepo'),
('Carolina Duarte'),
('Nicolas Salazar'),
('Tatiana Herrera');

INSERT INTO vacaciones (
    id_medico,
    id_empleado,
    fecha_ingreso_vacaciones,
    fecha_regreso_vacaciones,
    estado
)
VALUES

(1, NULL, '2026-01-05', '2026-01-19', 'DISFRUTADAS'),
(2, NULL, '2026-02-02', '2026-02-16', 'DISFRUTADAS'),
(4, NULL, '2026-03-09', '2026-03-23', 'DISFRUTADAS'),
(5, NULL, '2026-04-06', '2026-04-20', 'DISFRUTADAS'),
(7, NULL, '2026-05-04', '2026-05-18', 'DISFRUTADAS'),
(8, NULL, '2026-06-01', '2026-06-15', 'DISFRUTADAS'),
(10, NULL, '2026-07-06', '2026-07-20', 'PLANIFICADAS'),
(11, NULL, '2026-08-03', '2026-08-17', 'PLANIFICADAS'),
(13, NULL, '2026-09-07', '2026-09-21', 'PLANIFICADAS'),
(14, NULL, '2026-10-05', '2026-10-19', 'PLANIFICADAS'),
(16, NULL, '2026-11-02', '2026-11-16', 'PLANIFICADAS'),
(17, NULL, '2026-12-07', '2026-12-21', 'PLANIFICADAS'),
(19, NULL, '2027-01-04', '2027-01-18', 'PLANIFICADAS'),
(20, NULL, '2027-02-01', '2027-02-15', 'PLANIFICADAS'),
(22, NULL, '2027-03-01', '2027-03-15', 'PLANIFICADAS'),
(23, NULL, '2027-04-05', '2027-04-19', 'PLANIFICADAS'),
(25, NULL, '2027-05-03', '2027-05-17', 'PLANIFICADAS'),


(NULL, 1, '2026-01-12', '2026-01-26', 'DISFRUTADAS'),
(NULL, 2, '2026-01-19', '2026-02-02', 'DISFRUTADAS'),
(NULL, 3, '2026-02-02', '2026-02-16', 'DISFRUTADAS'),
(NULL, 4, '2026-02-09', '2026-02-23', 'DISFRUTADAS'),
(NULL, 5, '2026-03-02', '2026-03-16', 'DISFRUTADAS'),
(NULL, 6, '2026-03-16', '2026-03-30', 'DISFRUTADAS'),
(NULL, 7, '2026-04-06', '2026-04-20', 'DISFRUTADAS'),
(NULL, 8, '2026-04-20', '2026-05-04', 'DISFRUTADAS'),
(NULL, 9, '2026-05-04', '2026-05-18', 'DISFRUTADAS'),
(NULL, 10, '2026-05-18', '2026-06-01', 'DISFRUTADAS'),
(NULL, 11, '2026-06-08', '2026-06-22', 'DISFRUTADAS'),
(NULL, 12, '2026-06-22', '2026-07-06', 'DISFRUTADAS'),
(NULL, 13, '2026-07-06', '2026-07-20', 'PLANIFICADAS'),
(NULL, 14, '2026-07-20', '2026-08-03', 'PLANIFICADAS'),
(NULL, 15, '2026-08-03', '2026-08-17', 'PLANIFICADAS'),
(NULL, 16, '2026-08-17', '2026-08-31', 'PLANIFICADAS'),
(NULL, 17, '2026-09-07', '2026-09-21', 'PLANIFICADAS'),
(NULL, 18, '2026-09-21', '2026-10-05', 'PLANIFICADAS'),
(NULL, 19, '2026-10-05', '2026-10-19', 'PLANIFICADAS'),
(NULL, 20, '2026-10-19', '2026-11-02', 'PLANIFICADAS'),
(NULL, 21, '2026-11-02', '2026-11-16', 'PLANIFICADAS'),
(NULL, 22, '2026-11-16', '2026-11-30', 'PLANIFICADAS'),
(NULL, 23, '2026-12-07', '2026-12-21', 'PLANIFICADAS'),
(NULL, 24, '2026-12-21', '2027-01-04', 'PLANIFICADAS'),
(NULL, 25, '2027-01-04', '2027-01-18', 'PLANIFICADAS'),
(NULL, 26, '2027-01-18', '2027-02-01', 'PLANIFICADAS'),
(NULL, 27, '2027-02-01', '2027-02-15', 'PLANIFICADAS'),
(NULL, 28, '2027-02-15', '2027-03-01', 'PLANIFICADAS'),
(NULL, 29, '2027-03-01', '2027-03-15', 'PLANIFICADAS'),
(NULL, 30, '2027-03-15', '2027-03-29', 'PLANIFICADAS');

INSERT INTO sustituciones (
    id_medico,
    fecha_inicializacion,
    fecha_finalizacion
)
VALUES
(3, '2026-07-27 07:00:00', '2026-07-31 19:00:00'),
(6, '2026-07-28 07:00:00', '2026-07-30 19:00:00'),

(9, '2026-02-09 07:00:00', '2026-02-13 19:00:00'),
(12, '2026-03-16 07:00:00', '2026-03-20 19:00:00'),
(15, '2026-05-11 07:00:00', '2026-05-15 19:00:00'),
(18, '2026-08-17 07:00:00', '2026-08-21 19:00:00'),
(21, '2026-10-05 07:00:00', '2026-10-09 19:00:00'),
(24, '2026-11-23 07:00:00', '2026-11-27 19:00:00');


INSERT INTO consultas (
    id_medico,
    id_empleado,
    dia_semana,
    fecha
)
VALUES
-- Lunes 27 de julio
(3, 1, 'LUN', '2026-07-27 08:00:00'),
(3, 2, 'LUN', '2026-07-27 09:00:00'),
(6, 3, 'LUN', '2026-07-27 10:30:00'),
(6, 4, 'LUN', '2026-07-27 14:00:00'),

-- Martes 28 de julio
(3, 5, 'MAR', '2026-07-28 08:30:00'),
(3, 6, 'MAR', '2026-07-28 11:00:00'),
(6, 7, 'MAR', '2026-07-28 15:00:00'),

-- Miércoles 29 de julio
(3, 8, 'MIE', '2026-07-29 08:00:00'),
(6, 9, 'MIE', '2026-07-29 10:00:00'),
(6, 10, 'MIE', '2026-07-29 16:00:00'),

-- Jueves 30 de julio
(3, 1, 'JUE', '2026-07-30 09:00:00'),
(3, 2, 'JUE', '2026-07-30 11:30:00'),
(6, 3, 'JUE', '2026-07-30 14:30:00'),

-- Viernes 31 de julio
(3, 4, 'VIE', '2026-07-31 08:00:00'),
(3, 5, 'VIE', '2026-07-31 10:30:00'),
(6, 6, 'VIE', '2026-07-31 13:00:00'),
(6, 7, 'VIE', '2026-07-31 16:00:00');




-- CONSULTAS

SELECT
    m.id_medico,
    m.nombre,
    COUNT(c.id_consulta) AS pacientes_atendidos
FROM medicos m
LEFT JOIN consultas c
ON m.id_medico = c.id_medico
GROUP BY m.id_medico, m.nombre;



SELECT
    e.id_empleado,
    e.nombre,
    v.estado,
    SUM(DATEDIFF(v.fecha_regreso_vacaciones, v.fecha_ingreso_vacaciones)) AS total_dias
FROM empleados e
JOIN vacaciones v
ON e.id_empleado = v.id_empleado
GROUP BY e.id_empleado, e.nombre, v.estado;



SELECT
    m.id_medico,
    m.nombre,
    COUNT(*) AS horas_consulta
FROM medicos m
JOIN consultas c
ON m.id_medico = c.id_medico
GROUP BY m.id_medico, m.nombre
ORDER BY horas_consulta DESC;



SELECT
    m.id_medico,
    m.nombre,
    COUNT(s.id_sustitucion) AS total_sustituciones
FROM medicos m
LEFT JOIN sustituciones s
ON m.id_medico = s.id_medico
WHERE m.tipo = 'SUSTITUTO'
GROUP BY m.id_medico, m.nombre;



SELECT
    COUNT(*) AS medicos_en_sustitucion
FROM sustituciones
WHERE CURDATE() BETWEEN DATE(fecha_inicializacion) AND DATE(fecha_finalizacion);



SELECT
    m.nombre,
    c.dia_semana,
    COUNT(*) AS horas_totales
FROM consultas c
JOIN medicos m
ON c.id_medico = m.id_medico
GROUP BY m.nombre, c.dia_semana;



SELECT
    m.nombre,
    COUNT(*) AS pacientes
FROM consultas c
JOIN medicos m
ON c.id_medico = m.id_medico
GROUP BY m.nombre
ORDER BY pacientes DESC
LIMIT 1;


SELECT
    e.nombre,
    SUM(DATEDIFF(v.fecha_regreso_vacaciones, v.fecha_ingreso_vacaciones)) AS dias
FROM empleados e
JOIN vacaciones v
ON e.id_empleado = v.id_empleado
WHERE v.estado = 'DISFRUTADAS'
GROUP BY e.nombre
HAVING dias > 10;


SELECT
    m.id_medico,
    m.nombre
FROM medicos m
JOIN sustituciones s
ON m.id_medico = s.id_medico
WHERE CURDATE() BETWEEN DATE(s.fecha_inicializacion) AND DATE(s.fecha_finalizacion);


SELECT
    m.nombre,
    AVG(total_consultas) AS promedio
FROM (
    SELECT
        id_medico,
        dia_semana,
        COUNT(*) AS total_consultas
    FROM consultas
    GROUP BY id_medico, dia_semana
) t
JOIN medicos m
ON t.id_medico = m.id_medico
GROUP BY m.nombre;


SELECT
    m.nombre,
    COUNT(*) AS pacientes,
    COUNT(*) AS horas
FROM consultas c
JOIN medicos m
ON c.id_medico = m.id_medico
GROUP BY m.nombre
HAVING pacientes > 5;


SELECT
    e.tipo,
    v.estado,
    SUM(DATEDIFF(v.fecha_regreso_vacaciones, v.fecha_ingreso_vacaciones)) AS dias
FROM empleados e
JOIN vacaciones v
ON e.id_empleado = v.id_empleado
GROUP BY e.tipo, v.estado;


SELECT
    m.tipo,
    COUNT(*) AS pacientes
FROM consultas c
JOIN medicos m
ON c.id_medico = m.id_medico
GROUP BY m.tipo;


SELECT
    m.nombre,
    c.dia_semana,
    COUNT(*) AS horas
FROM consultas c
JOIN medicos m
ON c.id_medico = m.id_medico
GROUP BY m.nombre, c.dia_semana;


SELECT
    m.tipo,
    COUNT(s.id_sustitucion) AS sustituciones
FROM medicos m
LEFT JOIN sustituciones s
ON m.id_medico = s.id_medico
GROUP BY m.tipo;


SELECT
    m.nombre,
    m.especialidad,
    COUNT(*) AS pacientes
FROM consultas c
JOIN medicos m
ON c.id_medico = m.id_medico
GROUP BY m.nombre, m.especialidad;



SELECT
    nombre,
    dias
FROM (
    SELECT
        e.nombre,
        SUM(DATEDIFF(v.fecha_regreso_vacaciones, v.fecha_ingreso_vacaciones)) AS dias
    FROM empleados e
    JOIN vacaciones v
    ON e.id_empleado = v.id_empleado
    WHERE estado = 'PLANIFICADAS'
    GROUP BY e.nombre

    UNION ALL

    SELECT
        m.nombre,
        SUM(DATEDIFF(v.fecha_regreso_vacaciones, v.fecha_ingreso_vacaciones))
    FROM medicos m
    JOIN vacaciones v
    ON m.id_medico = v.id_medico
    WHERE estado = 'PLANIFICADAS'
    GROUP BY m.nombre
) t
WHERE dias > 20;



SELECT
    m.nombre,
    COUNT(c.id_consulta) AS pacientes
FROM medicos m
JOIN sustituciones s
ON m.id_medico = s.id_medico
JOIN consultas c
ON m.id_medico = c.id_medico
WHERE CURDATE() BETWEEN DATE(s.fecha_inicializacion) AND DATE(s.fecha_finalizacion)
GROUP BY m.nombre
ORDER BY pacientes DESC;

SELECT
    m.especialidad,
    c.dia_semana,
    COUNT(*) AS horas
FROM consultas c
JOIN medicos m
ON c.id_medico = m.id_medico
GROUP BY m.especialidad, c.dia_semana;


