-- Atmospheric metrics
--From original Query w/ Timestamp
SET TIME ZONE 'Australia/Brisbane';
DROP TABLE IF EXISTS  "Query: Atmosphere metrics T" CASCADE;
CREATE TABLE "Query: Atmosphere metrics T" AS
(SELECT
 "Datetime ID",
 TO_TIMESTAMP( to_char("Date (YYYY/MM/DD)"::date, 'YYYY-MM-DD')||' '|| to_char("Hour (24:00)"::time without time zone, 'HH24:MI'), 'YYYY-MM-DD HH24:MI TZH')::timestamptz AS "Date-Time",
 "Date (YYYY/MM/DD)",
 "Hour (24:00)",
 "brisbane humidity (%)",
 "brisbane rainfall (mm)",
 "brisbane temperature (degC)",
 "brisbane Barometric Pressure (hPa)",
 "gladstone humidity (%)",
 "gladstone rainfall (mm)",
 "gladstone temperature (degC)",
 "gladstone Barometric Pressure (hPa)"

FROM public."Query: Atmosphere metrics"  ORDER BY "Datetime ID" ASC);

SELECT * FROM public."Query: Atmosphere metrics T" ORDER BY "Datetime ID" ASC;
