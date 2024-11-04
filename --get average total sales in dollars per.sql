--get average total sales in dollars per country and also per city.
-- Average total sales per country
-- SELECT 
--     billingcountry AS location,
--     NULL AS billingcity,   
--     AVG(total) AS average_total
-- FROM 
--     invoices
-- GROUP BY 
--     billingcountry, billingcity

-- ORDER BY 
--     location, billingcity;



--get total sales in dollars per year and per month.
SELECT 
    EXTRACT(YEAR FROM invoicedate) AS year,
    EXTRACT(MONTH FROM invoicedate) AS month,
    SUM(total) AS total
FROM 
    invoices
GROUP BY 
    EXTRACT(YEAR FROM invoicedate),
    EXTRACT(MONTH FROM invoicedate)
ORDER BY 
    year, month;

