SELECT count(i.InvoiceId), InvoiceDate
FROM Invoice i 
WHERE (i.InvoiceDate LIKE '2009%')


