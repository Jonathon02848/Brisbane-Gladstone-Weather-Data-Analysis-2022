-- Query process to create and store a table with front-fillable data for brisbane:
CREATE TABLE temp_table
AS SELECT datetime_id,
COALESCE("carbon_monoxide_(ppm)",
FIRST_VALUE("carbon_monoxide_(ppm)") OVER(
PARTITION BY generic_group ORDER BY datetime_id ASC)) AS data_filled
FROM (
  SELECT datetime_id, "carbon_monoxide_(ppm)",
  COUNT("carbon_monoxide_(ppm)") OVER (ORDER BY datetime_id ASC) AS generic_group
  FROM public.brisbane_clean_data
  ORDER BY
  datetime_id ASC);
