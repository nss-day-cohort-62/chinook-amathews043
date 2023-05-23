SELECT Name, 
max(TotalSales) as AllSales
FROM
(SELECT count(m.name) as TotalSales, m.name as Name
FROM InvoiceLine il
JOIN Track t
    on il.TrackId = t.TrackId
JOIN MediaType m
    on t.MediaTypeId = m.MediaTypeId
GROUP by m.name
ORDER BY TotalSales)
