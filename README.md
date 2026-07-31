# MediSistema - Consultas SQL

## Información del estudiante

- **Nombre:** Juan David Arias Patiño
- **Asignatura:** Bases de Datos
- **Motor de Base de Datos:** MySQL
- **Sistema Operativo:** macOS

---

# Descripción del proyecto

**MediSistema** es una base de datos relacional diseñada para gestionar la información de un centro médico. El sistema permite administrar médicos, empleados, pacientes, vacaciones, sustituciones y consultas médicas, garantizando la integridad de la información mediante el uso de claves primarias y foráneas.

Como parte del desarrollo del proyecto se implementó un conjunto de consultas SQL que permiten obtener información estadística y administrativa utilizando funciones de agregación, agrupamiento, filtros y relaciones entre tablas.

---

# Modelo lógico

A continuación se presenta el modelo lógico de la base de datos implementada.

<p align="center">
    <img src="img/modelo_logico.png" width="900">
</p>

---

# Evidencias de las consultas

## Consulta 1. Número de pacientes atendidos por cada médico

<p align="center">
    <img src="img/consulta_uno.png">
</p>

---

## Consulta 2. Total de días de vacaciones planificadas y disfrutadas por cada empleado

<p align="center">
    <img src="img/consulta_dos.png">
</p>

---

## Consulta 3. Médicos con mayor cantidad de horas de consulta en la semana

<p align="center">
    <img src="img/consulta_tres.png">
</p>

---

## Consulta 4. Número de sustituciones realizadas por cada médico sustituto

<p align="center">
    <img src="img/consulta_cuatro.png">
</p>

---

## Consulta 5. Número de médicos que están actualmente en sustitución

<p align="center">
    <img src="img/consulta_cinco.png">
</p>

---

## Consulta 6. Horas totales de consulta por médico por día de la semana

<p align="center">
    <img src="img/consulta_seis.png">
</p>

---

## Consulta 7. Médico con mayor cantidad de pacientes asignados

<p align="center">
    <img src="img/consulta_siete.png">
</p>

---

## Consulta 8. Empleados con más de 10 días de vacaciones disfrutadas

<p align="center">
    <img src="img/consulta_ocho.png">
</p>

---

## Consulta 9. Médicos que actualmente están realizando una sustitución

<p align="center">
    <img src="img/consulta_nueve.png">
</p>

---

## Consulta 10. Promedio de horas de consulta por médico por día de la semana

<p align="center">
    <img src="img/consulta_diez.png">
</p>

---

## Consulta 12. Médicos con más de 5 pacientes y total de horas de consulta en la semana

<p align="center">
    <img src="img/consulta_doce.png">
</p>

---

## Consulta 13. Total de días de vacaciones planificadas y disfrutadas por cada tipo de empleado

<p align="center">
    <img src="img/consulta_trece.png">
</p>

---

## Consulta 14. Total de pacientes por cada tipo de médico

<p align="center">
    <img src="img/consulta_catorce.png">
</p>

---

## Consulta 15. Total de horas de consulta por médico y día de la semana

<p align="center">
    <img src="img/consulta_quince.png">
</p>

---

## Consulta 16. Número de sustituciones por tipo de médico

<p align="center">
    <img src="img/consulta_dieciseis.png">
</p>

---

## Consulta 17. Total de pacientes por médico y por especialidad

<p align="center">
    <img src="img/consulta_diecisiete.png">
</p>

---

## Consulta 18. Empleados y médicos con más de 20 días de vacaciones planificadas

<p align="center">
    <img src="img/consulta_dieciocho.png">
</p>

---

## Consulta 19. Médicos con el mayor número de pacientes actualmente en sustitución

<p align="center">
    <img src="img/consulta_diecinueve.png">
</p>

---

## Consulta 20. Total de horas de consulta por especialidad y día de la semana

<p align="center">
    <img src="img/consulta_veinte.png">
</p>

---

# Tecnologías utilizadas

- MySQL
- SQL
- MySQL Workbench
- Git
- GitHub

---

# Conclusiones

- Se diseñó e implementó una base de datos relacional para la gestión de información de un centro médico utilizando MySQL.
- Se aplicaron conceptos fundamentales del modelo relacional, incluyendo claves primarias, claves foráneas y restricciones para mantener la integridad de los datos.
- Se desarrollaron consultas SQL empleando funciones de agregación como `COUNT()`, `SUM()`, `AVG()` y `DATEDIFF()`, además de operaciones de agrupamiento mediante `GROUP BY` y filtros con `HAVING`.
- Las consultas permitieron obtener información relevante sobre la gestión de médicos, empleados, vacaciones, sustituciones y consultas médicas.
- El proyecto fortaleció el manejo de consultas de complejidad media, el uso de relaciones entre tablas y el análisis de información mediante SQL.