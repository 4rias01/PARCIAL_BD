-- 1) Listar todos los usuarios
SELECT id_usuario, nombre, apellido, ciudad_id, fecha_registro FROM usuario;

-- 2) Empleados con su departamento y fecha de contratación
SELECT e.id_usuario AS usuario_id, u.nombre, u.apellido, d.nombre AS departamento, e.fecha_contratacion
FROM empleado e
JOIN usuario u ON e.id_usuario = u.id_usuario
JOIN departamento d ON e.id_departamento = d.id_departamento;

-- 3) Turnos de un usuario (ejemplo id_usuario = 1)
SELECT t.usuario_id, t.servicio_id, t.empleado_id, t.fecha, t.hora_inicio, t.hora_fin, s.nombre AS servicio
FROM turno t
JOIN servicio s ON t.servicio_id = s.id_servicio
WHERE t.usuario_id = 1;

-- 4) Conteo de turnos por servicio
SELECT s.id_servicio, s.nombre, COUNT(*) AS total_turnos
FROM turno t
JOIN servicio s ON t.servicio_id = s.id_servicio
GROUP BY s.id_servicio, s.nombre;

-- 5) Notificaciones recientes (últimos 7 días) — adaptado a SQL estándar: fecha >= current_date - 7
SELECT n.id_notificacion, n.usuario_id, n.medio_id, n.mensaje, n.fecha_envio
FROM notificacion n
WHERE n.fecha_envio >= CURRENT_TIMESTAMP - INTERVAL '7 days';

-- 6) Clientes y su dirección (todos los clientes)
SELECT cl.id_usuario, u.nombre, u.apellido, cl.direccion
FROM cliente cl
JOIN usuario u ON cl.id_usuario = u.id_usuario;

-- 7) Empleados que no tienen turnos asignados
SELECT e.id_usuario, u.nombre, u.apellido
FROM empleado e
JOIN usuario u ON e.id_usuario = u.id_usuario
LEFT JOIN turno t ON e.id_usuario = t.empleado_id
WHERE t.usuario_id IS NULL;

-- 8) Últimos 10 turnos por fecha
SELECT t.usuario_id, t.servicio_id, t.empleado_id, t.fecha, t.hora_inicio, t.hora_fin
FROM turno t
ORDER BY t.fecha DESC, t.hora_inicio DESC
LIMIT 10;

-- 9) Proveedores con contacto y teléfono
SELECT p.id_usuario, u.nombre, u.apellido, p.contacto, p.telefono
FROM proveedor p
JOIN usuario u ON p.id_usuario = u.id_usuario;

-- 10) Número de usuarios por ciudad
SELECT ci.id_ciudad, ci.nombre AS ciudad, COUNT(u.id_usuario) AS total_usuarios
FROM ciudad ci
LEFT JOIN usuario u ON u.ciudad_id = ci.id_ciudad
GROUP BY ci.id_ciudad, ci.nombre;

