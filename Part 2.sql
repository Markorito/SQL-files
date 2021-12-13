USE assignment;

SELECT
  count(*) AS 'Count Amazon'
FROM amazon;

SELECT
  count(*) AS 'Count Facebook'
FROM facebook;

    
SELECT 
	YEAR(Date), AVG(Volume) AS 'Average Volume per Year Amazon'
FROM amazon
	GROUP BY(YEAR(Date));

SELECT 
	YEAR(Date), AVG(Volume) AS 'Average Volume per Year Facebook'
FROM facebook
	GROUP BY(YEAR(Date));
    
SELECT 
	YEAR(Date), MONTH(Date), MAX(Open) AS 'Max Open per Month Amazon'
FROM amazon
	GROUP BY MONTH(Date), YEAR(Date);
    
SELECT 
	YEAR(Date), MONTH(Date), MAX(Open) AS 'Max Open per Month Facebook'
FROM facebook
	GROUP BY MONTH(Date), YEAR(Date);