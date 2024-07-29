-- Insert CBD  - - > Compound dataset.
UPDATE
  brisbane_composite_air_quality_raw
SET
  timevalue = brisbane_cbd_air_quality_raw.timevalue,
  "wind_direction_(degN)" = brisbane_cbd_air_quality_raw."wind_direction_(degN)",
  "wind_speed_(m/s)" = brisbane_cbd_air_quality_raw. "wind_speed_(m/s)",
  "wind_deviation_(deg)" = brisbane_cbd_air_quality_raw."wind_deviation_(deg)",
  "wind_speed_deviation_(m/s)" = brisbane_cbd_air_quality_raw."wind_speed_deviation_(m/s)",
  "wind_temperature_(degC)" = brisbane_cbd_air_quality_raw."wind_temperature_(degC)",
  "humidity_(%)" = brisbane_cbd_air_quality_raw."humidity_(%)",
  "rainfall_(mm)" = brisbane_cbd_air_quality_raw."rainfall_(mm)",
  "barometric_pressure_(hPa)" = brisbane_cbd_air_quality_raw."barometric_pressure_(hPa)",
  "PM10_(ug/m3)" = brisbane_cbd_air_quality_raw."PM10_(ug/m3)",
  "PM2.5_(ug/m3)" = brisbane_cbd_air_quality_raw."PM2.5_(ug/m3)",
  "visibility_reducing_particles_(Mm-1)" = brisbane_cbd_air_quality_raw."visibility_reducing_particles_(Mm-1)"
FROM
  brisbane_cbd_air_quality_raw
WHERE
  brisbane_composite_air_quality_raw.datetime_id= brisbane_cbd_air_quality_raw.datetime_id;
