SELECT DISTINCT alm.nro,alm.nombre
FROM Almacen alm
WHERE NOT EXISTS(
    SELECT art123.codart
    FROM Material as mat123 JOIN Compuesto_por as rel
    ON mat123.codmat = rel.codmat
    JOIN Articulo as art123
    ON rel.codart = art123.codart
    where mat123.codmat = 123
    EXCEPT
    SELECT alm123.codart
    FROM Tiene alm123
    WHERE alm123.nro = alm.nro)