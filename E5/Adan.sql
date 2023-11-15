WITH RECURSIVE Descendientes AS(
    SELECT Persona.dni, nombre,PRO.dni_hijo
    FROM Persona
    JOIN Progenitor AS PRO
    ON Persona.dni = PRO.dni
    WHERE Persona.dni = 12345678
    UNION
    SELECT P.dni, P.nombre , Pro.dni_hijo
    FROM Descendientes JOIN Persona AS P
    JOIN Progenitor as Pro
    ON P.dni = Pro.dni
    WHERE Descendientes.dni_hijo = P.dni
)
SELECT * FROM Descendientes