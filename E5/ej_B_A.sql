SELECT DISTINCT H.dni, H.nombre,H.direccion,H.fecha_nac,H.sexo
FROM Persona AS P JOIN Progenitor AS Pad ON P.dni = Pad.dni_hijo
JOIN Progenitor AS Pad2 ON Pad.dni = Pad2.dni
JOIN Persona as H ON H.dni = pad2.dni_hijo
WHERE P.nombre = 'Carlos Gil' AND H.nombre != 'Carlos Gil'