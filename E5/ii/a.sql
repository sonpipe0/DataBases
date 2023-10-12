SELECT DISTINCT hijo.dni,
       hijo.nombre,
       hijo.direccion,
       hijo.fecha_nac,
       hijo.sexo
FROM
    Persona as suj JOIN Progenitor as padres
ON suj.dni = padres.dni_hijo
JOIN Progenitor as hijdni
ON padres.dni=hijdni.dni
JOIN Persona as hijo
ON hijdni.dni_hijo=hijo.dni
WHERE suj.nombre = 'Ana Gil'