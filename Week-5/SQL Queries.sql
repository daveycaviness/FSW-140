--Bob Ross Table
CREATE TABLE episodes (
	EPISODE VARCHAR,
	TITLE VARCHAR,
	APPLE_FRAME VARCHAR,
	AURORA_BOREALIS VARCHAR,
	BARN VARCHAR,
	BEACH VARCHAR,
	BOAT VARCHAR,
	BRIDGE VARCHAR,
	BUILDING VARCHAR,
	BUSHES VARCHAR,
	CABIN VARCHAR,
	CACTUS VARCHAR,
	CIRCLE_FRAME VARCHAR,
	CIRRUS VARCHAR,
	CLIFF VARCHAR,
	CLOUDS VARCHAR,
	CONIFER VARCHAR,
	CUMULUS VARCHAR,
	DECIDUOUS VARCHAR,
	DIANE_ANDRE VARCHAR,
	DOCK VARCHAR,
	DOUBLE_OVAL_FRAME VARCHAR,
	FARM VARCHAR,
	FENCE VARCHAR,
	FIRE VARCHAR,
	FLORIDA_FRAME VARCHAR,
	FLOWERS VARCHAR,
	FOG VARCHAR,
	FRAMED VARCHAR,
	GRASS VARCHAR,
	GUEST VARCHAR,
	HALF_CIRCLE_FRAME VARCHAR,
	HALF_OVAL_FRAME VARCHAR,
	HILLS VARCHAR,
	LAKE VARCHAR,
	LAKES VARCHAR,
	LIGHTHOUSE VARCHAR,
	MILL VARCHAR,
	MOON VARCHAR,
	MOUNTAIN VARCHAR,
	MOUNTAINS VARCHAR,
	NIGHT VARCHAR,
	OCEAN VARCHAR,
	OVAL_FRAME VARCHAR,
	PALM_TREES VARCHAR,
	PATH VARCHAR,
	PERSON VARCHAR,
	PORTRAIT VARCHAR,
	RECTANGLE_3D_FRAME VARCHAR,
	RECTANGULAR_FRAME VARCHAR,
	RIVER VARCHAR,
	ROCKS VARCHAR,
	SEASHELL_FRAME VARCHAR,
	SNOW VARCHAR,
	SNOWY_MOUNTAIN VARCHAR,
	SPLIT_FRAME VARCHAR,
	STEVE_ROSS VARCHAR,
	STRUCTURE VARCHAR,
	SUN VARCHAR,
	TOMB_FRAME VARCHAR,
	TREE VARCHAR,
	TREES VARCHAR,
	TRIPLE_FRAME VARCHAR,
	WATERFALL VARCHAR,
	WAVES VARCHAR,
	WINDMILL VARCHAR,
	WINDOW_FRAME VARCHAR,
	WINTER VARCHAR,
	WOOD_FRAMED VARCHAR
)

SELECT * FROM episodes

DELETE FROM episodes WHERE apple_frame LIKE 'APPLE_FRAME'

ALTER TABLE episodes ALTER COLUMN
apple_frame TYPE integer USING apple_frame:: integer;

ALTER TABLE episodes ALTER COLUMN
AURORA_BOREALIS TYPE integer USING AURORA_BOREALIS:: integer;

ALTER TABLE episodes ALTER COLUMN
BARN TYPE integer USING BARN:: integer;

ALTER TABLE episodes ALTER COLUMN
BEACH TYPE integer USING BEACH:: integer;

ALTER TABLE episodes ALTER COLUMN
BOAT TYPE integer USING BOAT:: integer;

ALTER TABLE episodes ALTER COLUMN
BRIDGE TYPE integer USING BRIDGE:: integer;

ALTER TABLE episodes ALTER COLUMN
BUILDING TYPE integer USING BUILDING:: integer;

ALTER TABLE episodes ALTER COLUMN
BUSHES TYPE integer USING BUSHES:: integer;


