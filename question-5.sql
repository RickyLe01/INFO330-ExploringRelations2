-- What was the most purchased track of 2013?
SELECT t.Name AS MostPurchased, SUM(it.Quantity) AS TotalPurchases
FROM tracks t
JOIN invoice_items it ON it.TrackId = t.TrackId
JOIN invoices i ON it.InvoiceId = i.InvoiceId
WHERE strftime('%Y', i.InvoiceDate) = '2013'
GROUP BY t.Name
ORDER BY Total_Purchases DESC;