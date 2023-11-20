CREATE DATABASE db_restaurante;
USE db_restaurante; 


CREATE TABLE tbl_camareros (
    id_usuario INT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL,
    contrasena VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_salas (
    id_sala INT PRIMARY KEY,
    ubicacion_sala VARCHAR(50) NOT NULL,
    capacidad INT NOT NULL
);

CREATE TABLE tbl_mesas (
    id_mesa INT PRIMARY KEY,
    id_sala INT,
    mesa_ocupada BOOLEAN DEFAULT FALSE,
    numero_mesa INT,
    FOREIGN KEY (id_sala) REFERENCES tbl_salas(id_sala)
);

CREATE TABLE tbl_sillas (
    id_silla INT PRIMARY KEY,
    silla_ocupada BOOLEAN DEFAULT FALSE,
    id_mesa INT,
    fecha_hora_entrada TIMESTAMP,
    fecha_hora_salida TIMESTAMP,
    FOREIGN KEY (id_mesa) REFERENCES tbl_mesa(id_mesa)
);