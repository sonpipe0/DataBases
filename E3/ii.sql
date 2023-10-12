
Select mat.codmat,
       mat.descr
FROM ((Material AS mat JOIN Provisto_por as rel on mat.codmat = rel.codmat)
        JOIN Proveedor as prov ON rel.codprov = prov.codprov )
WHERE prov.ciudad = 'La Plata'