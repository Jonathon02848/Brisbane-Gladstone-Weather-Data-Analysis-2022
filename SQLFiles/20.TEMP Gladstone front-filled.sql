-- Query to generate forward-filled data for Gladstone:
DROP TABLE IF EXISTS temp_table CASCADE;
CREATE TABLE temp_table AS
SELECT datetime_id,
  COALESCE("PM2.5_(ug/m3)",
  FIRST_VALUE("PM2.5_(ug/m3)") OVER(
  PARTITION BY generic_group ORDER BY datetime_id ASC)) AS data_filled
FROM (
  SELECT datetime_id, "PM2.5_(ug/m3)",
  COUNT("PM2.5_(ug/m3)") OVER (ORDER BY datetime_id ASC) AS generic_group
  FROM public.gladstone_composite_air_quality_raw_filled
  ORDER BY
  datetime_id ASC);
