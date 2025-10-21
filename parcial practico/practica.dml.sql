-- Archivo DML

-- Ciudades (10)
INSERT INTO ciudad (id_ciudad, nombre, pais, codigo_postal) VALUES
(1, 'Bogotá', 'Colombia', '110111'),
(2, 'Medellín', 'Colombia', '050001'),
(3, 'Cali', 'Colombia', '760001'),
(4, 'Barranquilla', 'Colombia', '080001'),
(5, 'Cartagena', 'Colombia', '130001'),
(6, 'Lima', 'Perú', '15001'),
(7, 'Santiago', 'Chile', '8320000'),
(8, 'Buenos Aires', 'Argentina', 'C1000'),
(9, 'Montevideo', 'Uruguay', '11000'),
(10, 'Quito', 'Ecuador', '170101');

-- Medios (10)
INSERT INTO medio (id_medio, tipo, descripcion) VALUES
(1, 'correo', 'Correo electrónico'),
(2, 'telefono', 'Llamada telefónica'),
(3, 'sms', 'Mensaje de texto'),
(4, 'whatsapp', 'Mensaje WhatsApp'),
(5, 'app', 'Notificación en app móvil'),
(6, 'fax', 'Fax'),
(7, 'telegram', 'Telegram'),
(8, 'push', 'Push notification'),
(9, 'otro', 'Otro medio'),
(10, 'callcenter', 'Call center');

-- Servicios (10)
INSERT INTO servicio (id_servicio, nombre, descripcion, estado) VALUES
(1, 'Despacho', 'Despacho de paquetes y documentos', 'activo'),
(2, 'Entrega', 'Entrega a domicilio', 'activo'),
(3, 'Recepción', 'Recepción y atención de clientes', 'activo'),
(4, 'Consultoría', 'Asesoría y consultoría especializada', 'activo'),
(5, 'Soporte', 'Soporte técnico y operativo', 'activo'),
(6, 'Mantenimiento', 'Servicio de mantenimiento', 'activo'),
(7, 'Instalación', 'Instalación de equipos', 'activo'),
(8, 'Capacitación', 'Cursos y talleres', 'activo'),
(9, 'Recolección', 'Recolección de residuos', 'activo'),
(10, 'Inspección', 'Inspección técnica', 'activo');

-- Departamentos (10)
INSERT INTO departamento (id_departamento, nombre) VALUES
(1, 'Operaciones'),
(2, 'Logística'),
(3, 'Atención al cliente'),
(4, 'TI'),
(5, 'Administración'),
(6, 'Mantenimiento'),
(7, 'Comercial'),
(8, 'Recursos Humanos'),
(9, 'Formación'),
(10, 'Calidad');

