-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT employees.FirstName, employees.LastName, invoices.* 
FROM  employees JOIN customers
ON employees.EmployeeId = customers.SupportRepId JOIN invoices
ON customers.CustomerId = invoices.CustomerId;