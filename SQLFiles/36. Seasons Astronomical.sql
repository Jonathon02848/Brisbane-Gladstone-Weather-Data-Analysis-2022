-- SEASONS ASTRONOMICAL
DROP TABLE IF EXISTS "SubQuery: Season Metrics (Astronomical)" CASCADE;

CREATE TABLE "SubQuery: Season Metrics (Astronomical)" AS(
  SELECT
ROW_NUMBER() OVER (ORDER BY public."Query: Monthly/Seasonsal Temperature Metrics"."Season (Astronomical)" ASC) AS "Row ID", -- is ID value
  public."Query: Monthly/Seasonsal Temperature Metrics"."Season (Astronomical)" AS "Astronomical Season",

  AVG(public."Query: Monthly/Seasonsal Temperature Metrics"."Brisbane Humidity (%)") AS "Astro Brisbane Humidity (%)",
  AVG(public."Query: Monthly/Seasonsal Temperature Metrics"."Gladstone Humidity (%)")AS "Astro Gladstone Humidity (%)",

  AVG(public."Query: Monthly/Seasonsal Temperature Metrics"."Brisbane Rainfall (mm)") AS "Astro Brisbane Rainfall (mm)",
  AVG(public."Query: Monthly/Seasonsal Temperature Metrics"."Gladstone Rainfall (mm)") AS "Astro Gladstone Rainfall (mm)",

  AVG(public."Query: Monthly/Seasonsal Temperature Metrics"."Brisbane Temperature (degC)") AS "Astro Brisbane Temperature (degC)",
  AVG(public."Query: Monthly/Seasonsal Temperature Metrics"."Gladstone Temperature (degC)") AS "Astro Gladstone Temperature (degC)",

  AVG(public."Query: Monthly/Seasonsal Temperature Metrics"."Brisbane Barometric Pressure (hPa)") AS "Astro Brisbane Barometric Pressure (hPa)",
  AVG(public."Query: Monthly/Seasonsal Temperature Metrics"."Gladstone Barometric Pressure (hPa)") AS "Astro Gladstone Barometric Pressure (hPa)"

FROM public."Query: Monthly/Seasonsal Temperature Metrics"
GROUP BY public."Query: Monthly/Seasonsal Temperature Metrics"."Season (Astronomical)"
ORDER BY "Row ID" ASC);

SELECT * FROM "SubQuery: Season Metrics (Astronomical)" ORDER BY "Row ID" ASC;
