-- Query to check number of nulls per category for Gladstone
SELECT
  SUM(CASE WHEN "wind_direction_(degN)" IS NULL THEN 1 ELSE 0 END) AS "wind_direction_nulls",
  SUM(CASE WHEN "wind_speed_(m/s)" IS NULL THEN 1 ELSE 0 END) AS "wind_speed_nulls",
  SUM(CASE WHEN "wind_deviation_(deg)" IS NULL THEN 1 ELSE 0 END) AS "wind_deviation_nulls",
  SUM(CASE WHEN "wind_speed_deviation_(m/s)" IS NULL THEN 1 ELSE 0 END) AS "wind_speed_deviation_nulls",
  SUM(CASE WHEN "wind_temperature_(degC)" IS NULL THEN 1 ELSE 0 END) AS "wind_temperature_nulls",
  SUM(CASE WHEN "humidity_(%)" IS NULL THEN 1 ELSE 0 END) AS "humidity_nulls",
  SUM(CASE WHEN "rainfall_(mm)" IS NULL THEN 1 ELSE 0 END) AS "rainfall_nulls",
  SUM(CASE WHEN "barometric_pressure_(hPa)" IS NULL THEN 1 ELSE 0 END) AS "bp_nulls",
  SUM(CASE WHEN "PM10_(ug/m3)" IS NULL THEN 1 ELSE 0 END) AS "PM10_nulls",
  SUM(CASE WHEN "ozone_(ppm)" IS NULL THEN 1 ELSE 0 END) AS "ozone_nulls",
  SUM(CASE WHEN "nitrogen_dioxide_(ppm)" IS NULL THEN 1 ELSE 0 END) AS "nitrogen_dioxide_nulls",
  SUM(CASE WHEN "sulfur_dioxide_(ppm)" IS NULL THEN 1 ELSE 0 END) AS "sulfur_dioxide_nulls",
  SUM(CASE WHEN "benzene_(ppb)" IS NULL THEN 1 ELSE 0 END) AS "benzene_nulls",
  SUM(CASE WHEN "toulene_(ppb)" IS NULL THEN 1 ELSE 0 END) AS "toulene_nulls",
  SUM(CASE WHEN "xylenes_(ppb)" IS NULL THEN 1 ELSE 0 END) AS "xylenes_nulls",
  SUM(CASE WHEN "formaldehyde_(ppb)" IS NULL THEN 1 ELSE 0 END) AS "formaldehyde_nulls",
  SUM(CASE WHEN "nitrogen_oxide_(ppm)" IS NULL THEN 1 ELSE 0 END) AS "nitrogen_oxide_nulls",
  SUM(CASE WHEN "nitrogen_oxides_(ppm)" IS NULL THEN 1 ELSE 0 END) AS "nitrogen_oxides_nulls",
  SUM(CASE WHEN "PM2.5_(ug/m3)" IS NULL THEN 1 ELSE 0 END) AS "PM2.5_nulls",
  SUM(CASE WHEN "visibility-reducing_particles_(Mm-1)" IS NULL THEN 1 ELSE 0 END) AS "vrp_nulls"
FROM public.gladstone_composite_air_quality_raw_filled;
-- -- TLDR "PM10_(ug/m3)", "ozone_(ppm)", "sulfur_dioxide_(ppm)", "xylenes_(ppb)", "nitrogen_oxide_(ppm)",
-- -- "nitrogen_oxides_(ppm)","visibility-reducing_particles_(Mm-1)" are under 5%,
-- -- the rest are not. Focus on completing these!
-- -- Others over 5%: "benzene_(ppb)","PM2.5_(ug/m3)","formaldehyde_(ppb)","toulene_(ppb)"
-- -- Largest: formaldehyde w/ 16.639% missing values
