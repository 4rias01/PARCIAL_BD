# Parcial práctico - Sistema de generación de turnos

Autor: Santiago Arias Rojas
Código de estudiante: 2416285

Materia: Bases de Datos
Universidad: Universidad del Valle
Docente: Jefferson Amado Peña Torres

Descripción
-----------
Este repositorio contiene el esquema (DDL), los datos de prueba (DML) y un conjunto de consultas para un sistema de generación de turnos para la asignación de servicios a usuarios. El objetivo es modelar la información de usuarios, empleados, clientes, proveedores, servicios, turnos y notificaciones.

Contenido
---------
- `practica.ddl.sql` - Sentencias DDL para crear las tablas del esquema.
- `practica.dml.sql` - Sentencias DML con datos de prueba (múltiples registros por tabla).
- `consultas.sql` - Diez consultas SQL de ejemplo para probar el esquema.

Cómo probar
-----------
1. Crear una base de datos vacía en el SGBD de tu preferencia (PostgreSQL, MySQL, SQL Server).
2. Ejecutar `practica.ddl.sql` para crear las tablas.
3. Ejecutar `practica.dml.sql` para poblar las tablas con datos de prueba.
4. Ejecutar `consultas.sql` para validar resultados y explorar los datos.

Notas
-----
- El DDL fue adaptado según requerimientos del curso. Si usas un SGBD diferente a PostgreSQL, puede ser necesario ajustar pequeñas diferencias de sintaxis (p. ej. `CURRENT_TIMESTAMP`, `INTERVAL`, concatenación de cadenas, o `LIMIT`).
- Algunas decisiones de diseño responden a requerimientos del docente (columnas duplicadas como `id_usuario` e `id_empleado`). Si deseas, puedo normalizar el modelo o documentar las anomalías detectadas.

Contacto
--------
Santiago Arias Rojas - estudiante
Correo: (añadir correo si lo deseas)

Licencia
--------
Este repositorio es para fines académicos. Si necesitas otra licencia, indícalo y la añado.