ALTER TABLE episodes ALTER COLUMN
CABIN TYPE integer USING CABIN:: integer;

ALTER TABLE episodes ALTER COLUMN
CACTUS TYPE integer USING CACTUS:: integer;

ALTER TABLE episodes ALTER COLUMN
CIRCLE_FRAME TYPE integer USING CIRCLE_FRAME:: integer;

ALTER TABLE episodes ALTER COLUMN
CIRRUS TYPE integer USING CIRRUS:: integer;

ALTER TABLE episodes ALTER COLUMN
CLIFF TYPE integer USING CLIFF:: integer;

ALTER TABLE episodes ALTER COLUMN
CLOUDS TYPE integer USING CLOUDS:: integer;

ALTER TABLE episodes ALTER COLUMN
CONIFER TYPE integer USING CONIFER:: integer;

ALTER TABLE episodes ALTER COLUMN
CUMULUS TYPE integer USING CUMULUS:: integer;

ALTER TABLE episodes ALTER COLUMN
DECIDUOUS TYPE integer USING DECIDUOUS:: integer;

ALTER TABLE episodes ALTER COLUMN
DIANE_ANDRE TYPE integer USING DIANE_ANDRE:: integer;

ALTER TABLE episodes ALTER COLUMN
DOCK TYPE integer USING DOCK:: integer;

ALTER TABLE episodes ALTER COLUMN
DOUBLE_OVAL_FRAME TYPE integer USING DOUBLE_OVAL_FRAME:: integer;

ALTER TABLE episodes ALTER COLUMN
FARM TYPE integer USING FARM:: integer;

ALTER TABLE episodes ALTER COLUMN
FENCE TYPE integer USING FENCE:: integer;

ALTER TABLE episodes ALTER COLUMN
FIRE TYPE integer USING FIRE:: integer;

ALTER TABLE episodes ALTER COLUMN
FLORIDA_FRAME TYPE integer USING FLORIDA_FRAME:: integer;

ALTER TABLE episodes ALTER COLUMN
FLOWERS TYPE integer USING FLOWERS:: integer;

ALTER TABLE episodes ALTER COLUMN
FOG TYPE integer USING FOG:: integer;

ALTER TABLE episodes ALTER COLUMN
FRAMED TYPE integer USING FRAMED:: integer;

ALTER TABLE episodes ALTER COLUMN
GRASS TYPE integer USING GRASS:: integer;

ALTER TABLE episodes ALTER COLUMN
GUEST TYPE integer USING GUEST:: integer;

ALTER TABLE episodes ALTER COLUMN
HALF_CIRCLE_FRAME TYPE integer USING HALF_CIRCLE_FRAME:: integer;

ALTER TABLE episodes ALTER COLUMN
HALF_OVAL_FRAME TYPE integer USING HALF_OVAL_FRAME:: integer;

ALTER TABLE episodes ALTER COLUMN
HILLS TYPE integer USING HILLS:: integer;

ALTER TABLE episodes ALTER COLUMN
LAKE TYPE integer USING LAKE:: integer;

ALTER TABLE episodes ALTER COLUMN
LAKES TYPE integer USING LAKES:: integer;

ALTER TABLE episodes ALTER COLUMN
LIGHTHOUSE TYPE integer USING LIGHTHOUSE:: integer;

ALTER TABLE episodes ALTER COLUMN
MILL TYPE integer USING MILL:: integer;

ALTER TABLE episodes ALTER COLUMN
MOON TYPE integer USING MOON:: integer;

ALTER TABLE episodes ALTER COLUMN
MOUNTAIN TYPE integer USING MOUNTAIN:: integer;

ALTER TABLE episodes ALTER COLUMN
MOUNTAINS TYPE integer USING MOUNTAINS:: integer;

ALTER TABLE episodes ALTER COLUMN
NIGHT TYPE integer USING NIGHT:: integer;

