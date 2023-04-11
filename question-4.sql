-- Which sales agent made the most in sales in 2010?
SELECT e.FirstName, e.LastName, SUM(ii.Quantity) as ItemsSold, i.InvoiceDate
FROM employees e
JOIN customers c ON e.EmployeeId = c.SupportRepId
JOIN invoices i ON c.CustomerId = i.CustomerId
JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId
WHERE i.InvoiceDate >= '2010-01-01' AND i.InvoiceDate < '2011-01-01'
GROUP BY e.EmployeeId, e.FirstName, e.LastName;