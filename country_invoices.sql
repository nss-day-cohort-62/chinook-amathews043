SELECT count(Distinct InvoiceId) as invoices, BillingCountry
FROM Invoice 
Group by BillingCountry
