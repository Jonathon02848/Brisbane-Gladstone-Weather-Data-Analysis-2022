--SEASONS METEROLOGICAL
DROP TABLE IF EXISTS "SubQuery: Season Metrics (Meterological)" CASCADE;

CREATE TABLE "SubQuery: Season Metrics (Meterological)" AS(
SELECT
ROW_NUMBER() OVER (ORDER BY public."Query: Monthly/Seasonsal Temperature Metrics"."Season (Meterological)" ASC) AS "Row ID", -- is ID value
  public."Query: Monthly/Seasonsal Temperature Metrics"."Season (Meterological)" AS "Meterological Season",

  AVG(public."Query: Monthly/Seasonsal Temperature Metrics"."Brisbane Humidity (%)") AS "Metero Brisbane Humidity (%)",
  AVG(public."Query: Monthly/Seasonsal Temperature Metrics"."Gladstone Humidity (%)")AS "Metero Gladstone Humidity (%)",

  AVG(public."Query: Monthly/Seasonsal Temperature Metrics"."Brisbane Rainfall (mm)") AS "Metero Brisbane Rainfall (mm)",
  AVG(public."Query: Monthly/Seasonsal Temperature Metrics"."Gladstone Rainfall (mm)") AS "Metero Gladstone Rainfall (mm)",

  AVG(public."Query: Monthly/Seasonsal Temperature Metrics"."Brisbane Temperature (degC)") AS "Metero Brisbane Temperature (degC)",
  AVG(public."Query: Monthly/Seasonsal Temperature Metrics"."Gladstone Temperature (degC)") AS "Metero Gladstone Temperature (degC)",

  AVG(public."Query: Monthly/Seasonsal Temperature Metrics"."Brisbane Barometric Pressure (hPa)") AS "Metero Brisbane Barometric Pressure (hPa)",
  AVG(public."Query: Monthly/Seasonsal Temperature Metrics"."Gladstone Barometric Pressure (hPa)") AS "Metero Gladstone Barometric Pressure (hPa)"

FROM public."Query: Monthly/Seasonsal Temperature Metrics"
GROUP BY public."Query: Monthly/Seasonsal Temperature Metrics"."Season (Meterological)"
ORDER BY "Row ID" ASC);

SELECT * FROM "SubQuery: Season Metrics (Meterological)" ORDER BY "Row ID" ASC;
