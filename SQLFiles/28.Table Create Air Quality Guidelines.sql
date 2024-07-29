-- QUERY: PM10 & 2.5 BINS: Safe vs unsafe levels
--  DROP TABLE IF EXISTS "Query: Air Quality Guidlines" CASCADE;

--  Needed two commands - one to generate table and one to fill it.
CREATE TABLE "Query: Air Quality Guidlines"(
    "Day ID" INTEGER PRIMARY KEY,
	"DateStamp" DATE,
	"Brisbane PM10 Daily Average" REAL,
	"Brisbane PM10 Guidline Safety Value" VARCHAR(10),
	"Gladstone PM10 Daily Average" REAL,
	"Gladstone PM10 Guidline Safety Value" VARCHAR(10),
	"Brisbane PM2.5 Daily Average" REAL,
	"Brisbane PM2.5 Guidline Safety Value" VARCHAR(10),
	"Gladstone PM2.5 Daily Average" REAL,
	"Gladstone PM2.5 Guidline Safety Value" VARCHAR(10),
	"Brisbane VRPs Daily Average" REAL,
	"Brisbane VRPs Guidline Safety Value" VARCHAR(10),
	"Gladstone VRPs Daily Average" REAL,
	"Gladstone VRPs Guidline Safety Value" VARCHAR(10),
	"Brisbane NO2 Daily Average" REAL,
	"Brisbane NO2 Guidline Safety Value" VARCHAR(10),
	"Gladstone NO2 Daily Average" REAL,
	"Gladstone NO2 Guidline Safety Value" VARCHAR(10),
	"Brisbane CO Daily Average" REAL,
	"Brisbane CO Guidline Safety Value" VARCHAR(10),
	"Gladstone O3 Daily Average" REAL,
	"Gladstone O3 Guidline Safety  Value" VARCHAR(10),
	"Gladstone SO2 Daily Average" REAL,
	"Gladstone SO2 Guidline Safety Value" VARCHAR(10)
	--These are daily metrics that need to be fixed first.
)
