SELECT p.*
FROM
    Persona as suj JOIN Progenitor as padres
ON suj.dni = padres.dni_hijo
JOIN Persona as p
ON padres.dni = p.dni
WHERE p.sexo = 'F' AND  suj.nombre = 'Carlos Gil'