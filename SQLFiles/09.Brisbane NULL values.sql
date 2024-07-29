-- Filling NULLS, Brisbane version:
UPDATE brisbane_composite_air_quality_raw_filled
SET
  "carbon_monoxide_(ppm)" = public.south_brisbane_air_quality_raw."carbon_monoxide_(ppm)"
FROM
  public.south_brisbane_air_quality_raw
WHERE
  (public.brisbane_composite_air_quality_raw_filled."carbon_monoxide_(ppm)" IS NULL)
AND
  (public.south_brisbane_air_quality_raw."carbon_monoxide_(ppm)" IS NOT NULL)
AND
  (public.brisbane_composite_air_quality_raw_filled.datetime_id = public.south_brisbane_air_quality_raw.datetime_id);

--TLDR wind_direction to PM 2.5 Wool (CBD base) %%%, then Nit Oxi, Dio, Mono South (as Wool base),
