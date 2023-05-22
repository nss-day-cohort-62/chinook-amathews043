SELECT max(TotalSales) as TotalSales,
EmployeeName
FROM 
(SELECT 
    (e.FirstName || ' ' || e.LastName) as EmployeeName, 
    COUNT(i.InvoiceId) as TotalSales
FROM Employee e
JOIN Customer c
    on e.EmployeeId = c.SupportRepId
JOIN Invoice i
    on i.CustomerId = c.CustomerId
WHERE (i.InvoiceDate LIKE '2009%')
Group By EmployeeName)
