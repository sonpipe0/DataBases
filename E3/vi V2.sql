select *
from Almacen AS  alm
WHERE NOT EXISTS(
    SELECT 1
    FROM (SELECT art123.codart
        FROM Material AS mat123 JOIN Compuesto_por AS rel
        ON mat123.codmat = rel.codmat JOIN
        Articulo AS art123
        ON rel.codart = art123.codart
        WHERE mat123.codmat = 123
        )AS articles_with_material_123
    WHERE NOT EXISTS(
        SELECT 1
        FROM Tiene as ten
        WHERE ten.nro = alm.nro
        AND ten.codart = articles_with_material_123.codart

    )
)