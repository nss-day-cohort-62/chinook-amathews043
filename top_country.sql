SELECT max(TotalSales), BillingCountry
FROM
(SELECT BillingCountry, Sum(total) as TotalSales 
FROM Invoice
GROUP By BillingCountry)