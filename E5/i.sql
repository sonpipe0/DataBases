SELECT
    hij.dni,hij.nombre,hij.direccion,hij.fecha_nac,hij.sexo
FROM
    Persona as a JOIN Progenitor as rel
ON a.dni = rel.dni
JOIN Persona as hij
ON rel.dni_hijo = hij.dni
WHERE a.nombre = 'Juan Gil'