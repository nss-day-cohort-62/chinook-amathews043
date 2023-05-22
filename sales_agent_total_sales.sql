SELECT 
    (e.FirstName || ' ' || e.LastName) as EmployeeName, 
    COUNT(i.InvoiceId) as TotalSales
FROM Employee e
JOIN Customer c
    on e.EmployeeId = c.SupportRepId
JOIN Invoice i
    on i.CustomerId = c.CustomerId
Group By EmployeeName


