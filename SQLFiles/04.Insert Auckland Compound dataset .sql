-- Insert Auckland  - - > Compound dataset as Auckland has more values.
-- No overlap between Memorial/Auckland => Interchangeable.
UPDATE
  gladstone_composite_air_quality_raw
SET
  "wind_direction_(degN)" = auckland_point_air_quality_raw."wind_direction_(degN)",
  "wind_speed_(m/s)" = auckland_point_air_quality_raw."wind_speed_(m/s)",
  "wind_deviation_(deg)" = auckland_point_air_quality_raw."wind_deviation_(deg)",
  "wind_speed_deviation_(m/s)" = auckland_point_air_quality_raw."wind_speed_deviation_(m/s)",
  "wind_temperature_(degC)" = auckland_point_air_quality_raw."wind_temperature_(degC)",
  "humidity_(%)" = auckland_point_air_quality_raw."humidity_(%)",
  "rainfall_(mm)" = auckland_point_air_quality_raw."rainfall_(mm)",
  "barometric_pressure_(hPa)" = auckland_point_air_quality_raw."barometric_pressure_(hPa)",
  "PM10_(ug/m3)" = auckland_point_air_quality_raw."PM10_(ug/m3)"
FROM
  public.auckland_point_air_quality_raw
WHERE
  gladstone_composite_air_quality_raw.datetime_id = auckland_point_air_quality_raw.datetime_id;

SELECT * FROM public.gladstone_composite_air_quality_raw ORDER BY datetime_id ASC;
