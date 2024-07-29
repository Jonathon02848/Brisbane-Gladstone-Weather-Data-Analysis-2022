-- Insert, non empty files
UPDATE
  brisbane_composite_air_quality_raw
SET
  datevalue = brisbane_cbd_air_quality_raw.datevalue
FROM
  brisbane_cbd_air_quality_raw
WHERE
  brisbane_composite_air_quality_raw.datetime_id= brisbane_cbd_air_quality_raw.datetime_id;
