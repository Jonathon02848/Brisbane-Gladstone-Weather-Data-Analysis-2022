-- Checking if Gladstone vars are NULL:
SELECT datetime_id, "wind_direction_(degN)", "wind_speed_(m/s)",
  "wind_deviation_(deg)", "wind_speed_deviation_(m/s)",
  "wind_temperature_(degC)", "humidity_(%)",
  "rainfall_(mm)", "barometric_pressure_(hPa)", "PM10_(ug/m3)"
FROM public.south_gladstone_air_quality_raw
WHERE "wind_speed_(m/s)" IS NULL
OR "wind_direction_(degN)" IS NULL
OR "wind_deviation_(deg)" IS NULL
OR "wind_speed_deviation_(m/s)" IS NULL
OR "wind_temperature_(degC)" IS NULL
OR "humidity_(%)" IS NULL
OR "rainfall_(mm)" IS NULL
OR "barometric_pressure_(hPa)" IS NULL
OR "PM10_(ug/m3)" IS NULL
ORDER BY datetime_id ASC;

