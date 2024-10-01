SELECT e.nombre_pais, SUM(tot.goles) AS goltot
FROM (
    SELECT cod_local AS codigo_pais, gol_local AS goles
    FROM Partido
    UNION ALL
    SELECT cod_visitante AS codigo_pais, gol_visitante AS goles
    FROM Partido
) AS tot
JOIN Equipo e ON tot.codigo_pais = e.codigo
GROUP BY e.nombre_pais
ORDER BY goltot DESC
LIMIT 3;
