-- Null checker for highlighted nulls, used to test if process works (Bris):
SELECT * FROM public.brisbane_clean_data
WHERE "wind_direction_(degN)" IS NULL
OR "wind_speed_(m/s)" IS NULL
OR "wind_deviation_(deg)" IS NULL
OR "wind_speed_deviation_(m/s)" IS NULL
OR "wind_temperature_(degC)" IS NULL
OR "humidity_(%)" IS NULL
OR "rainfall_(mm)" IS NULL
OR "barometric_pressure_(hPa)" IS NULL
OR "PM10_(ug/m3)" IS NULL
OR "PM2.5_(ug/m3)" IS NULL
OR "nitrogen_oxide_(ppm)" IS NULL
OR "nitrogen_dioxide_(ppm)" IS NULL
OR "nitrogen_oxides_(ppm)" IS NULL
OR "carbon_monoxide_(ppm)" IS NULL
OR public.brisbane_clean_data.datetime_id IN(6200,6201,6202,6203,6468,6469,6470)
ORDER BY datetime_id ASC;
