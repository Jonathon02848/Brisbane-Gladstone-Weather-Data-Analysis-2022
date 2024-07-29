-- Update function
UPDATE public.brisbane_clean_data
SET
  "carbon_monoxide_(ppm)" = public.temp_table.data_filled
FROM
  public.temp_table
WHERE
  (public.brisbane_clean_data.datetime_id = temp_table.datetime_id);
-- Checker
--SELECT datetime_id,"carbon_monoxide_(ppm)"
--FROM public.brisbane_clean_data
--WHERE "carbon_monoxide_(ppm)" IS NULL
--OR brisbane_clean_data.datetime_id IN(6200,6201,6202,6203,6468,6469,6470)
--ORDER BY datetime_id ASC;
