-- Checks if there is nulls in Colms (nums)
SELECT
  temp_table.datetime_id,
  data_filled,
  public.gladstone_clean_data."PM2.5_(ug/m3)"
FROM temp_table
FULL JOIN public.gladstone_clean_data
ON temp_table.datetime_id = public.gladstone_clean_data.datetime_id
WHERE public.gladstone_clean_data."PM2.5_(ug/m3)" IS NULL
OR public.gladstone_clean_data.datetime_id IN(250,251,252,253,254)
ORDER BY datetime_id asc;
