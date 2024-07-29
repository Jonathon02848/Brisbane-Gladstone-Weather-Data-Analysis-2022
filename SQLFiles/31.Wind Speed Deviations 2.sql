-- Wind speed deviation for whisker plot (first correction, m/s to km/h)
DROP TABLE IF EXISTS "Query: Wind Speed Deviations" CASCADE;

CREATE TABLE "Query: Wind Speed Deviations" AS(
SELECT ROW_NUMBER() OVER (ORDER BY public.brisbane_clean_data."datetime_id" ASC) AS "Date ID", -- is ID value
  public.brisbane_clean_data."datevalue" AS "Date (YYYY/MM/DD)",
  public.brisbane_clean_data."timevalue" AS "Hour (24:00)",
  public.brisbane_clean_data."wind_direction_(degN)" AS "Brisbane Wind Direction (degN)",
  public.gladstone_clean_data."wind_direction_(degN)" AS "Gladstone Wind Direction (degN)",
  3.6*public.brisbane_clean_data."wind_speed_(m/s)" AS "Brisbane Wind Speed Km/h", --Scaling factor: 1 m/s = 3.6 km/h
  3.6*public.gladstone_clean_data."wind_speed_(m/s)" AS "Gladstone Wind Speed Km/h",
  3.6*public.brisbane_clean_data."wind_speed_deviation_(m/s)" AS "Brisbane Wind Std Deviation Km/h",
  3.6*public.gladstone_clean_data."wind_speed_deviation_(m/s)" AS "Gladstone Wind Std Deviation Km/h"
FROM public.brisbane_clean_data
FULL JOIN public.gladstone_clean_data
ON public.brisbane_clean_data."datetime_id" = public.gladstone_clean_data."datetime_id"
ORDER BY "Date ID" ASC);

SELECT * FROM "Query: Wind Speed Deviations" ORDER BY "Date ID" ASC
