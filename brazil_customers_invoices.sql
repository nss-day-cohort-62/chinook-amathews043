SELECT (c.FirstName || ' ' || c.LastName) as name, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Customer c
Join Invoice i
    on c.CustomerId = i.CustomerId
WHERE Country = 'Brazil'
