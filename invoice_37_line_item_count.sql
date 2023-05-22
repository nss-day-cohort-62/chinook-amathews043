SELECT count(il.InvoiceId)
FROM InvoiceLine il 
JOIN Invoice i 
    on i.InvoiceId = il.InvoiceId
WHERE i.InvoiceId = 37
