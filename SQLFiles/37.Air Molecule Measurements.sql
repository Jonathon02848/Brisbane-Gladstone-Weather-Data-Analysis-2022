--From original Query w/ Timestamp
SET TIME ZONE 'Australia/Brisbane';
DROP TABLE IF EXISTS  "Query: Air Molecule Measurements T" CASCADE;
CREATE TABLE "Query: Air Molecule Measurements T" AS
(SELECT
 "Datetime ID",
 TO_TIMESTAMP( to_char("Date (YYYY/MM/DD)"::date, 'YYYY-MM-DD')||' '|| to_char("Hour (24:00)"::time without time zone, 'HH24:MI'), 'YYYY-MM-DD HH24:MI TZH')::timestamptz AS "Date-Time",
 "Date (YYYY/MM/DD)",
 "Hour (24:00)",
 "brisbane nitrogen oxide (ppm)",
 "brisbane nitrogen dioxide (ppm)",
 "brisbane nitrogen oxides (ppm)",
 "brisbane carbon monoxide (ppm)",
 "gladstone nitrogen oxide (ppm)",
 "gladstone nitrogen dioxide (ppm)",
 "gladstone nitrogen oxides (ppm)",
 "gladstone sulfur dioxide (ppm)",
 "gladstone ozone (ppm)",
 "gladstone xylenes (ppb)"
FROM public."Query: Air Molecule Measurements" ORDER BY "Datetime ID" ASC);

SELECT * FROM public."Query: Air Molecule Measurements T" ORDER BY "Datetime ID" ASC;
