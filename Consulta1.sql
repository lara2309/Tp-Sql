SELECT us.nombre,us.apellido,us.dni,us.fNacimiento,us.direccion,eq.nombre
FROM usuarios us
JOIN socios so ON us.id=so.uid
JOIN jugadores ju ON so.sid = ju.sid
JOIN equipos eq ON ju.eid= eq.eid
WHERE so.activo= '1' AND eq.eid IS NULL;