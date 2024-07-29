-- Query 3: Monthly/Seasonal Metrics for Metero/Astronomical Seasons
DROP TABLE IF EXISTS "Query: Monthly/Seasonsal Temperature Metrics" CASCADE;

CREATE TABLE "Query: Monthly/Seasonsal Temperature Metrics" AS(
  SELECT public."Query: Athmosphere metrics"."Datetime ID" AS "Date ID", -- is ID value ROW_NUMBER() OVER (ORDER BY public."Query: Athmosphere metrics"."Datetime ID" ASC)
  public."Query: Athmosphere metrics"."Date (YYYY/MM/DD)" AS "Date (YYYY/MM/DD)",
  public."Query: Athmosphere metrics"."Hour (24:00)" AS "Hour (24:00)",
  TO_CHAR(public."Query: Athmosphere metrics"."Date (YYYY/MM/DD)", 'Month') AS "Month",
  EXTRACT(month FROM public."Query: Athmosphere metrics"."Date (YYYY/MM/DD)") AS "Month Value",
  CASE
	WHEN EXTRACT(month FROM public."Query: Athmosphere metrics"."Date (YYYY/MM/DD)") IN(12,1,2) THEN 'Summer'
	WHEN EXTRACT(month FROM public."Query: Athmosphere metrics"."Date (YYYY/MM/DD)") IN(3,4,5) THEN 'Autumn'
	WHEN EXTRACT(month FROM public."Query: Athmosphere metrics"."Date (YYYY/MM/DD)") IN(6,7,8) THEN 'Winter'
	ELSE 'Spring' END "Season (Meterological)",
  CASE
	WHEN EXTRACT(month FROM public."Query: Athmosphere metrics"."Date (YYYY/MM/DD)") IN(12,1,2) THEN 1
	WHEN EXTRACT(month FROM public."Query: Athmosphere metrics"."Date (YYYY/MM/DD)") IN(3,4,5) THEN 2
	WHEN EXTRACT(month FROM public."Query: Athmosphere metrics"."Date (YYYY/MM/DD)") IN(6,7,8) THEN 3
	ELSE 4 END "Season (Meterological) Value",
  CASE
	WHEN public."Query: Athmosphere metrics"."Datetime ID" < 1899 OR public."Query: Athmosphere metrics"."Datetime ID" >= 8529 THEN 'Summer'
	WHEN public."Query: Athmosphere metrics"."Datetime ID" >= 1899 AND public."Query: Athmosphere metrics"."Datetime ID" < 4124 THEN 'Autumn'
	WHEN public."Query: Athmosphere metrics"."Datetime ID" >= 4124 AND public."Query: Athmosphere metrics"."Datetime ID" < 6372 THEN 'Winter'
	WHEN public."Query: Athmosphere metrics"."Datetime ID" >= 6372 AND public."Query: Athmosphere metrics"."Datetime ID" < 8529 THEN 'Spring' END "Season (Astronomical)",
  CASE
	WHEN public."Query: Athmosphere metrics"."Datetime ID" < 1899 OR public."Query: Athmosphere metrics"."Datetime ID" >= 8529 THEN 1
	WHEN public."Query: Athmosphere metrics"."Datetime ID" >= 1899 AND public."Query: Athmosphere metrics"."Datetime ID" < 4124 THEN 2
	WHEN public."Query: Athmosphere metrics"."Datetime ID" >= 4124 AND public."Query: Athmosphere metrics"."Datetime ID" < 6372 THEN 3
	WHEN public."Query: Athmosphere metrics"."Datetime ID" >= 6372 AND public."Query: Athmosphere metrics"."Datetime ID" < 8529 THEN 4 END "Season (Astronomical) Value",

  public."Query: Athmosphere metrics"."brisbane humidity (%)" AS "Brisbane Humidity (%)",
  public."Query: Athmosphere metrics"."gladstone humidity (%)" AS "Gladstone Humidity (%)",

  public."Query: Athmosphere metrics"."brisbane rainfall (mm)" AS "Brisbane Rainfall (mm)",
  public."Query: Athmosphere metrics"."gladstone rainfall (mm)" AS "Gladstone Rainfall (mm)",

  public."Query: Athmosphere metrics"."brisbane temperature (degC)" AS "Brisbane Temperature (degC)",
  public."Query: Athmosphere metrics"."gladstone temperature (degC)" AS "Gladstone Temperature (degC)",

  public."Query: Athmosphere metrics"."brisbane Barometric Pressure (hPa)" AS "Brisbane Barometric Pressure (hPa)",
  public."Query: Athmosphere metrics"."gladstone Barometric Pressure (hPa)" AS "Gladstone Barometric Pressure (hPa)"

FROM public."Query: Athmosphere metrics"
ORDER BY "Date ID" ASC);

SELECT * FROM public."Query: Monthly/Seasonsal Temperature Metrics" ORDER BY "Date ID" ASC
