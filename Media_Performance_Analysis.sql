SHOW TABLES;

SELECT * 
FROM Media_Data;

SELECT
    SUM(Views) AS Total_Views,
    SUM(Clicks) AS Total_Clicks,
    SUM(Likes + Shares) AS Total_Engagements
FROM Media_Data;

SELECT
    ROUND(AVG(Clicks * 100.0 / Views), 2) AS Average_CTR_Percent
FROM Media_Data;

SELECT
    Category,
    SUM(Views) AS Total_Views,
    SUM(Clicks) AS Total_Clicks
FROM Media_Data
GROUP BY Category
ORDER BY Total_Views DESC;

SELECT
    Article_ID,
    Article_Title,
    Category,
    Views
FROM Media_Data
ORDER BY Views DESC;

SELECT
    Category,
    SUM(Likes) AS Total_Likes,
    SUM(Shares) AS Total_Shares,
    SUM(Likes + Shares) AS Total_Engagements
FROM Media_Data
GROUP BY Category
ORDER BY Total_Engagements DESC;

SELECT
    Category,
    ROUND(AVG(Clicks * 100.0 / Views), 2) AS Average_CTR_Percent
FROM Media_Data
GROUP BY Category
ORDER BY Average_CTR_Percent DESC;
