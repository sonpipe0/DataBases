-- Crear la tabla "Almacen"
CREATE TABLE Almacen (
                         nro INT,
                         nombre VARCHAR(255)
);
-- Crear la tabla "Articulo"
CREATE TABLE Articulo (
                          codart INT,
                          descr VARCHAR(255),
                          precio DECIMAL(10, 2)
);
-- Crear la tabla "Material"
CREATE TABLE Material (
                          codmat INT,
                          descr VARCHAR(255)
);
-- Crear la tabla "Proveedor"
CREATE TABLE Proveedor (
                           codprov INT,
                           nombre VARCHAR(255),
                           domicilio VARCHAR(255),
                           ciudad VARCHAR(255)
);
-- Crear la tabla "Tiene"
CREATE TABLE Tiene (
                       nro INT,
                       codart INT
);
-- Crear la tabla "Compuesto_por"
CREATE TABLE Compuesto_por (
                               codart INT,
                               codmat INT
);
-- Crear la tabla "Provisto_por"
CREATE TABLE Provisto_por (
                              codmat INT,
                              codprov INT
);
-- Poblar la tabla "Proveedor" con datos de ejemplo
INSERT INTO Proveedor (codprov, nombre, domicilio, ciudad)
VALUES
    (1, 'Proveedor1', 'Calle 123', 'La Plata'),
    (2, 'Proveedor2', 'Avenida 456', 'Rosario'),
    (3, 'López', 'Calle Principal', 'Buenos Aires');
-- Poblar la tabla "Material" con datos de ejemplo
INSERT INTO Material (codmat, descr)
VALUES
    (123, 'Material123'),
    (456, 'Material456'),
    (789, 'Material789'),
    (1000, 'Material1000');
-- Poblar la tabla "Almacen" con datos de ejemplo
INSERT INTO Almacen (nro, nombre)
VALUES
    (1, 'Almacen1'),
    (2, 'Almacen2'),
    (3, 'Almacen3');
-- Poblar la tabla "Articulo" con datos de ejemplo
INSERT INTO Articulo (codart, descr, precio)
VALUES
    (101, 'Articulo1', 50.00),
    (102, 'Articulo2', 75.50),
    (103, 'Articulo3', 120.25);
-- Poblar la tabla "Tiene" con datos de ejemplo
INSERT INTO Tiene (nro, codart)
VALUES
    (1, 101),
    (1, 102),
    (1, 103),
    (2, 103),
    (3, 101),
    (3, 103);
-- Poblar la tabla "Compuesto_por" con datos de ejemplo
INSERT INTO Compuesto_por (codart, codmat)
VALUES
    (101, 123),
    (101, 1000),
    (102, 456),
    (103, 789),
    (103, 123);
-- Poblar la tabla "Provisto_por" con datos de ejemplo
INSERT INTO Provisto_por (codmat, codprov)
VALUES
    (123, 1),
    (456, 2),
    (789, 3);