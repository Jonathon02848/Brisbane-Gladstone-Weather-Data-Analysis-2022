-- Created Brisbane table for filled dataset:
CREATE TABLE clean_brisbane_composite_air_quality AS
SELECT * FROM public.brisbane_composite_air_quality_raw_filled;
SELECT * FROM public. clean_brisbane_composite_air_quality
ORDER BY datetime_id ASC;
