-- Monthly Seasonal Temperature Metrics
--From original Query w/ Timestamp
SET TIME ZONE 'Australia/Brisbane';
DROP TABLE IF EXISTS public."Query: Monthly/Seasonal Temperature Metrics T" CASCADE;

CREATE TABLE "Query: Monthly/Seasonal Temperature Metrics T" AS
(SELECT
 "Date ID" AS "Datetime ID",
 TO_TIMESTAMP( to_char("Date (YYYY/MM/DD)"::date, 'YYYY-MM-DD')||' '|| to_char("Hour (24:00)"::time without time zone, 'HH24:MI'), 'YYYY-MM-DD HH24:MI TZH')::timestamptz AS "Date-Time",
 "Date (YYYY/MM/DD)",
 "Hour (24:00)",
 "Month",
 "Month Value",
 "Season (Meterological)",
 "Season (Meterological) Value",
 "Season (Astronomical)",
 "Season (Astronomical) Value",
 "Brisbane Humidity (%)",
 "Gladstone Humidity (%)",
 "Brisbane Rainfall (mm)",
 "Gladstone Rainfall (mm)",
 "Brisbane Temperature (degC)",
 "Gladstone Temperature (degC)",
 "Brisbane Barometric Pressure (hPa)",
 "Gladstone Barometric Pressure (hPa)"
FROM public."Query: Monthly/Seasonal Temperature Metrics" ORDER BY "Date ID" ASC);

SELECT * FROM public."Query: Monthly/Seasonal Temperature Metrics T" ORDER BY "Datetime ID" ASC;
