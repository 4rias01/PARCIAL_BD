CREATE TABLE ciudad (
    id_ciudad INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    codigo_postal VARCHAR(20)
);

CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY,
    ciudad_id INT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ciudad_id) REFERENCES ciudad(id_ciudad)
);

CREATE TABLE condicionEspecial (
    id_condicion INT PRIMARY KEY,
    id_usuario INT,
    descripcion VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE medio (
    id_medio INT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE notificacion (
    id_notificacion INT PRIMARY KEY,
    usuario_id INT NOT NULL,
    medio_id INT NOT NULL,
    mensaje VARCHAR(255),
    fecha_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(20) DEFAULT 'enviado',
    FOREIGN KEY (usuario_id) REFERENCES usuario(id_usuario),
    FOREIGN KEY (medio_id) REFERENCES medio(id_medio)
);

CREATE TABLE departamento (
    id_departamento INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE empleado (
    id_usuario INT,
    id_empleado INT,
    id_departamento INT NOT NULL,
    fecha_contratacion DATE NOT NULL,
    PRIMARY KEY (id_empleado),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
);

CREATE TABLE cliente (
    id_usuario INT,
    id_cliente INT,
    direccion VARCHAR(100),
    PRIMARY KEY (id_cliente, id_usuario),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE proveedor (
    id_usuario INT,
    id_proveedor INT,
    contacto VARCHAR(50),
    telefono VARCHAR(15),
    PRIMARY KEY (id_proveedor, id_usuario),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE cargo (
    id_cargo INT PRIMARY KEY,
    id_empleado INT,
    descripcion VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);

CREATE TABLE servicio (
    id_servicio INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200),
    estado VARCHAR(20) DEFAULT 'activo'
);

CREATE TABLE turno (
    usuario_id INT NOT NULL,
    servicio_id INT NOT NULL,
    empleado_id INT NOT NULL,
    fecha DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    PRIMARY KEY (usuario_id, servicio_id, empleado_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(id_usuario),
    FOREIGN KEY (servicio_id) REFERENCES servicio(id_servicio),
    FOREIGN KEY (empleado_id) REFERENCES empleado(id_empleado)
);