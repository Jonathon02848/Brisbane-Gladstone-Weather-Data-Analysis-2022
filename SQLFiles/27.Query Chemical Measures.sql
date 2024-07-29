-- QUERY: Chemical Measures
DROP TABLE IF EXISTS "Query: Air Molecule Measurements" CASCADE;
--QUERY: Chemical Measures
CREATE TABLE "Query: Air Molecule Measurements" AS
(SELECT
  public.brisbane_clean_data.datetime_id AS "Datetime ID",
  public.brisbane_clean_data.datevalue "Date (YYYY/MM/DD)",
  public.brisbane_clean_data.timevalue AS "Hour (24:00)",
  public.brisbane_clean_data."nitrogen_oxide_(ppm)" AS "brisbane nitrogen oxide (ppm)",
  public.brisbane_clean_data."nitrogen_dioxide_(ppm)" AS "brisbane nitrogen dioxide (ppm)",
  public.brisbane_clean_data."nitrogen_oxides_(ppm)" AS "brisbane nitrogen oxides (ppm)",
  public.brisbane_clean_data."carbon_monoxide_(ppm)" AS "brisbane carbon monoxide (ppm)",
  public.gladstone_clean_data."nitrogen_oxide_(ppm)" AS "gladstone nitrogen oxide (ppm)",
  public.gladstone_clean_data."nitrogen_dioxide_(ppm)" AS "gladstone nitrogen dioxide (ppm)",
  public.gladstone_clean_data."nitrogen_oxides_(ppm)" AS "gladstone nitrogen oxides (ppm)",
  public.gladstone_clean_data."sulfur_dioxide_(ppm)" AS "gladstone sulfur dioxide (ppm)",
  public.gladstone_clean_data."ozone_(ppm)" AS "gladstone ozone (ppm)",
  public.gladstone_clean_data."xylenes_(ppb)" AS "gladstone xylenes (ppb)"
FROM public.brisbane_clean_data FULL JOIN public.gladstone_clean_data
ON public.brisbane_clean_data.datetime_id = public.gladstone_clean_data.datetime_id
ORDER BY "Datetime ID" ASC);
-- SELECT * FROM "Query: Air Molecule Measurements" ORDER BY "Datetime ID" ASC;
