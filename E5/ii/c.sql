SELECT abuelo.*
FROM
Persona as suj JOIN Progenitor as padres
ON suj.dni  = padres.dni_hijo
JOIN Persona as madre
ON padres.dni = madre.dni AND
   madre.sexo = 'F'
JOIN Progenitor AS abuelos
ON madre.dni = abuelos.dni_hijo
JOIN Persona as abuelo
ON abuelos.dni = abuelo.dni
AND abuelo.sexo = 'M'
WHERE suj.nombre = 'Juan Lobo'