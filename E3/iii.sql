Select art.codart,
       art.descr
FROM Compuesto_por AS comp JOIN Provisto_por AS prov ON comp.codmat = prov.codmat
JOIN  Proveedor as lop ON prov.codprov = lop.codprov
JOIN Articulo as art ON art.codart = comp.codart
WHERE lop.nombre = 'López'