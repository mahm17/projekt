LOAD DATA LOCAL INFILE 'C:/Users/Markus/Documents/indproj/files/kommuner.csv'
INTO TABLE kommuner
CHARSET utf8
FIELDS
	TERMINATED BY ','
	ENCLOSED BY '"'
LINES
	TERMINATED BY '\n'
IGNORE 1 LINES
;

SELECT * FROM kommuner;

