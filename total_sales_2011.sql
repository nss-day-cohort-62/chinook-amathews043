SELECT SUM(total) AS InvoiceSales2009
FROM Invoice i
WHERE (i.InvoiceDate LIKE '2011%')
