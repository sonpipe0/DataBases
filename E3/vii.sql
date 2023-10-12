


SELECT art.codart,art.descr
FROM(
(SELECT *
FROM Compuesto_por AS nocomp
EXCEPT
SELECT comp.codart,comp.codmat
FROM (Compuesto_por AS comp
JOIN Provisto_por as prov
ON comp.codmat = prov.codmat))AS nocomp JOIN Articulo
    AS art
    ON art.codart = nocomp.codart
    )
