CREATE INDEX land_use_geom_idx
ON land_use
USING GIST (geom);
