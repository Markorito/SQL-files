/*CREATE DATABASE assignment;*/
USE ASSIGNMENT;
/*CREATE TABLE amazon (
    Date DATE,
    Open FLOAT,
    High FLOAT,
    Low FLOAT,
    Close FLOAT,
    Volume INT,
    ExDividend INT,
    SplitRatio INT,
    AdjOpen FLOAT,
    AdjHigh FLOAT,
    AdjLow FLOAT,
    AdjClose FLOAT,
    AdjVolume INT
);
CREATE TABLE facebook (
    Date DATE,
    Open FLOAT,
    High FLOAT,
    Low FLOAT,
    Close FLOAT,
    Volume INT,
    ExDividend INT,
    SplitRatio INT,
    AdjOpen FLOAT,
    AdjHigh FLOAT,
    AdjLow FLOAT,
    AdjClose FLOAT,
    AdjVolume INT
); */
LOAD DATA INFILE "C:\Users\user\Downloads\amzn_2012-7-31_2017-6-30.csv"
INTO TABLE amazon 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE "C:\Users\user\Downloads\fb_2012-7-31_2017-6-30.csv"
INTO TABLE facebook 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT 
    Date, MAX(High)
FROM
    amazon;

SELECT 
    Date, MIN(Low)
FROM
    amazon;

SELECT 
    Date, MAX(High)
FROM
    facebook;

SELECT 
    Date, MIN(Low)
FROM
    facebook;

SELECT 
    SUM(Volume)
FROM
    amazon
WHERE
    YEAR(Date) = 2015;

SELECT 
    SUM(Volume)
FROM
    facebook
WHERE
    YEAR(Date) = 2015;

SELECT 
    ROUND(MAX(DAY(Date)), 2)
FROM
    amazon;

SELECT 
    ROUND(MAX(DAY(Date)), 2)
FROM
    facebook;
