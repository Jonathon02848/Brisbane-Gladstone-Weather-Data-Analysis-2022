-- QUERY: H T, BP & R
DROP TABLE IF EXISTS "Query: Athmosphere metrics" CASCADE;
CREATE TABLE "Query: Athmosphere metrics" AS
-- "Rain, Humidity, Temp. & Barometric Pressure"
(SELECT
  public.brisbane_clean_data.datetime_id AS "Datetime ID",
  public.brisbane_clean_data.datevalue "Date (YYYY/MM/DD)",
  public.brisbane_clean_data.timevalue AS "Hour (24:00)",
  public.brisbane_clean_data."humidity_(%)" AS "brisbane humidity (%)",
  public.brisbane_clean_data."rainfall_(mm)" AS "brisbane rainfall (mm)",
  public.brisbane_clean_data."wind_temperature_(degC)" AS "brisbane temperature (degC)",
  public.brisbane_clean_data."barometric_pressure_(hPa)" AS "brisbane Barometric Pressure (hPa)",
  public.gladstone_clean_data."humidity_(%)" AS "gladstone humidity (%)",
  public.gladstone_clean_data."rainfall_(mm)" AS "gladstone rainfall (mm)",
  public.gladstone_clean_data."wind_temperature_(degC)" AS "gladstone temperature (degC)",
  public.gladstone_clean_data."barometric_pressure_(hPa)" AS "gladstone Barometric Pressure (hPa)"
FROM public.brisbane_clean_data FULL JOIN public.gladstone_clean_data
ON public.brisbane_clean_data.datetime_id = public.gladstone_clean_data.datetime_id
ORDER BY "Datetime ID" ASC);
-- SELECT * FROM "Query: Athmosphere metrics" ORDER BY "Datetime ID" ASC;

