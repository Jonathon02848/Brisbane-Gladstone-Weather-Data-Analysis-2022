-- Gladstone version:
SELECT *
FROM public.gladstone_composite_air_quality_raw_filled
WHERE "wind_direction_(degN)" IS NULL
OR "wind_speed_(m/s)" IS NULL
OR "wind_deviation_(deg)" IS NULL
OR "wind_speed_deviation_(m/s)" IS NULL
OR "wind_temperature_(degC)" IS NULL
OR "humidity_(%)" IS NULL
OR "rainfall_(mm)" IS NULL
OR "barometric_pressure_(hPa)" IS NULL
OR "PM10_(ug/m3)" IS NULL--ALL good till here
OR "PM2.5_(ug/m3)" IS NULL -- 483 - bit too big
OR "nitrogen_dioxide_(ppm)" IS NULL  -- None
OR "nitrogen_oxides_(ppm)" IS NULL -- 51, Good!
OR "nitrogen_oxide_(ppm)" IS NULL --51, Good!
OR "visibility-reducing_particles_(Mm-1)" IS NULL -- 90, Solid!
OR "ozone_(ppm)" IS NULL -- Within 5% band, maybe call 1%?
OR "sulfur_dioxide_(ppm)" IS NULL -- Within 5% band, maybe call 1%?
OR "xylenes_(ppb)" IS NULL -- In 5% band
OR "benzene_(ppb)" IS NULL -- Too much
OR "toulene_(ppb)" IS NULL  -- Too much
OR "formaldehyde_(ppb)" IS NULL  -- Too much
OR "visibility-reducing_particles_(Mm-1)" IS NULL
ORDER BY datetime_id ASC;
