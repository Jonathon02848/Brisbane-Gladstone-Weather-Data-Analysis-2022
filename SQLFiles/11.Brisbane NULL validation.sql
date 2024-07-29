-- ######################################################
-- Checks filled Brisbane dataset for NULLs:
-- ######################################################
SELECT *
FROM public.brisbane_composite_air_quality_raw_filled
WHERE "wind_direction_(degN)" IS NULL
OR "wind_speed_(m/s)" IS NULL
OR "wind_deviation_(deg)" IS NULL
OR "wind_speed_deviation_(m/s)" IS NULL
OR "wind_temperature_(degC)" IS NULL
OR "humidity_(%)" IS NULL
OR "rainfall_(mm)" IS NULL
OR "barometric_pressure_(hPa)" IS NULL
OR "PM10_(ug/m3)" IS NULL
OR "PM2.5_(ug/m3)" IS NULL
OR "nitrogen_oxide_(ppm)" IS NULL
OR "nitrogen_dioxide_(ppm)" IS NULL
OR "nitrogen_oxides_(ppm)" IS NULL
OR "carbon_monoxide_(ppm)" IS NULL
OR "visibility_reducing_particles_(Mm-1)" IS NULL
ORDER BY datetime_id ASC;
