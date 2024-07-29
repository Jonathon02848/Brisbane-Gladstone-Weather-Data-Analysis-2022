-- Air Quality Guidelines
--From original Query w/ Similar naming
SET TIME ZONE 'Australia/Brisbane';
DROP TABLE IF EXISTS public."Query: Air Quality Guidelines T" CASCADE;

CREATE TABLE public."Query: Air Quality Guidelines T" AS
(SELECT *
FROM public."Query: Air Quality Guidelines" ORDER BY "Date ID" ASC);

SELECT * FROM public."Query: Air Quality Guidelines" ORDER BY "Date ID" ASC;
