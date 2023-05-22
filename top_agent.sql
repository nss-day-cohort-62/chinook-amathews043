SELECT max(TotalSalesPrice) as TotalSalesPrice, 
EmployeeName
FROM
(SELECT 
    (e.FirstName || ' ' || e.LastName) as EmployeeName, 
    COUNT(i.Total) as TotalSalesPrice
FROM Employee e
JOIN Customer c
    on e.EmployeeId = c.SupportRepId
JOIN Invoice i
    on i.CustomerId = c.CustomerId
Group By EmployeeName)