SELECT (FirstName || ' ' || LastName) as name, CustomerID, Country 
FROM Customer
WHERE Country != 'USA'