SELECT count(il.InvoiceId), il.InvoiceId
FROM InvoiceLine il 
Group By il.InvoiceId
