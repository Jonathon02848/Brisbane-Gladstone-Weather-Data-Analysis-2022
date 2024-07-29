-- QUERY: PM10 & 2.5
DROP TABLE IF EXISTS "Query: Air Quality Data" CASCADE;
CREATE TABLE "Query: Air Quality Data" AS
(SELECT
  public.brisbane_clean_data.datetime_id AS "Datetime ID",
  public.brisbane_clean_data.datevalue "Date (YYYY/MM/DD)",
  public.brisbane_clean_data.timevalue AS "Hour (24:00)",
  public.brisbane_clean_data."PM10_(ug/m3)" AS "brisbane PM10 (ug/m3)",
  public.brisbane_clean_data."PM2.5_(ug/m3)" AS "brisbane PM2.5 (ug/m3)",
  public.brisbane_clean_data."visibility_reducing_particles_(Mm-1)" AS "brisbane VRPs (Mm-1)",
  public.gladstone_clean_data."PM10_(ug/m3)" AS "gladstone PM10 (ug/m3)",
  public.gladstone_clean_data."PM2.5_(ug/m3)" AS "gladstone PM2.5 (ug/m3)",
  public.gladstone_clean_data."visibility-reducing_particles_(Mm-1)" AS "gladstone VRPs (Mm-1)"
FROM public.brisbane_clean_data FULL JOIN public.gladstone_clean_data
ON public.brisbane_clean_data.datetime_id = public.gladstone_clean_data.datetime_id
ORDER BY "Datetime ID" ASC);
-- SELECT * FROM "Query: Air Quality Data" ORDER BY "Datetime ID" ASC;
