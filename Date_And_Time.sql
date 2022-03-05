CREATE DATABASE songs;
USE songs;
CREATE TABLE songs_details(
id INT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
singer VARCHAR(30) NOT NULL,
duration TIME,
genre VARCHAR(30),
album VARCHAR(30)UNIQUE,
likes INT,
platform VARCHAR(30) DEFAULT "YouTube",
price FLOAT CHECK(price >0 AND price<100),
lang VARCHAR(30)
);

DESC songs_details;


INSERT INTO songs_details VALUE('1','Blinding Lights','The Weekend','00:03:10','Rock','After House','15000','Apple Music','15','English');
INSERT INTO songs_details VALUE('2','Closer','Chainsmokers','00:05:10','melody','chain smoker','25000','Apple Music','99','English');

INSERT INTO songs_details(id, name,singer,duration,genre,album,likes,price,lang)
VALUE(3,'BELIVER','Imagine_Dragons','00:05:0','Rock','Imagine_Dragons','50000','89','English');

INSERT INTO songs_details VALUE(4,'Girls Like You','Maroon5','00:06:00','Pop','Maroon5','60000','saavan','89','English');
INSERT INTO songs_details VALUE(5,'Let Me Love You','justin','00:05:0','Rock','biber','50000','jio','89','English');
INSERT INTO songs_details VALUE(6,'ZARA','OMKAAR','00:05:0','SENTIMENT','OMKAR','55000','jio','80','HINDI');
INSERT INTO songs_details VALUE(7,'LOVE ME LIKE YOU DO','ELLIE COLUDING','00:05:0','SAD','WLLIE','50700','jio','8','English');
INSERT INTO songs_details VALUE(8,'NINNAGUNGALLI','SHRY','00:05:0','SAD','SHREY','100700','jio','8','KANNADA');
INSERT INTO songs_details VALUE(9,'ROCKYBAI','SHRY','00:05:0','ROCK','ADVIK','100700','jio','80','KANNADA');
INSERT INTO songs_details VALUE(10,'ROCKYBAI','SHRY','','ROCK','ADVIKK','100700','jio','80','KANNADA');
INSERT INTO songs_details VALUE(11,'ROCKYBAI','SHRY',NULL,'ROCK','ADVIKKK','100700','jio','80','KANNADA');
INSERT INTO songs_details(id, name,singer,genre,album,likes,price,lang)
VALUE(12,'TUMHIHO','ARJITH','Rock','ASHQUI','50000','89','HINDI');



SELECT * FROM songs_details WHERE platform = 'Apple Music';
SELECT * FROM songs_details WHERE platform = 'JIO' AND PRICE<55000 ;
SELECT * FROM songs_details WHERE platform = 'JIO' OR LANG = 'HINDI' ;
SELECT * FROM songs_details WHERE LANG != 'HINDI' ;
SELECT NAME FROM songs_details;
SELECT * FROM songs_details WHERE SINGER = 'SHRY' OR SINGER = 'OMKAAR' OR SINGER = 'MAROON5' ;
SELECT * FROM songs_details WHERE SINGER IN ('SHRY','OMKAAR','MAROON5');


 SELECT * FROM songs_details WHERE LIKES>50000 AND LIKES < 1000000;
 SELECT * FROM songs_details WHERE LIKES BETWEEN 50000 AND  1000000;

SELECT LANG FROM songs_details;
SELECT DISTINCT LANG FROM songs_details;
SELECT DISTINCT LANG, NAME FROM songs_details;
SELECT DISTINCT LANG, NAME, SINGER FROM songs_details;

SELECT *FROM songs_details ORDER BY price;
SELECT *FROM songs_details ORDER BY NAME;

SELECT *FROM songs_details ORDER BY NAME DESC;

SELECT * FROM songs_details WHERE DURATION IS NULL;
SELECT * FROM songs_details WHERE DURATION IS NOT NULL;

DELETE FROM songs_details WHERE ID = 2;
DELETE FROM songs_details WHERE NAME = 'JUSTIN';

SELECT * FROM songs_details LIMIT 3;#to display the limited size(3).
SELECT *FROM songs_details ORDER BY ID DESC LIMIT 3; #to display the limited size.

