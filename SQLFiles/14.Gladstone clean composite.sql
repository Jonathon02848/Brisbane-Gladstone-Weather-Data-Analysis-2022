--Created Gladstone table for completely filled dataset (bar dropped values)
CREATE TABLE clean_gladstone_composite_air_quality AS
SELECT * FROM public.gladstone_composite_air_quality_raw_filled;
SELECT * FROM public. clean_gladstone_composite_air_quality
ORDER BY datetime_id ASC;

