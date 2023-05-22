SELECT i.InvoiceId, COUNT(il.InvoiceId) as TotalInOrder
FROM Invoice i 
JOIN InvoiceLine il
    ON i.InvoiceId = il.InvoiceId
Group By i.InvoiceId