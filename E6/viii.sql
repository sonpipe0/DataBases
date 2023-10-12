SELECT pr.nom_p
FROM
Proveedor AS pr JOIN
(SELECT max(categoria) AS maxprov FROM (
SELECT prov.*
 FROM
     Articulo as cuaderno JOIN Pedido as ped
 ON cuaderno.descrip_art='cuaderno' AND ped.nro_art=cuaderno.nro_art
     JOIN Proveedor as prov
     ON ped.nro_p = prov.nro_p))AS prov
ON pr.categoria>prov.maxprov
