select
       H.nombre as nombre_hijo,
       H.dni as dni_hijo,
       H.direccion as direccion_hijo,
       H.fecha_nac as nac_hijo,
       H.sexo as sexo_hijo

from
    Persona as P join Progenitor as PR on P.dni = PR.dni
    join Persona as H on H.dni = PR.dni_hijo
where P.nombre = 'Juan Gil'