ALTER TABLE episodes ALTER COLUMN
OCEAN TYPE integer USING OCEAN:: integer;

ALTER TABLE episodes ALTER COLUMN
OVAL_FRAME TYPE integer USING OVAL_FRAME:: integer;

ALTER TABLE episodes ALTER COLUMN
PALM_TREES TYPE integer USING PALM_TREES:: integer;

ALTER TABLE episodes ALTER COLUMN
PATH TYPE integer USING PATH:: integer;

ALTER TABLE episodes ALTER COLUMN
PERSON TYPE integer USING PERSON:: integer;

ALTER TABLE episodes ALTER COLUMN
PORTRAIT TYPE integer USING PORTRAIT:: integer;

ALTER TABLE episodes ALTER COLUMN
RECTANGLE_3D_FRAME TYPE integer USING RECTANGLE_3D_FRAME:: integer;

ALTER TABLE episodes ALTER COLUMN
RECTANGULAR_FRAME TYPE integer USING RECTANGULAR_FRAME:: integer;

ALTER TABLE episodes ALTER COLUMN
RIVER TYPE integer USING RIVER:: integer;

ALTER TABLE episodes ALTER COLUMN
ROCKS TYPE integer USING ROCKS:: integer;

ALTER TABLE episodes ALTER COLUMN
SEASHELL_FRAME TYPE integer USING SEASHELL_FRAME:: integer;

ALTER TABLE episodes ALTER COLUMN
SNOW TYPE integer USING SNOW:: integer;

ALTER TABLE episodes ALTER COLUMN
SNOWY_MOUNTAIN TYPE integer USING SNOWY_MOUNTAIN:: integer;

ALTER TABLE episodes ALTER COLUMN
SPLIT_FRAME TYPE integer USING SPLIT_FRAME:: integer;

ALTER TABLE episodes ALTER COLUMN
STEVE_ROSS TYPE integer USING STEVE_ROSS:: integer;

ALTER TABLE episodes ALTER COLUMN
STRUCTURE TYPE integer USING STRUCTURE:: integer;

ALTER TABLE episodes ALTER COLUMN
SUN TYPE integer USING SUN:: integer;

ALTER TABLE episodes ALTER COLUMN
TOMB_FRAME TYPE integer USING TOMB_FRAME:: integer;

ALTER TABLE episodes ALTER COLUMN
TREE TYPE integer USING TREE:: integer;

ALTER TABLE episodes ALTER COLUMN
TREES TYPE integer USING TREES:: integer;

ALTER TABLE episodes ALTER COLUMN
TRIPLE_FRAME TYPE integer USING TRIPLE_FRAME:: integer;

ALTER TABLE episodes ALTER COLUMN
WATERFALL TYPE integer USING WATERFALL:: integer;

ALTER TABLE episodes ALTER COLUMN
WAVES TYPE integer USING WAVES:: integer;

ALTER TABLE episodes ALTER COLUMN
WINDMILL TYPE integer USING WINDMILL:: integer;

ALTER TABLE episodes ALTER COLUMN
WINDOW_FRAME TYPE integer USING WINDOW_FRAME:: integer;

ALTER TABLE episodes ALTER COLUMN
WINTER TYPE integer USING WINTER:: integer;

ALTER TABLE episodes ALTER COLUMN
WOOD_FRAMED TYPE integer USING WOOD_FRAMED:: integer;

--Second Table
CREATE TABLE paintings_date (
painting varchar,
date varchar
)

