-- Gladstone Update function
UPDATE public.gladstone_clean_data
SET
  "PM2.5_(ug/m3)" = public.temp_table.data_filled
FROM
  public.temp_table
WHERE
(public.gladstone_clean_data.datetime_id = temp_table.datetime_id);
-- --## Checker
-- SELECT datetime_id,"PM2.5_(ug/m3)"
-- FROM public.gladstone_clean_data
-- WHERE "nitrogen_oxides_(ppm)" IS NULL
-- OR public.gladstone_clean_data.datetime_id IN(1139,1140,1141,1142)
-- ORDER BY datetime_id ASC;

