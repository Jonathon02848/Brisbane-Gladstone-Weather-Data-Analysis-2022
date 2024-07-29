-- Wind Speed Deviation Addition: Injected stand deviation results into a compound result:
-- Note: Was relabelled to a placeholder file, so table name irrelevant.
DROP TABLE IF EXISTS "Wind Direction Query T" CASCADE;
Create Table "Wind Direction Query T" AS
(SELECT
--SELECT
  public."Query: Wind Speed Deviations T"."Datetime ID", "Date (YYYY/MM/DD)", "Hour (24:00)",
  5*public."Query: Wind Speed Deviations T"."Datetime ID"-4 AS  "DTIDA",
  5*public."Query: Wind Speed Deviations T"."Datetime ID"-3 AS "DTIDB",
  5*public."Query: Wind Speed Deviations T"."Datetime ID"-2 AS "DTIDC",
  5*public."Query: Wind Speed Deviations T"."Datetime ID"-1 AS "DTIDD",
  5*public."Query: Wind Speed Deviations T"."Datetime ID" AS "DTIDE",
  public."Query: Wind Speed Deviations T"."Brisbane Wind Speed Km/h" - 2*public."Query: Wind Speed Deviations T"."Brisbane Wind Std Deviation Km/h" AS  "Brisbane WS0",
  public."Query: Wind Speed Deviations T"."Brisbane Wind Speed Km/h" - public."Query: Wind Speed Deviations T"."Brisbane Wind Std Deviation Km/h" AS "Brisbane WS1",
  public."Query: Wind Speed Deviations T"."Brisbane Wind Speed Km/h" AS "Brisbane WS2",
  public."Query: Wind Speed Deviations T"."Brisbane Wind Speed Km/h" + public."Query: Wind Speed Deviations T"."Brisbane Wind Std Deviation Km/h" AS  "Brisbane WS3",
  public."Query: Wind Speed Deviations T"."Brisbane Wind Speed Km/h" + 2*public."Query: Wind Speed Deviations T"."Brisbane Wind Std Deviation Km/h" AS  "Brisbane WS4",
  public."Query: Wind Speed Deviations T"."Gladstone Wind Speed Km/h" - 2*public."Query: Wind Speed Deviations T"."Gladstone Wind Std Deviation Km/h" AS "Gladstone WS0",
  public."Query: Wind Speed Deviations T"."Gladstone Wind Speed Km/h" - public."Query: Wind Speed Deviations T"."Gladstone Wind Std Deviation Km/h" AS "Gladstone WS1",
  public."Query: Wind Speed Deviations T"."Gladstone Wind Speed Km/h" AS "Gladstone WS2",
  public."Query: Wind Speed Deviations T"."Gladstone Wind Speed Km/h" + public."Query: Wind Speed Deviations T"."Gladstone Wind Std Deviation Km/h" AS "Gladstone WS3",
  public."Query: Wind Speed Deviations T"."Gladstone Wind Speed Km/h" + 2*public."Query: Wind Speed Deviations T"."Gladstone Wind Std Deviation Km/h" AS "Gladstone WS4"
FROM public."Query: Wind Speed Deviations T" ORDER BY "Datetime ID" ASC
);

-- SELECT
-- (SELECT "DTIDA" FROM public."AllWind" AS "DT ID"
--  UNION ALL
--  SELECT  "DTIDB" FROM public."AllWind"
--  UNION ALL
--  SELECT "DTIDC" FROM public."AllWind"
--  UNION ALL
--  SELECT "DTIDD" FROM public."AllWind"
--  UNION ALL
--  SELECT "DTIDE" FROM public."AllWind"
-- ),
-- (SELECT "Brisbane WS0" FROM public."AllWind"  AS "Brisbane Winds km/h" UNION ALL
--  SELECT "Brisbane WS1" FROM public."AllWind" UNION ALL
--  SELECT "Brisbane WS2" FROM public."AllWind" UNION ALL
--  SELECT "Brisbane WS3" FROM public."AllWind" UNION ALL
--  SELECT "Brisbane WS4" FROM public."AllWind"
-- ),
-- (SELECT "Gladstone WS0" FROM public."AllWind" AS "Gladstone Winds km/h" UNION ALL
-- SELECT "Gladstone WS1" FROM public."AllWind" UNION ALL
-- SELECT "Gladstone WS2" FROM public."AllWind" UNION ALL
-- SELECT "Gladstone WS3" FROM public."AllWind" UNION ALL
-- SELECT "Gladstone WS4" FROM public."AllWind"
-- )
-- FROM public."AllWind"
-- --ORDER BY "DT ID" ASC;
-- --SELECT * FROM public."AllWind";