#LIKE      wild card operators - 1. %-zero or more characters 2. only one character
SELECT * FROM songs_details WHERE  NAME LIKE 'ROCKY%';
SELECT * FROM songs_details WHERE  NAME LIKE '%BAI';
SELECT * FROM songs_details WHERE  NAME LIKE '%ME%';
SELECT * FROM songs_details WHERE  DURATION LIKE '%:05:10';

SELECT * FROM songs_details WHERE  NAME LIKE 'B_I%';
SELECT * FROM songs_details WHERE  NAME LIKE '__I%';

SELECT  NAME AS Song_Names FROM songs_details;

SELECT  songs_details.name,songs_details.id,songs_details.genre  FROM songs_details;

SELECT  SD.name,SD.id,SD.genre  FROM songs_details SD; #SD is a alias name given to song_details.





#Aggregate Functions
#1. MAX(column)- to find the maximum value in the column.
#2. MIN(column)- to find the minimum value in the column.
#3. SUM(column)- to find the sum of all value in the column.
#4. AVG(column)- to find the average of values in the column.
#5. COUNT(column)- to find the count of values in the column.

SELECT  MAX(likes) AS Highest_Likes_For_Song FROM songs_details;
SELECT  MIN(likes) AS Lowest_Likes_For_Song FROM songs_details;
SELECT  MAX(likes) AS Highest , MIN(likes) AS Lowest FROM songs_details;
SELECT  AVG(likes) AS Average_Likes_For_Song FROM songs_details;
SELECT  COUNT(likes) AS noOfCounts_Likes_For_Song FROM songs_details;
SELECT  SUM(likes) AS SUMOfLikes_Likes_For_Song FROM songs_details;

SELECT  COUNT(album) AS noOf_songs_By_Album FROM songs_details;
 -- COUNT(*) It will igonre the null values
SELECT  COUNT(*) AS noOf_songs_By_Album FROM songs_details;

SELECT COUNT(*) AS noOf_songs_In_English FROM songs_details WHERE lang='English';

-- no of languages in songs details table 
SELECT DISTINCT lang FROM songs_details;-- gives uniques languages present 

SELECT COUNT(DISTINCT lang) lang FROM songs_details;-- gives unique no of languages 
 
-- COUNT(DISTINCT column) : It wil find the uniques values from the column

-- DATE & TIME FUCTIONS
-- CURDATE() : it will return current date
-- get current date
SELECT curdate() AS Present_Date;

-- CURTIME() : it will return the current time
SELECT curtime() AS Present_Time;

-- NOW() : it wil return resent date and time 
SELECT NOW() AS Present_Date_Time;

ALTER TABLE songs_details ADD COLUMN released_DateAndTime DATETIME;

UPDATE songs_details SET released_DateAndTime='2019-10-10 20:00:00' WHERE id=1;
UPDATE songs_details SET released_DateAndTime=now() WHERE id>1;

-- release date from song details
-- DATE(dateTime) - it will extract only the date from the given dateTime
SELECT name,DATE(released_DateAndTime)AS Released_Date FROM songs_details; 

-- TIME(dateTime) - it will extract only the time from the given dateTime
SELECT name,TIME(released_DateAndTime)AS Released_Time FROM songs_details; 

-- YEAR(dateTime) - it will extract the only year from the given table
SELECT name,YEAR(released_DateAndTime)AS Released_Time FROM songs_details; 

SELECT name,MONTH(released_DateAndTime)AS Released_Time FROM songs_details; 

SELECT name,MONTHNAME(released_DateAndTime)AS Released_Time FROM songs_details; 

SELECT name,DAY(released_DateAndTime)AS Released_Time FROM songs_details; 

-- DAYNAME(dateTime) - it will extract only the dayName from the given dateTime
SELECT name,DAYNAME(released_DateAndTime)AS Released_Time FROM songs_details; 

-- MINUTE(dateTime) - it will extract only the minute from the given dateTime
SELECT name,MINUTE(released_DateAndTime)AS Released_Time FROM songs_details; 
-- get the duration of song in minute
SELECT name,MINUTE(duration) AS Song_Duration_In_Minutes FROM songs_details;

SELECT * FROM songs_details;