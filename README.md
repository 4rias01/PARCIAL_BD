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
1. Crear una base de datos vacía en el SGBD de tu preferencia (PostgreSQL, MySQL, SQL Server), en este caso usaremos PostgresSQL.
2. Crear un contenedor de Docker con las instrucción: `docker run -it -e POSTGRES_USER=ulimar -e POSTGRES_PASSWORD=ex4m_db -p 5432:5432 postgres:14` para inicializar el SGBD.
3. Crear otro contenedor de Docker para usar PGAdmin: `docker run -p 5050:80 -e "PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com" -e "PGADMIN_DEFAULT_PASSWORD=limar#123" dpage/pgadmin4`.
4. Abrir localhost:5050 desde el navegador de preferencia e ingresamos el usuario y contraseña especificados en el paso anterior.
5. Crear un nueva base de datos, agregamos el nombre de nuestra preferencia y colocamos en la pestala de conexión la IP del contenedor de Postgres y su usuario y contraseña.
6. Crear una herramienta de consulta dentro de la base de datos.
7. Ejecutar `practica.ddl.sql` para crear las tablas.
8. Ejecutar `practica.dml.sql` para poblar las tablas con datos de prueba.
9. Ejecutar `consultas.sql` para validar resultados y explorar los datos.

Nota
-----
- Algunas decisiones de diseño responden a requerimientos del docente (columnas duplicadas como `id_usuario` e `id_empleado`). Si deseas, puedo normalizar el modelo o documentar las anomalías detectadas.

Contacto
--------
Santiago Arias Rojas - estudiante
Correo: santiago.arias.rojas@correounivalle.edu.co
