SELECT prov.nombre,
       prov.codprov
FROM Articulo AS art100 JOIN Compuesto_por AS rel
ON art100.codart = rel.codart
JOIN Provisto_por AS rel2
ON rel.codmat = rel2.codmat
JOIN Proveedor AS prov
ON rel2.codprov = prov.codprov
WHERE art100.precio > 100