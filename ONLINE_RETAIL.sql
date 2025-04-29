create database onlinesales;
select * from online_retail; 
select sum(Amount) from online_retail;

SELECT 
    COUNT(DISTINCT CustomerID) AS UniqueCustomers
FROM
    online_retail;
    
SELECT 
    *
FROM
    online_retail
ORDER BY Amount;


SELECT 
    *
FROM
    online_retail
    having Amount >50 
ORDER BY Amount limit 10 ;


SELECT 
    *, 
    EXTRACT(MONTH FROM STR_TO_DATE(InvoiceDate, '%m/%d/%Y %H:%i')) AS Month
FROM 
    online_retail;
    
    
SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(InvoiceDate, '%m/%d/%Y %H:%i')) AS Year,
    EXTRACT(MONTH FROM STR_TO_DATE(InvoiceDate, '%m/%d/%Y %H:%i')) AS Month,
    COUNT(*) AS OrderCount
FROM 
    online_retail
GROUP BY 
    Year, Month
ORDER BY 
    Year, Month;



