-- Crear la tabla Vuelo
CREATE TABLE Vuelo (
                       nro_vuelo INT,
                       desde VARCHAR(1),
                       hasta VARCHAR(1)
);
-- Crear la tabla Avion_utilizado
CREATE TABLE Avion_utilizado (
                                 nro_vuelo INT,
                                 tipo_avion VARCHAR(10),
                                 nro_avion INT
);
-- Crear la tabla Info_pasajeros
CREATE TABLE Info_pasajeros (
                                nro_vuelo INT,
                                dni VARCHAR(10),
                                nombre VARCHAR(50),
                                origen VARCHAR(1),
                                destino VARCHAR(1)
);
-- Insertar datos ficticios en la tabla Vuelo
INSERT INTO Vuelo (nro_vuelo, desde, hasta) VALUES
                                                (1, 'A', 'B'),
                                                (1, 'B', 'C'),
                                                (1, 'C', 'D'),
                                                (1, 'D', 'F'),
                                                (2, 'D', 'E'),
                                                (2, 'E', 'F'),
                                                (2, 'F', 'G'),
                                                (3, 'E', 'F'),
                                                (4, 'C', 'D'),
                                                (4, 'D', 'G'),
                                                (5, 'B', 'E'),
                                                (5, 'E', 'F'),
                                                (6, 'A', 'B'),
                                                (6, 'B', 'D');
-- Insertar datos ficticios en la tabla Avion_utilizado
INSERT INTO Avion_utilizado (nro_vuelo, tipo_avion, nro_avion) VALUES
                                                                   (1, 'Boeing 737', 101),
                                                                   (2, 'Airbus A320', 202),
                                                                   (3, 'Boeing 747', 303),
                                                                   (4, 'Airbus A330', 404),
                                                                   (5, 'Embraer E190', 505),
                                                                   (6, 'Boeing 787', 900);
-- Insertar datos ficticios en la tabla Info_pasajeros
INSERT INTO Info_pasajeros (nro_vuelo, dni, nombre, origen, destino) VALUES
                                                                         (1, '12345678', 'Juan Perez', 'A', 'B'),
                                                                         (1, '22485614', 'Lucila Perez', 'A', 'B'),
                                                                         (1, '29857613', 'Juana Lopez', 'C', 'E'),
                                                                         (2, '23456789', 'Maria Martinez', 'D', 'F'),
                                                                         (2, '41377895', 'Lucas Lupito', 'F', 'G'),
                                                                         (3, '34567890', 'Carlos Rodriguez', 'E', 'F'),
                                                                         (4, '45678901', 'Ana Gonzalez', 'C', 'D'),
                                                                         (5, '56789012', 'Pedro Lopez', 'B', 'E'),
                                                                         (5, '25789777', 'Julian Cardozo', 'B', 'F'),
                                                                         (6, '27777888', 'Luis Fonzi', 'A', 'D'),
                                                                         (6, '35787741', 'Nicki Nicole', 'A', 'D'),
                                                                         (6, '44789455', 'Gerardo Fantino', 'A', 'B');