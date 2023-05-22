SELECT 
(e.FirstName || ' ' || e.LastName) as EmployeeName,
COUNT(c.firstname) as TotalCustomers
FROM Employee e
FULL JOIN Customer c
    on e.employeeId = C.SupportRepId
GROUP By EmployeeName