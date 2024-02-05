CREATE TABLE medicamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    cantidad INT NOT NULL
);

CREATE TABLE sucursales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE inventario_sucursales (
    id_medicamento INT,
    id_sucursal INT,
    cantidad INT NOT NULL,
    FOREIGN KEY (id_medicamento) REFERENCES medicamentos(id),
    FOREIGN KEY (id_sucursal) REFERENCES sucursales(id)
);