INSERT INTO paintings_date (painting, date) VALUES
('A Walk in the Woods', 'January 11, 1983'),
('MT McKinley', 'January 11, 1983'),
('Ebony Sunset', 'January 18, 1983'),
('Winter Mist', 'January 25, 1983'),
('Quiet Stream', 'February 1, 1983'),
('Winter Moon', 'February 8, 1983'),
('Autumn Mountains', 'February 15, 1983'),
('Peaceful Valley', 'February 22, 1983'),
('Seascape', 'March 1, 1983'),
('Mountain Lake', 'March 8, 1983'),
('Winter Glow', 'March 15, 1983'),
('Snowfall', 'March 22, 1983'),
('Final Reflections', 'March 29, 1983'),
('Meadow Lake', 'August 31, 1983'),
('Winter Sun', 'September 7, 1983'),
('Ebony Sea', 'September 14, 1983'),
('Shades of Gray', 'September 21, 1983'),
('Autumn Splendor', 'September 28, 1983'),
('Black River', 'October 5, 1983'),
('Brown Mountain', 'October 12, 1983'),
('Reflections', 'October 19, 1983'),
('Black & White Seascape','October 26, 1983'),
('Lazy River', 'November 2, 1983'),
('Black Waterfall', 'November 9, 1983'),
('Mountain Waterfall', 'November 16, 1983'),
('Final Grace', 'November 23, 1983'),
('Mountain Retreat', 'January 4, 1984'),
('Blue Moon', 'January 11, 1984'),
('Bubbling Stream', 'January 18, 1984'),
('Winter Night', 'January 25, 1984'),
('Distant Hills', 'February 1, 1984'),
('Covered Bridge', 'February 8, 1984'),
('Quiet Inlet', 'February 15, 1984'),
('Night Light', 'February 22, 1984'),
('The Old Mill', 'March 1, 1984'),
('Campfire', 'March 8, 1984'),
('Rustic Barn', 'March 15, 1984'),
('Hidden Lake', 'March 22, 1984'),
('Peaceful Waters', 'March 29, 1984'),
('Purple Splendor', 'September 5, 1984'),
('Tranquil Valley', 'September 12, 1984'),
('Majestic Mountains', 'September 19, 1984'),
('Winter Sawscape', 'September 26, 1984'),
('Evening Seascape', 'October 3, 1984'),
('Warm Summer Day', 'October 10, 1984'),
('Cabin in the Woods', 'October 17, 1984'),
('Wetlands', 'October 24, 1984'),
('Cool Waters', 'October 31, 1984'),
('Quiet Woods', 'November 7, 1984'),
('Northwest Majesty', 'November 14, 1984'),
('Autumn Days', 'November 21, 1984'),
('Mountain Challenge', 'November 28, 1984'),
('Mountain Waterfall', 'January 2, 1985'),
('Twilight Meadow', 'January 9, 1985'),
('Mountain Blossoms', 'January 16, 1985'),
('Winter Stillness', 'January 23, 1985'),
('Quiet Pond', 'January 30, 1985'),
('Ocean Sunrise', 'February 6, 1985'),
('Bubbling Brook', 'February 13, 1985'),
('Arizona Splendor', 'February 20, 1985'),
('Anatomy of a Wave', 'February 27, 1985'),
('The Windmill', 'March 6, 1985'),
('Autumn Glory', 'March 13, 1985'),
('Indian Girl', 'March 20, 1985'),
('Meadow Stream', 'March 27, 1985')

SELECT * FROM paintings_date

--DROP FROM TABLE

DROP TABLE IF EXISTS paintings_date

--SET OPERATIONS

SELECT episode from episodes
UNION ALL
SELECT date FROM paintings_date


--Subqueries

UPDATE episodes 
SET mountains = (SELECT SUM(mountains) FROM episodes)
WHERE title = 'AUTUMN MOUNTAINS'

SELECT mountains FROM episodes WHERE title = 'AUTUMN MOUNTAINS'

--Order OF Operations

SELECT title, episode, trees
FROM episodes
WHERE trees > 0
GROUP BY(title, episode, trees)
HAVING title LIKE '%WINTER%'
ORDER BY(title) DESC

--Association And Join

SELECT episodes.title, paintings_date.date FROM episodes
LEFT JOIN paintings_date ON LOWER(episodes.title) = LOWER(paintings_date.painting)