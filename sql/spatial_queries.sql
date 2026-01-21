SELECT
    class,
    SUM(ST_Area(geom::geography)) / 10000 AS area_ha
FROM land_use
GROUP BY class;

SELECT
    id,
    ST_Buffer(geom, 100) AS buffer_geom
FROM land_use;

SELECT
    a.id,
    b.id
FROM land_use a
JOIN protected_areas b
ON ST_Intersects(a.geom, b.geom);
