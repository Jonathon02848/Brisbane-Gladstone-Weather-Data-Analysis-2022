-- 06. Brisbane,gladstone creating clone composite table, using raw as backup:

-- brisbane_composite_air_quality_raw_filled or
-- gladstone_composite_air_quality_raw_filled
CREATE TABLE brisbane_composite_air_quality_raw_filled AS
SELECT * FROM public.brisbane_composite_air_quality_raw;

-- Checks for missing values.
SELECT * FROM public.brisbane_composite_air_quality_raw_filled
WHERE "wind_direction_(degN)" IS NULL
ORDER BY datetime_id ASC;
