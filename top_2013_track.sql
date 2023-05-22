SELECT COUNT(t.TrackId) as TotalPurchases, t.name
FROM invoice i
JOIN InvoiceLine il
    On i.InvoiceId = il.InvoiceId
JOIN Track t 
    ON t.TrackId = il.TrackId
WHERE (i.InvoiceDate LIKE '2013%')
Group By name
ORDER BY TotalPurchases DESC
