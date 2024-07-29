-- Query to generate Air quality with WHO guidelines
CREATE TABLE "Query: Air Quality Guidlines" AS(
SELECT ROW_NUMBER() OVER (ORDER BY public."Query: Air Molecule Measurements"."Date (YYYY/MM/DD)" ASC) AS "Date ID", -- is ID value
public."Query: Air Molecule Measurements"."Date (YYYY/MM/DD)" AS "Date (YYYY/MM/DD)",
AVG(public."Query: Athmosphere metrics"."brisbane temperature (degC)") AS "Brisbane Average Temperature",
AVG(public."Query: Athmosphere metrics"."gladstone temperature (degC)") AS "Gladstone Average Temperature",
AVG("brisbane PM10 (ug/m3)") AS "Brisbane PM10 Daily Average",
AVG("gladstone PM10 (ug/m3)") AS "Gladstone PM10 Daily Average",
AVG("brisbane PM2.5 (ug/m3)") AS "Brisbane PM2.5 Daily Average",
AVG("gladstone PM2.5 (ug/m3)") AS "Gladstone PM2.5 Daily Average",
AVG("brisbane nitrogen dioxide (ppm)") AS "Brisbane NO2 Daily Average",
AVG("gladstone nitrogen dioxide (ppm)") AS "Gladstone NO2 Daily Average",
AVG("brisbane carbon monoxide (ppm)") AS "Brisbane CO Daily Average",
AVG("gladstone ozone (ppm)") AS "Gladstone O3 Daily Average",
AVG("gladstone sulfur dioxide (ppm)") AS "Gladstone SO2 Daily Average",
CASE WHEN AVG("brisbane PM10 (ug/m3)") > 45 THEN 'Unsafe' ELSE 'Safe' END AS "PM10 Safety Levels Brisbane",
CASE WHEN AVG("gladstone PM10 (ug/m3)") > 45 THEN 'Unsafe' ELSE 'Safe' END AS "PM10 Safety Levels Gladstone",
CASE WHEN AVG("brisbane PM2.5 (ug/m3)") > 15 THEN 'Unsafe' ELSE 'Safe' END AS "PM2.5 Safety Levels Brisbane",
CASE WHEN AVG("gladstone PM2.5 (ug/m3)") > 15 THEN 'Unsafe' ELSE 'Safe' END AS "PM2.5 Safety Levels Gladstone",
-- CASE WHEN AVG("brisbane nitrogen dioxide (ppm)") > 25*0.0217367677426*24.45 THEN 'Unsafe' ELSE 'Safe' END AS "NO2 Safety Levels Brisbane", -- 46.005g/mol
-- CASE WHEN AVG("gladstone nitrogen dioxide (ppm)") > 25*0.0217367677426*24.45 THEN 'Unsafe' ELSE 'Safe' END AS "NO2 Safety Levels Gladstone",
-- CASE WHEN AVG("brisbane carbon monoxide (ppm)") > 15*24.45*0.035701535166 THEN 'Unsafe' ELSE 'Safe' END AS "CO Safety Levels Brisbane", -- 28.010 g/mol
-- CASE WHEN AVG("gladstone ozone (ppm)") > 100*24.45*0.021277953912 THEN 'Unsafe' ELSE 'Safe' END AS "O3 Safety Levels Gladstone", -- 	47.997 g/mol
-- CASE WHEN AVG("gladstone sulfur dioxide (ppm)") > 40*24.45*0.0156089033185 THEN 'Unsafe' ELSE 'Safe' END AS "SO2 Safety Levels Gladstone" -- 	64.066 g/mol
-- Adjusted (Simple)
 CASE WHEN AVG("brisbane nitrogen dioxide (ppm)") > 25*(273.16+ MAX(public."Query: Athmosphere metrics"."brisbane temperature (degC)"))*62.4/(1*46.005) THEN 'Unsafe' ELSE 'Safe' END AS "NO2 Safety Levels Brisbane", -- 46.005g/mol
 CASE WHEN AVG("gladstone nitrogen dioxide (ppm)") > 25*(273.16+ MAX(public."Query: Athmosphere metrics"."gladstone temperature (degC)"))*62.4/(1*46.005) THEN 'Unsafe' ELSE 'Safe' END AS "NO2 Safety Levels Gladstone",
 CASE WHEN AVG("brisbane carbon monoxide (ppm)") > 15*(273.16+ MAX(public."Query: Athmosphere metrics"."brisbane temperature (degC)"))*62.4/(1*28.010) THEN 'Unsafe' ELSE 'Safe' END AS "CO Safety Levels Brisbane", -- 28.010 g/mol
 CASE WHEN AVG("gladstone ozone (ppm)") > 100*(273.16+ MAX(public."Query: Athmosphere metrics"."gladstone temperature (degC)"))*62.4/(1*47.997) THEN 'Unsafe' ELSE 'Safe' END AS "O3 Safety Levels Gladstone", -- 	47.997 g/mol
 CASE WHEN AVG("gladstone sulfur dioxide (ppm)") > 40*(273.16+ MAX(public."Query: Athmosphere metrics"."gladstone temperature (degC)"))*62.4/(1*64.066) THEN 'Unsafe' ELSE 'Safe' END AS "SO2 Safety Levels Gladstone" -- 	64.066 g/mol

-- Note: mg/m3 to ppm/ppb scale to fix to temperature  to temp average, then checked outliers with max/mins.
