CREATE TABLE land_use (
    id SERIAL PRIMARY KEY,
    class VARCHAR(50),
    area_ha NUMERIC,
    geom GEOMETRY(POLYGON, 4674)
);
