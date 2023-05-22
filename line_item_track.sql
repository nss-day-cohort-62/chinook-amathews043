SELECT il.InvoiceLineId, il.InvoiceId, t.name
FROM InvoiceLine il
JOIN Track t
    on il.TrackId = t.TrackId