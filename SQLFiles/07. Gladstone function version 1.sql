-- 07. Update function version 1 for Gladstone:
UPDATE gladstone_composite_air_quality_raw_filled
SET
  "wind_direction_(degN)" = public.south_gladstone_air_quality_raw."wind_direction_(degN)"
FROM
  public.south_gladstone_air_quality_raw
WHERE
  (public.gladstone_composite_air_quality_raw_filled."wind_direction_(degN)" IS NULL)
AND
  (public.south_gladstone_air_quality_raw."wind_direction_(degN)" IS NOT NULL)
AND
  (public.gladstone_composite_air_quality_raw_filled.datetime_id = public.south_gladstone_air_quality_raw.datetime_id);

