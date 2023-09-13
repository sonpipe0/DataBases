CREATE TABLE Persona (     dni INT,     nombre VARCHAR(50),     direccion VARCHAR(100),     fecha_nac DATE,     sexo CHAR(1));
CREATE TABLE Progenitor (     dni INT,     dni_hijo INT );
INSERT INTO Persona (dni, nombre, direccion, fecha_nac, sexo) VALUES     (12345678, 'Juan Gil', 'Calle 123', '1970-01-15', 'M'),     (23456789, 'María Soler', 'Calle 123', '1972-03-20', 'F'),     (34567890, 'Carlos Gil', 'Calle 123', '1995-07-10', 'M'),     (45678901, 'Laura Gil', 'Calle 123', '1997-09-25', 'F'),     (56789012, 'Ana Gil', 'Libertador 456', '2000-11-30', 'F'),     (67890123, 'Pedro Lobo', 'Libertador 456', '1998-05-05', 'M'),     (78901234, 'Juan Lobo', 'Magnolias 51', '2020-02-10', 'M'),     (89012345, 'Sonia Lobo', 'Pichincha 22', '2022-04-18', 'F'),     (90123456, 'Tere Lobo', 'Magnolias 51', '2020-12-01', 'F'),     (11223344, 'Pepa Toranzo', 'Magnolias 51', '1999-09-15', 'F'),     (22334455, 'Pedro Goyena', 'Pichincha 22', '2001-11-20', 'M'),     (33445566, 'Benja Goyena', 'Pichincha 22', '2020-08-08', 'M');
INSERT INTO Progenitor (dni, dni_hijo) VALUES  (12345678, 34567890),     (23456789, 34567890),     (12345678, 45678901),     (23456789, 45678901),     (12345678, 56789012),     (23456789, 56789012),  (56789012, 78901234),     (56789012, 89012345),     (67890123, 78901234),     (67890123, 89012345), (78901234, 90123456),     (11223344, 90123456),  (89012345, 22334455),     (22334455, 22334455);