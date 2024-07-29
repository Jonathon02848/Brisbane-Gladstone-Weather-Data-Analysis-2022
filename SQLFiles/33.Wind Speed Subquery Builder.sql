-- Generating final Wind Speed composite, and renamed:
DROP TABLE IF EXISTS "WDTrue" CASCADE;
CREATE TABLE "WDTrue" AS
  (SELECT "DTIDA" AS "Datetime ID", "Brisbane WS0" AS "Brisbane Windspeed", "Gladstone WS0" AS "Gladstone Windspeed","Date (YYYY/MM/DD)","Hour (24:00)"
  FROM public."AllWind");

INSERT INTO "WDTrue"("Datetime ID","Brisbane Windspeed","Gladstone Windspeed","Date (YYYY/MM/DD)","Hour (24:00)")
  SELECT "DTIDB" AS "Datetime ID", "Brisbane WS1" AS "Brisbane Windspeed", "Gladstone WS1" AS "Gladstone Windspeed","Date (YYYY/MM/DD)","Hour (24:00)" FROM public."AllWind";

INSERT INTO "WDTrue"("Datetime ID","Brisbane Windspeed","Gladstone Windspeed","Date (YYYY/MM/DD)","Hour (24:00)")
  SELECT "DTIDC" AS "Datetime ID", "Brisbane WS2" AS "Brisbane Windspeed", "Gladstone WS2" AS "Gladstone Windspeed","Date (YYYY/MM/DD)","Hour (24:00)" FROM public."AllWind";

INSERT INTO "WDTrue"("Datetime ID","Brisbane Windspeed","Gladstone Windspeed","Date (YYYY/MM/DD)","Hour (24:00)")
  SELECT "DTIDD" AS "Datetime ID", "Brisbane WS3" AS "Brisbane Windspeed", "Gladstone WS3" AS "Gladstone Windspeed","Date (YYYY/MM/DD)","Hour (24:00)" FROM public."AllWind";

INSERT INTO "WDTrue"("Datetime ID","Brisbane Windspeed","Gladstone Windspeed","Date (YYYY/MM/DD)","Hour (24:00)")
  SELECT "DTIDE" AS "Datetime ID", "Brisbane WS4" AS "Brisbane Windspeed", "Gladstone WS4" AS "Gladstone Windspeed","Date (YYYY/MM/DD)","Hour (24:00)" FROM public."AllWind";

SELECT * FROM "WDTrue" ORDER BY "Datetime ID";
