-- Air Quality Data
--From original Query w/ Timestamp
SET TIME ZONE 'Australia/Brisbane';
DROP TABLE IF EXISTS  public."Query: Air Quality Data T" CASCADE;
CREATE TABLE "Query: Air Quality Data T" AS
(SELECT
 "Datetime ID",
 TO_TIMESTAMP( to_char("Date (YYYY/MM/DD)"::date, 'YYYY-MM-DD')||' '|| to_char("Hour (24:00)"::time without time zone, 'HH24:MI'), 'YYYY-MM-DD HH24:MI TZH')::timestamptz AS "Date-Time",
 "Date (YYYY/MM/DD)",
 "Hour (24:00)",
 	 "brisbane PM10 (ug/m3)",
 	 "brisbane PM2.5 (ug/m3)",
 	 "brisbane VRPs (Mm-1)",
 	 "gladstone PM10 (ug/m3)",
 	 "gladstone PM2.5 (ug/m3)",
	 "gladstone VRPs (Mm-1)"
FROM public."Query: Air Quality Data" ORDER BY "Datetime ID" ASC);
SELECT * FROM public."Query: Air Quality Data T" ORDER BY "Datetime ID" ASC;
