-- Creación de la tabla Proveedor
CREATE TABLE Proveedor (
                           nro_p CHAR(5),
                           nom_p VARCHAR(50),
                           categoria INT,
                           ciudad_prov VARCHAR(50)
);
-- Creación de la tabla Articulo
CREATE TABLE Articulo (
                          nro_art CHAR(5),
                          descrip_art VARCHAR(100),
                          ciudad_art VARCHAR(50),
                          precio DECIMAL(10, 2)
);
-- Creación de la tabla Cliente
CREATE TABLE Cliente (
                         nro_cli CHAR(4),
                         nom_cli VARCHAR(50),
                         ciudad_cli VARCHAR(50)
);
-- Creación de la tabla Pedido
CREATE TABLE Pedido (
                        nro_p CHAR(5),
                        nro_art CHAR(5),
                        nro_cli CHAR(4),
                        cantidad INT,
                        precio_total DECIMAL(10, 2)
);
-- Proveedor
INSERT INTO Proveedor VALUES ('p015', 'Proveedor015', 5, 'CABA');
INSERT INTO Proveedor VALUES ('p016', 'Proveedor016', 6, 'CABA');
INSERT INTO Proveedor VALUES ('p017', 'Proveedor017', 7, 'Pergamino');
INSERT INTO Proveedor VALUES ('p018', 'Proveedor018', 3, 'Viedma');
INSERT INTO Proveedor VALUES ('p019', 'Proveedor019', 8, 'Mendoza');
-- Articulo
INSERT INTO Articulo VALUES ('A146', 'adhesivo', 'Mendoza', 15.00);
INSERT INTO Articulo VALUES ('A147', 'lapiz', 'Santa Fe', 10.00);
INSERT INTO Articulo VALUES ('A148', 'cuaderno', 'CABA', 20.00);
INSERT INTO Articulo VALUES ('A149', 'tijeras', 'CABA', 35.00);
INSERT INTO Articulo VALUES ('A150', 'boligoma', 'AMBA', 8.00);
INSERT INTO Articulo VALUES ('A151', 'papel', 'AMBA', 25.00);
INSERT INTO Articulo VALUES ('A152', 'marcador', 'AMBA', 20.00);
-- Cliente
INSERT INTO Cliente VALUES ('c20', 'Cliente20', 'Corrientes');
INSERT INTO Cliente VALUES ('c23', 'Cliente23', 'Rosario');
INSERT INTO Cliente VALUES ('c30', 'Cliente30', 'Salta');
INSERT INTO Cliente VALUES ('c40', 'Cliente40', 'Rosario');
INSERT INTO Cliente VALUES ('c50', 'Cliente50', 'Misiones');
INSERT INTO Cliente VALUES ('c60', 'Cliente60', 'Jujuy');
INSERT INTO Cliente VALUES ('c70', 'Cliente70', 'Catamarca');
-- Pedido
INSERT INTO Pedido VALUES ('p015', 'A146', 'c23', 2, 30.00);
INSERT INTO Pedido VALUES ('p016', 'A147', 'c30', 3, 30.00);
INSERT INTO Pedido VALUES ('p017', 'A148', 'c23', 1, 20.00);
INSERT INTO Pedido VALUES ('p018', 'A148', 'c40', 2, 40.00);
INSERT INTO Pedido VALUES ('p019', 'A147', 'c50', 3, 30.00);
INSERT INTO Pedido VALUES ('p020', 'A150', 'c40', 3, 24.00);
INSERT INTO Pedido VALUES ('p021', 'A151', 'c30', 10, 250.00);
INSERT INTO Pedido VALUES ('p022', 'A152', 'c60', 5, 100.00);
INSERT INTO Pedido VALUES ('p023', 'A146', 'c70', 2, 30.00);
INSERT INTO Pedido VALUES ('p024', 'A147', 'c60', 20, 200.00);