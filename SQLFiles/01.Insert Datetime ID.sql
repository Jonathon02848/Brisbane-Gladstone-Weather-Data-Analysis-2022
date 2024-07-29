-- Insert Datetime ID into composite files
INSERT INTO public."brisbane_composite_air_quality_raw"("datetime_id")
(SELECT "datetime_id" FROM public."brisbane_cbd_air_quality_raw" );  
