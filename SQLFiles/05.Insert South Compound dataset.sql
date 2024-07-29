-- Insert South  - - > Compound dataset, adding missing values.
UPDATE
  gladstone_composite_air_quality_raw
SET
  "nitrogen_oxide_(ppm)" = public.south_gladstone_air_quality_raw."nitrogen_oxide_(ppm)",
  "nitrogen_oxides_(ppm)" = public.south_gladstone_air_quality_raw."nitrogen_oxides_(ppm)",
  "PM2.5_(ug/m3)"= public.south_gladstone_air_quality_raw."PM2.5_(ug/m3)",
  "visibility-reducing_particles_(Mm-1)" = public.south_gladstone_air_quality_raw."visibility-reducing_particles_(Mm-1)"
FROM
  public.south_gladstone_air_quality_raw
WHERE
  gladstone_composite_air_quality_raw.datetime_id = public.south_gladstone_air_quality_raw.datetime_id;
