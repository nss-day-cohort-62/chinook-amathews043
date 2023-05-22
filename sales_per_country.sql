SELECT BillingCountry, Count(BillingCountry) as TotalSales 
FROM Invoice
GROUP By BillingCountry