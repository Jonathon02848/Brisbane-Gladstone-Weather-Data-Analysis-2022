-- Wind Speed Deviations
--From original Query w/ Timestamp
SET TIME ZONE 'Australia/Brisbane';
DROP TABLE IF EXISTS public."Query: Wind Speed Deviations T" CASCADE;
CREATE TABLE "Query: Wind Speed Deviations T" AS
(SELECT
	 ROW_NUMBER() OVER (ORDER BY public."Query: Wind Speed Deviations"."Date ID" ASC) AS "Datetime ID",
	 TO_TIMESTAMP( to_char("Date (YYYY/MM/DD)"::date, 'YYYY-MM-DD')||' '|| to_char("Hour (24:00)"::time without time zone, 'HH24:MI'), 'YYYY-MM-DD HH24:MI TZH')::timestamptz AS "Date-Time",
	 "Date (YYYY/MM/DD)",
	 "Hour (24:00)",
  	 "Brisbane Wind Direction (degN)",
 	 "Gladstone Wind Direction (degN)",
	 "Brisbane Wind Speed Km/h",
	 "Gladstone Wind Speed Km/h",
	 "Brisbane Wind Std Deviation Km/h",
	 "Gladstone Wind Std Deviation Km/h"
FROM public."Query: Wind Speed Deviations" ORDER BY "Datetime ID" ASC);
SELECT * FROM "Query: Wind Speed Deviations T";

