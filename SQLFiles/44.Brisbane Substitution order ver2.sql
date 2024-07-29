-- Substitution order code ver2 for Brisbane using COALESCE
-- Test
SELECT
  coalesce(ta.datetime_id, tb.datetime_id, tc.datetime_id) as datetime_id,
  coalesce(ta.datevalue, tb.datevalue, tc.datevalue) as datevalue,
  coalesce(ta.timevalue, tb.timevalue, tc.timevalue) as timevalue,
  coalesce(ta."wind_direction_(degN)", tb."wind_direction_(degN)", tc."wind_direction_(degN)") as "wind_direction_(degN)",
  coalesce(ta."wind_speed_(m/s)", tb."wind_speed_(m/s)", tc."wind_speed_(m/s)") as "wind_speed_(m/s)",
  coalesce(ta."wind_deviation_(deg)", tb."wind_deviation_(deg)", tc."wind_deviation_(deg)") as "wind_deviation_(deg)",
  coalesce(ta."wind_speed_deviation_(m/s)", tb."wind_speed_deviation_(m/s)", tc."wind_speed_deviation_(m/s)") as "wind_speed_deviation_(m/s)",
  coalesce(ta."wind_temperature_(degC)", tb."wind_temperature_(degC)", tc."wind_temperature_(degC)") as "wind_temperature_(degC)",
  coalesce(ta."humidity_(%)", tc."humidity_(%)") as "humidity_(%)",
  coalesce(ta."rainfall_(mm)", tc."rainfall_(mm)") as "rainfall_(mm)",
  coalesce(ta."barometric_pressure_(hPa)", tc."barometric_pressure_(hPa)") as "barometric_pressure_(hPa)",
  coalesce(ta."PM10_(ug/m3)", tb."PM10_(ug/m3)", tc."PM10_(ug/m3)") as "PM10_(ug/m3)",
  coalesce(ta."PM2.5_(ug/m3)", tb."PM2.5_(ug/m3)", tc."PM2.5_(ug/m3)") as "PM2.5_(ug/m3)",
  coalesce(ta."visibility_reducing_particles_(Mm-1)") as "visibility_reducing_particles_(Mm-1)",
  coalesce(tb."nitrogen_oxide_(ppm)", tc."nitrogen_oxide_(ppm)") as "nitrogen_oxide_(ppm)",
  coalesce(tb."nitrogen_dioxide_(ppm)", tc."nitrogen_dioxide_(ppm)") as "nitrogen_dioxide_(ppm)",
  coalesce(tb."nitrogen_oxides_(ppm)", tc."nitrogen_oxides_(ppm)") as "nitrogen_oxides_(ppm)",
  coalesce(tb."carbon_monoxide_(ppm)", tc."carbon_monoxide_(ppm)") as "carbon_monoxide_(ppm)"
FROM
  public.brisbane_cbd_air_quality_raw AS ta,
  public.south_brisbane_air_quality_raw AS tb,
  public.woolloongabba_air_quality_raw AS tc
WHERE
  ta.datetime_id = tb.datetime_id
AND
  tb.datetime_id = tc.datetime_id
ORDER BY datetime_id ASC

-- Brisbane substitution 
-- Repeat, implementation w/ wrapped table
CREATE TABLE public."Brisbane_Fixed_table_1" AS (SELECT
  coalesce(ta.datetime_id, tb.datetime_id, tc.datetime_id) as datetime_id,
  coalesce(ta.datevalue, tb.datevalue, tc.datevalue) as datevalue,
  coalesce(ta.timevalue, tb.timevalue, tc.timevalue) as timevalue,
  coalesce(ta."wind_direction_(degN)", tb."wind_direction_(degN)", tc."wind_direction_(degN)") as "wind_direction_(degN)",
  coalesce(ta."wind_speed_(m/s)", tb."wind_speed_(m/s)", tc."wind_speed_(m/s)") as "wind_speed_(m/s)",
  coalesce(ta."wind_deviation_(deg)", tb."wind_deviation_(deg)", tc."wind_deviation_(deg)") as "wind_deviation_(deg)",
  coalesce(ta."wind_speed_deviation_(m/s)", tb."wind_speed_deviation_(m/s)", tc."wind_speed_deviation_(m/s)") as "wind_speed_deviation_(m/s)",
  coalesce(ta."wind_temperature_(degC)", tb."wind_temperature_(degC)", tc."wind_temperature_(degC)") as "wind_temperature_(degC)",
  coalesce(ta."humidity_(%)", tc."humidity_(%)") as "humidity_(%)",
  coalesce(ta."rainfall_(mm)", tc."rainfall_(mm)") as "rainfall_(mm)",
  coalesce(ta."barometric_pressure_(hPa)", tc."barometric_pressure_(hPa)") as "barometric_pressure_(hPa)",
  coalesce(ta."PM10_(ug/m3)", tb."PM10_(ug/m3)", tc."PM10_(ug/m3)") as "PM10_(ug/m3)",
  coalesce(ta."PM2.5_(ug/m3)", tb."PM2.5_(ug/m3)", tc."PM2.5_(ug/m3)") as "PM2.5_(ug/m3)",
  coalesce(ta."visibility_reducing_particles_(Mm-1)") as "visibility_reducing_particles_(Mm-1)",
  coalesce(tb."nitrogen_oxide_(ppm)", tc."nitrogen_oxide_(ppm)") as "nitrogen_oxide_(ppm)",
  coalesce(tb."nitrogen_dioxide_(ppm)", tc."nitrogen_dioxide_(ppm)") as "nitrogen_dioxide_(ppm)",
  coalesce(tb."nitrogen_oxides_(ppm)", tc."nitrogen_oxides_(ppm)") as "nitrogen_oxides_(ppm)",
  coalesce(tb."carbon_monoxide_(ppm)", tc."carbon_monoxide_(ppm)") as "carbon_monoxide_(ppm)"
FROM
  public.brisbane_cbd_air_quality_raw AS ta,
  public.south_brisbane_air_quality_raw AS tb,
  public.woolloongabba_air_quality_raw AS tc
WHERE
  ta.datetime_id = tb.datetime_id
AND
  tb.datetime_id = tc.datetime_id
ORDER BY datetime_id ASC);
