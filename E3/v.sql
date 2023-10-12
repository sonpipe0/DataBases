SELECT art.codart
FROM Articulo as art
WHERE art.precio = (SELECT max(precio) FROM Articulo)