-- Usuarios (30: clientes 1-10, empleados 11-20, proveedores 21-30)
INSERT INTO usuario (id_usuario, nombre, apellido, ciudad_id, fecha_registro) VALUES
(1, 'Ana', 'Gómez', 1, CURRENT_TIMESTAMP),
(2, 'Luis', 'Martínez', 2, CURRENT_TIMESTAMP),
(3, 'Carla', 'Pérez', 3, CURRENT_TIMESTAMP),
(4, 'Jorge', 'Rodríguez', 4, CURRENT_TIMESTAMP),
(5, 'María', 'López', 5, CURRENT_TIMESTAMP),
(6, 'Laura', 'Ramírez', 6, CURRENT_TIMESTAMP),
(7, 'Diego', 'Navarro', 7, CURRENT_TIMESTAMP),
(8, 'Valentina', 'Silva', 8, CURRENT_TIMESTAMP),
(9, 'Fernando', 'Díaz', 9, CURRENT_TIMESTAMP),
(10, 'Isabella', 'Vega', 10, CURRENT_TIMESTAMP),
(11, 'Pedro', 'Sánchez', 1, CURRENT_TIMESTAMP),
(12, 'Lucía', 'Fernández', 2, CURRENT_TIMESTAMP),
(13, 'Andrés', 'Vega', 3, CURRENT_TIMESTAMP),
(14, 'Sofía', 'Rivas', 4, CURRENT_TIMESTAMP),
(15, 'Miguel', 'Torres', 5, CURRENT_TIMESTAMP),
(16, 'Raúl', 'Mendez', 6, CURRENT_TIMESTAMP),
(17, 'Natalia', 'Ortiz', 7, CURRENT_TIMESTAMP),
(18, 'Héctor', 'Cruz', 8, CURRENT_TIMESTAMP),
(19, 'Camila', 'Ramos', 9, CURRENT_TIMESTAMP),
(20, 'Sergio', 'Castro', 10, CURRENT_TIMESTAMP),
(21, 'Distribuciones', 'SA', 1, CURRENT_TIMESTAMP),
(22, 'Logística', 'XYZ', 2, CURRENT_TIMESTAMP),
(23, 'Servicios', 'ABC', 3, CURRENT_TIMESTAMP),
(24, 'Proveedora', '123', 4, CURRENT_TIMESTAMP),
(25, 'Entrega', 'Rápida', 5, CURRENT_TIMESTAMP),
(26, 'Logistica', 'Global', 6, CURRENT_TIMESTAMP),
(27, 'Transporte', 'Plus', 7, CURRENT_TIMESTAMP),
(28, 'Suministros', 'Latam', 8, CURRENT_TIMESTAMP),
(29, 'Paqueteria', 'Express', 9, CURRENT_TIMESTAMP),
(30, 'Envios', 'YA', 10, CURRENT_TIMESTAMP);

-- CondicionesEspecial (cada condición vinculada a un usuario)
INSERT INTO condicionEspecial (id_condicion, id_usuario, descripcion) VALUES
(1, 1, 'Embarazo'),
(2, 2, 'Requiere silla de ruedas'),
(3, 3, 'Adulto mayor'),
(4, 4, 'Alergia a medicamentos'),
(5, 5, 'Discapacidad auditiva'),
(6, 6, 'Discapacidad visual'),
(7, 7, 'Condición crónica'),
(8, 8, 'Necesita acompañante'),
(9, 9, 'Restricción alimentaria'),
(10, 10, 'Otro');

-- Empleado (10) -> id_usuario y id_empleado
INSERT INTO empleado (id_usuario, id_empleado, id_departamento, fecha_contratacion) VALUES
(11, 11, 1, '2020-01-15'),
(12, 12, 2, '2019-06-10'),
(13, 13, 3, '2021-03-22'),
(14, 14, 4, '2018-11-05'),
(15, 15, 5, '2017-08-30'),
(16, 16, 6, '2020-05-01'),
(17, 17, 7, '2018-09-15'),
(18, 18, 8, '2022-02-10'),
(19, 19, 9, '2016-12-20'),
(20, 20, 10, '2015-07-07');

-- Proveedores (10) -> id_usuario y id_proveedor
INSERT INTO proveedor (id_usuario, id_proveedor, contacto, telefono) VALUES
(21, 21, 'Carlos Ruiz', '3101234567'),
(22, 22, 'Mariana Díaz', '3119876543'),
(23, 23, 'Luis Peña', '3125556677'),
(24, 24, 'Rosa Blanco', '3134443322'),
(25, 25, 'Andrés Molina', '3142221100'),
(26, 26, 'Javier Soto', '3151112233'),
(27, 27, 'Marcos León', '3162223344'),
(28, 28, 'Patricia Gómez', '3173334455'),
(29, 29, 'Norma Ruiz', '3184445566'),
(30, 30, 'Eduardo Ruiz', '3195556677');

