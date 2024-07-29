-- Simpler Gladstone  Null checker, done for computation speed and visual feedback:
-- Checker for Nulls in gladstone clean
SELECT * FROM public.gladstone_clean_data
WHERE "ozone_(ppm)" IS NULL
OR "sulfur_dioxide_(ppm)" IS NULL
--OR "benzene_(ppb)" IS NULL
--OR "toulene_(ppb)" IS NULL
OR "xylenes_(ppb)" IS NULL
--OR "formaldehyde_(ppb)" IS NULL
OR "visibility-reducing_particles_(Mm-1)" IS NULL
OR "PM10_(ug/m3)" IS NULL
OR "PM2.5_(ug/m3)" IS NULL
OR "nitrogen_oxide_(ppm)" IS NULL
OR "nitrogen_dioxide_(ppm)" IS NULL
OR "nitrogen_oxides_(ppm)" IS NULL
--OR public.gladstone_clean_data.datetime_id IN(250,251,252,253,254)
ORDER BY datetime_id ASC;
-- -- Others over 5%: "benzene_(ppb)","PM2.5_(ug/m3)","formaldehyde_(ppb)","toulene_(ppb)"
-- ins: IN(2628,2629,2630)  IN(1630,1631,1632,1633,1634), IN(1139,1140,1141,1142), IN(250,251,252,253,254) –Values checked
