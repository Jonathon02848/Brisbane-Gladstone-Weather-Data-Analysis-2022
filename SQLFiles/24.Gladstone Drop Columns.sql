-- Dropping Gladstone columns with large unfilled data:
-- CLEANING GLADSTONE COLUMNS:
ALTER TABLE public.gladstone_clean_data
DROP COLUMN "benzene_(ppb)",
DROP COLUMN "formaldehyde_(ppb)",
DROP COLUMN "toulene_(ppb)";
SELECT * FROM public.gladstone_clean_data
ORDER BY datetime_id asc;