-- Cargo (10) vinculando a empleados por id_empleado (según DDL referencia a empleado.id_usuario)
INSERT INTO cargo (id_cargo, id_empleado, descripcion) VALUES
(1, 11, 'Recepción'),
(2, 12, 'Despacho'),
(3, 13, 'Atención al cliente'),
(4, 14, 'Mensajería'),
(5, 15, 'Administración'),
(6, 16, 'Soporte técnico'),
(7, 17, 'Logística'),
(8, 18, 'Consultoría'),
(9, 19, 'Ventas'),
(10, 20, 'Marketing');

-- Turnos (20)
INSERT INTO turno (usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin) VALUES
(1, 1, 11, '2025-10-20', '09:00', '09:30'),
(2, 2, 12, '2025-10-21', '10:00', '10:30'),
(3, 3, 13, '2025-10-22', '11:00', '11:30'),
(4, 4, 14, '2025-10-23', '14:00', '14:30'),
(5, 5, 15, '2025-10-24', '15:00', '15:30'),
(6, 6, 16, '2025-10-25', '09:30', '10:00'),
(7, 7, 17, '2025-10-26', '10:30', '11:00'),
(8, 8, 18, '2025-10-27', '11:30', '12:00'),
(9, 9, 19, '2025-10-28', '13:00', '13:30'),
(10, 10, 20, '2025-10-29', '14:30', '15:00'),
(11, 1, 11, '2025-11-01', '09:00', '09:30'),
(12, 2, 12, '2025-11-02', '10:00', '10:30'),
(13, 3, 13, '2025-11-03', '11:00', '11:30'),
(14, 4, 14, '2025-11-04', '14:00', '14:30'),
(15, 5, 15, '2025-11-05', '15:00', '15:30'),
(16, 6, 16, '2025-11-06', '09:30', '10:00'),
(17, 7, 17, '2025-11-07', '10:30', '11:00'),
(18, 8, 18, '2025-11-08', '11:30', '12:00'),
(19, 9, 19, '2025-11-09', '13:00', '13:30'),
(20, 10, 20, '2025-11-10', '14:30', '15:00');

-- Notificaciones (10)
INSERT INTO notificacion (id_notificacion, usuario_id, medio_id, mensaje, fecha_envio, estado) VALUES
(1, 1, 3, 'Su turno ha sido asignado', CURRENT_TIMESTAMP, 'enviado'),
(2, 2, 1, 'Recordatorio de turno', CURRENT_TIMESTAMP, 'enviado'),
(3, 3, 4, 'Cancelación de turno', CURRENT_TIMESTAMP, 'enviado'),
(4, 4, 2, 'Confirmación de reserva', CURRENT_TIMESTAMP, 'enviado'),
(5, 5, 5, 'Detalles de su turno', CURRENT_TIMESTAMP, 'enviado'),
(6, 6, 2, 'Aviso interno', CURRENT_TIMESTAMP, 'enviado'),
(7, 7, 7, 'Mensaje operativo', CURRENT_TIMESTAMP, 'enviado'),
(8, 8, 8, 'Notificación de servicio', CURRENT_TIMESTAMP, 'enviado'),
(9, 9, 9, 'Alerta importante', CURRENT_TIMESTAMP, 'enviado'),
(10, 10, 10, 'Recordatorio final', CURRENT_TIMESTAMP, 'enviado');

-- Clientes (10) -> usando id_usuario (1..10) y id_cliente (1..10)
INSERT INTO cliente (id_usuario, id_cliente, direccion) VALUES
 (1, 1, 'Calle 1 #10-20'),
 (2, 2, 'Carrera 5 #30-40'),
 (3, 3, 'Avenida 7 #50-60'),
 (4, 4, 'Calle 12 #80-90'),
 (5, 5, 'Carrera 20 #10-110'),
 (6, 6, 'Calle 100 #10-10'),
 (7, 7, 'Carrera 200 #20-20'),
 (8, 8, 'Avenida 300 #30-30'),
 (9, 9, 'Calle 400 #40-40'),
 (10, 10, 'Carrera 500 #50-50');

-- Fin del archivo DML de prueba